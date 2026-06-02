#!/usr/bin/env bash
# Chan-vy - instalador/baixador multi-distro de ferramentas de segurança
# Catálogo gerado automaticamente a partir dos metapacotes oficiais do Kali Linux.

export LANG=${LANG:-pt_BR.UTF-8}

VERSION="2.0.0-dev"
KALI_META_CONTROL_URL="https://gitlab.com/kalilinux/packages/kali-meta/-/raw/kali/master/debian/control"
CACHE_DIR="${CHANVY_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/chan-vy}"
CATALOG_FILE="$CACHE_DIR/tools.tsv"
TOOLS_DIR="${CHANVY_TOOLS_DIR:-$PWD/tools}"
YES=0
DOWNLOAD_ONLY=0
ACTION="menu"
ACTION_ARG=""

if [ -t 1 ]; then
  red='\033[1;31m'
  green='\033[1;32m'
  yellow='\033[1;33m'
  blue='\033[1;34m'
  white='\033[1;37m'
  reset='\033[0m'
else
  red=''
  green=''
  yellow=''
  blue=''
  white=''
  reset=''
fi

print_info() { printf "%b\n" "${blue}[INFO]${reset} $*"; }
print_ok() { printf "%b\n" "${green}[OK]${reset} $*"; }
print_warn() { printf "%b\n" "${yellow}[AVISO]${reset} $*"; }
print_error() { printf "%b\n" "${red}[ERRO]${reset} $*"; }

pause() {
  printf "\nPressione ENTER para continuar..."
  read -r _
}

confirm() {
  local question="$1"

  if [ "$YES" -eq 1 ]; then
    return 0
  fi

  printf "%s [s/N]: " "$question"
  read -r answer
  case "$answer" in
    s|S|sim|SIM|y|Y|yes|YES) return 0 ;;
    *) return 1 ;;
  esac
}

has_cmd() {
  command -v "$1" >/dev/null 2>&1
}

run_as_root() {
  if [ "${EUID:-$(id -u)}" -eq 0 ]; then
    "$@"
  elif has_cmd sudo; then
    sudo "$@"
  else
    print_error "Este comando precisa de root e o sudo não foi encontrado."
    return 1
  fi
}

usage() {
  cat <<EOF
Chan-vy v$VERSION

Uso:
  ./chan-vy.sh                    Abre o menu interativo
  ./chan-vy.sh --update           Atualiza o catálogo usando o Kali Linux
  ./chan-vy.sh --search TERMO     Busca ferramentas no catálogo
  ./chan-vy.sh --install NOME     Instala uma ferramenta pelo nome
  ./chan-vy.sh --download NOME    Baixa o código-fonte/fallback da ferramenta
  ./chan-vy.sh --help             Mostra esta ajuda

Opções:
  -y, --yes                       Confirma ações automaticamente

Variáveis opcionais:
  CHANVY_CACHE_DIR                Diretório do cache do catálogo
  CHANVY_TOOLS_DIR                Diretório usado para downloads fallback

Exemplos:
  ./chan-vy.sh --update
  ./chan-vy.sh --search sql
  ./chan-vy.sh --install nmap
  CHANVY_TOOLS_DIR=/opt/chan-vy/tools ./chan-vy.sh --download sqlmap
EOF
}

banner() {
  clear 2>/dev/null || true
  printf "%b" "$red"
  cat <<'EOF'
 @@@@@@@  @@@  @@@   @@@@@@   @@@  @@@             @@@  @@@  @@@ @@@
@@@@@@@@  @@@  @@@  @@@@@@@@  @@@@ @@@             @@@  @@@  @@@ @@@
!@@       @@!  @@@  @@!  @@@  @@!@!@@@             @@!  @@@  @@! !@@
!@!       !@!  @!@  !@!  @!@  !@!!@!@!             !@!  @!@  !@! @!!
!@!       @!@!@!@!  @!@!@!@!  @!@ !!@!  @!@!@!@!@  @!@  !@!   !@!@!
!!!       !!!@!!!!  !!!@!!!!  !@!  !!!  !!!@!@!!!  !@!  !!!    @!!!
:!!       !!:  !!!  !!:  !!!  !!:  !!!             :!:  !!:    !!:
:!:       :!:  !:!  :!:  !:!  :!:  !:!              ::!!:!     :!:
 ::: :::  ::   :::  ::   :::   ::   ::               ::::       ::
 :: :: :   :   : :   :   : :  ::    :                 :         :
EOF
  printf "%b\n" "$reset"
  printf "%b\n" "${red}Chan-vy${reset} v$VERSION ${yellow}||${reset} Catálogo automático Kali Linux ${yellow}||${reset} Multi-distro"
}

detect_distro() {
  DISTRO_NAME="Linux"

  if [ -r /etc/os-release ]; then
    # /etc/os-release é projetado para ser carregado por shell.
    # shellcheck disable=SC1091
    . /etc/os-release
    DISTRO_NAME="${PRETTY_NAME:-${NAME:-Linux}}"
  fi
}

detect_package_manager() {
  PKG_MANAGER=""

  if has_cmd apt-get; then
    PKG_MANAGER="apt"
  elif has_cmd dnf; then
    PKG_MANAGER="dnf"
  elif has_cmd yum; then
    PKG_MANAGER="yum"
  elif has_cmd pacman; then
    PKG_MANAGER="pacman"
  elif has_cmd zypper; then
    PKG_MANAGER="zypper"
  elif has_cmd apk; then
    PKG_MANAGER="apk"
  fi
}

show_system_info() {
  detect_distro
  detect_package_manager

  print_info "Sistema detectado: $DISTRO_NAME"
  if [ -n "$PKG_MANAGER" ]; then
    print_info "Gerenciador de pacotes: $PKG_MANAGER"
  else
    print_warn "Nenhum gerenciador suportado foi detectado. O Chan-vy usará apenas fallback por download."
  fi
  print_info "Catálogo: $CATALOG_FILE"
  print_info "Downloads fallback: $TOOLS_DIR"
}

write_category_map() {
  cat > "$1" <<'EOF'
kali-tools-information-gathering	info	Information Gathering
kali-tools-vulnerability	vulnerability	Vulnerability Analysis
kali-tools-web	web	Web Applications
kali-tools-database	database	Database Assessment
kali-tools-passwords	passwords	Password Attacks
kali-tools-wireless	wireless	Wireless Attacks
kali-tools-reverse-engineering	reverse	Reverse Engineering
kali-tools-exploitation	exploitation	Exploitation Tools
kali-tools-social-engineering	social	Social Engineering
kali-tools-sniffing-spoofing	sniffing	Sniffing & Spoofing
kali-tools-post-exploitation	post	Post Exploitation
kali-tools-forensics	forensics	Forensics Tools
kali-tools-reporting	reporting	Reporting Tools
kali-tools-identify	identify	Defensive - Identify
kali-tools-protect	protect	Defensive - Protect
kali-tools-detect	detect	Defensive - Detect
kali-tools-respond	respond	Defensive - Respond
kali-tools-recover	recover	Defensive - Recover
kali-tools-802-11	wireless-80211	802.11 Wireless
kali-tools-bluetooth	bluetooth	Bluetooth
kali-tools-crypto-stego	crypto-stego	Cryptography & Steganography
kali-tools-fuzzing	fuzzing	Fuzzing
kali-tools-gpu	gpu	GPU Tools
kali-tools-hardware	hardware	Hardware Hacking
kali-tools-rfid	rfid	RFID
kali-tools-sdr	sdr	Software Defined Radio
kali-tools-voip	voip	VoIP
kali-tools-windows-resources	windows	Windows Resources
EOF
}

write_seed_catalog() {
  mkdir -p "$CACHE_DIR"
  cat > "$CATALOG_FILE" <<'EOF'
# Chan-vy fallback catalog - usado apenas quando não foi possível baixar o catálogo do Kali.
# categoria_slug	categoria_nome	nome	pacote	fallback_tipo	fallback_url
info	Information Gathering	nmap	nmap	git	https://gitlab.com/kalilinux/packages/nmap.git
info	Information Gathering	dnsrecon	dnsrecon	git	https://gitlab.com/kalilinux/packages/dnsrecon.git
info	Information Gathering	theharvester	theharvester	git	https://gitlab.com/kalilinux/packages/theharvester.git
web	Web Applications	sqlmap	sqlmap	git	https://gitlab.com/kalilinux/packages/sqlmap.git
web	Web Applications	nikto	nikto	git	https://gitlab.com/kalilinux/packages/nikto.git
web	Web Applications	wfuzz	wfuzz	git	https://gitlab.com/kalilinux/packages/wfuzz.git
wireless	Wireless Attacks	aircrack-ng	aircrack-ng	git	https://gitlab.com/kalilinux/packages/aircrack-ng.git
passwords	Password Attacks	hydra	hydra	git	https://gitlab.com/kalilinux/packages/hydra.git
passwords	Password Attacks	john	john	git	https://gitlab.com/kalilinux/packages/john.git
forensics	Forensics Tools	binwalk	binwalk	git	https://gitlab.com/kalilinux/packages/binwalk.git
exploitation	Exploitation Tools	metasploit-framework	metasploit-framework	git	https://gitlab.com/kalilinux/packages/metasploit-framework.git
sniffing	Sniffing & Spoofing	wireshark	wireshark	git	https://gitlab.com/kalilinux/packages/wireshark.git
EOF
}

update_catalog() {
  local tmp_dir tmp_control tmp_map tmp_catalog count

  if ! has_cmd curl; then
    print_error "curl não encontrado. Instale o curl para atualizar o catálogo automaticamente."
    return 1
  fi

  mkdir -p "$CACHE_DIR"
  tmp_dir=$(mktemp -d 2>/dev/null || mktemp -d -t chanvy)
  tmp_control="$tmp_dir/kali-control"
  tmp_map="$tmp_dir/categories.tsv"
  tmp_catalog="$tmp_dir/tools.tsv"

  print_info "Baixando catálogo oficial do Kali: $KALI_META_CONTROL_URL"
  if ! curl -fsSL "$KALI_META_CONTROL_URL" -o "$tmp_control"; then
    print_error "Não foi possível baixar o catálogo do Kali."
    rm -rf "$tmp_dir"
    return 1
  fi

  write_category_map "$tmp_map"

  {
    printf "# Chan-vy tools catalog\n"
    printf "# Fonte: %s\n" "$KALI_META_CONTROL_URL"
    printf "# Gerado em: %s\n" "$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
    printf "# categoria_slug\tcategoria_nome\tnome\tpacote\tfallback_tipo\tfallback_url\n"
    awk -F '\t' '
      NR == FNR {
        slug[$1] = $2
        label[$1] = $3
        next
      }
      function trim(value) {
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", value)
        return value
      }
      function clean_dep(value, first_alt) {
        sub(/#.*/, "", value)
        sub(/\|.*/, "", value)
        gsub(/\[[^]]*\]/, "", value)
        gsub(/\([^)]*\)/, "", value)
        gsub(/\$\{[^}]*\}/, "", value)
        value = trim(value)
        split(value, first_alt, /[[:space:]]+/)
        return first_alt[1]
      }
      function emit_deps(line, n, items, j, tool) {
        n = split(line, items, ",")
        for (j = 1; j <= n; j++) {
          tool = clean_dep(items[j])

          if (tool == "" || tool == "#N/A") {
            continue
          }
          if (tool ~ /^kali-/) {
            continue
          }
          if (tool !~ /^[A-Za-z0-9][A-Za-z0-9+_.:-]*$/) {
            continue
          }

          print slug[current_pkg] "\t" label[current_pkg] "\t" tool "\t" tool "\tgit\thttps://gitlab.com/kalilinux/packages/" tool ".git"
        }
      }
      /^Package:[[:space:]]*/ {
        current_pkg = $0
        sub(/^Package:[[:space:]]*/, "", current_pkg)
        current_pkg = trim(current_pkg)
        in_target = (current_pkg in slug)
        reading_deps = 0
        next
      }
      in_target && /^(Depends|Recommends):[[:space:]]*/ {
        reading_deps = 1
        sub(/^[^:]+:[[:space:]]*/, "", $0)
        emit_deps($0)
        next
      }
      in_target && reading_deps && /^[[:space:]]/ {
        emit_deps($0)
        next
      }
      /^[^[:space:]][A-Za-z0-9-]+:[[:space:]]*/ {
        reading_deps = 0
      }
    ' "$tmp_map" "$tmp_control" | sort -u
  } > "$tmp_catalog"

  count=$(grep -vc '^#' "$tmp_catalog" 2>/dev/null || printf '0')
  if [ "$count" -le 0 ]; then
    print_error "O parser não encontrou ferramentas no catálogo do Kali."
    rm -rf "$tmp_dir"
    return 1
  fi

  mv "$tmp_catalog" "$CATALOG_FILE"
  rm -rf "$tmp_dir"
  print_ok "Catálogo atualizado com $count entradas."
}

ensure_catalog() {
  if [ -s "$CATALOG_FILE" ]; then
    return 0
  fi

  print_warn "Catálogo local não encontrado. Tentando gerar automaticamente."
  if update_catalog; then
    return 0
  fi

  print_warn "Usando catálogo mínimo de emergência. Rode './chan-vy.sh --update' depois."
  write_seed_catalog
}

catalog_count() {
  ensure_catalog || return 1
  grep -vc '^#' "$CATALOG_FILE" 2>/dev/null || printf '0'
}

resolve_category_alias() {
  case "$1" in
    info|/info) printf 'info' ;;
    vul|/vul|vulnerability|/vulnerability) printf 'vulnerability' ;;
    wire|/wire|wireless|/wireless) printf 'wireless' ;;
    web|/web) printf 'web' ;;
    expl|/expl|exploitation|/exploitation) printf 'exploitation' ;;
    stre|/stre|stress|/stress|fuzz|/fuzz) printf 'fuzzing' ;;
    fore|/fore|forensics|/forensics) printf 'forensics' ;;
    snif|/snif|sniffing|/sniffing) printf 'sniffing' ;;
    pass|/pass|passwords|/passwords) printf 'passwords' ;;
    main|/main|post|/post|maintaining|/maintaining) printf 'post' ;;
    reve|/reve|reverse|/reverse) printf 'reverse' ;;
    hard|/hard|hardware|/hardware) printf 'hardware' ;;
    repo|/repo|reporting|/reporting) printf 'reporting' ;;
    *) printf '%s' "$1" ;;
  esac
}

show_categories() {
  ensure_catalog || return 1

  awk -F '\t' '
    /^#/ { next }
    !seen[$1]++ {
      order[++count] = $1
      label[$1] = $2
    }
    { total[$1]++ }
    END {
      for (i = 1; i <= count; i++) {
        slug = order[i]
        printf "%d\t%s\t%s\t%d\n", i, slug, label[slug], total[slug]
      }
    }
  ' "$CATALOG_FILE"
}

show_tools_by_category() {
  local category="$1"

  awk -F '\t' -v category="$category" '
    /^#/ { next }
    $1 == category {
      printf "%d\t%s\t%s\t%s\t%s\t%s\n", ++count, $3, $4, $5, $6, $2
    }
  ' "$CATALOG_FILE"
}

find_tool_rows() {
  local term="$1"

  awk -F '\t' -v term="$term" '
    BEGIN { term_lc = tolower(term) }
    /^#/ { next }
    tolower($3) == term_lc || tolower($4) == term_lc {
      print
    }
  ' "$CATALOG_FILE"
}

search_catalog() {
  local term="$1"

  ensure_catalog || return 1

  if [ -z "$term" ]; then
    print_error "Informe um termo de busca. Exemplo: ./chan-vy.sh --search sql"
    return 1
  fi

  awk -F '\t' -v term="$term" '
    BEGIN {
      term_lc = tolower(term)
      printf "%-22s %-32s %s\n", "Categoria", "Ferramenta", "Pacote"
      printf "%-22s %-32s %s\n", "---------", "----------", "------"
    }
    /^#/ { next }
    index(tolower($3), term_lc) || index(tolower($4), term_lc) || index(tolower($2), term_lc) {
      printf "%-22s %-32s %s\n", $1, $3, $4
      found = 1
    }
    END {
      if (!found) {
        printf "Nenhuma ferramenta encontrada para: %s\n", term
      }
    }
  ' "$CATALOG_FILE"
}

package_available() {
  local package="$1"

  case "$PKG_MANAGER" in
    apt)
      apt-cache show "$package" >/dev/null 2>&1 || apt-cache policy "$package" 2>/dev/null | grep -q 'Candidate: [^ (none)]'
      ;;
    dnf)
      dnf -q list --available "$package" >/dev/null 2>&1 || dnf -q list --installed "$package" >/dev/null 2>&1
      ;;
    yum)
      yum -q list available "$package" >/dev/null 2>&1 || yum -q list installed "$package" >/dev/null 2>&1
      ;;
    pacman)
      pacman -Si "$package" >/dev/null 2>&1 || pacman -Qi "$package" >/dev/null 2>&1
      ;;
    zypper)
      zypper --non-interactive search --match-exact "$package" >/dev/null 2>&1
      ;;
    apk)
      apk search -x "$package" 2>/dev/null | grep -q "^$package"
      ;;
    *)
      return 1
      ;;
  esac
}

install_package() {
  local package="$1"

  case "$PKG_MANAGER" in
    apt)
      run_as_root apt-get install -y "$package"
      ;;
    dnf)
      run_as_root dnf install -y "$package"
      ;;
    yum)
      run_as_root yum install -y "$package"
      ;;
    pacman)
      run_as_root pacman -S --noconfirm "$package"
      ;;
    zypper)
      run_as_root zypper --non-interactive install "$package"
      ;;
    apk)
      run_as_root apk add "$package"
      ;;
    *)
      print_error "Gerenciador de pacotes não suportado."
      return 1
      ;;
  esac
}

download_fallback() {
  local tool="$1"
  local fallback_type="$2"
  local fallback_url="$3"
  local destination="$TOOLS_DIR/$tool"

  mkdir -p "$TOOLS_DIR"

  case "$fallback_type" in
    git)
      if ! has_cmd git; then
        print_error "git não encontrado. Instale o git para baixar repositórios."
        return 1
      fi

      if [ -d "$destination/.git" ]; then
        print_info "Repositório já existe em $destination. Atualizando..."
        git -C "$destination" pull --ff-only
      elif [ -e "$destination" ]; then
        print_error "O caminho $destination já existe, mas não é um repositório git."
        return 1
      else
        print_info "Clonando $fallback_url em $destination"
        git clone --depth 1 "$fallback_url" "$destination"
      fi
      ;;
    url|archive|curl)
      if ! has_cmd curl; then
        print_error "curl não encontrado."
        return 1
      fi
      mkdir -p "$destination"
      print_info "Baixando $fallback_url em $destination"
      curl -fL -O --output-dir "$destination" "$fallback_url"
      ;;
    *)
      print_error "Tipo de fallback não suportado: $fallback_type"
      return 1
      ;;
  esac
}

install_tool_from_row() {
  local row="$1"
  local _category_slug category_label tool package fallback_type fallback_url

  IFS=$'\t' read -r _category_slug category_label tool package fallback_type fallback_url <<EOF
$row
EOF

  detect_distro
  detect_package_manager

  printf "\n%b\n" "${white}Ferramenta:${reset} $tool"
  printf "%b\n" "${white}Categoria:${reset} $category_label"
  printf "%b\n" "${white}Pacote:${reset} $package"

  if [ "$DOWNLOAD_ONLY" -eq 1 ]; then
    download_fallback "$tool" "$fallback_type" "$fallback_url"
    return $?
  fi

  if [ -n "$PKG_MANAGER" ]; then
    print_info "Verificando disponibilidade de '$package' via $PKG_MANAGER..."
    if package_available "$package"; then
      if confirm "Instalar '$package' usando $PKG_MANAGER?"; then
        if install_package "$package"; then
          print_ok "$tool instalado via $PKG_MANAGER."
          return 0
        fi
        print_warn "Falha na instalação via $PKG_MANAGER."
      else
        print_warn "Instalação via pacote cancelada."
      fi
    else
      print_warn "Pacote '$package' não encontrado no gerenciador $PKG_MANAGER."
    fi
  else
    print_warn "Não há gerenciador de pacotes suportado disponível."
  fi

  if confirm "Deseja baixar o código-fonte/fallback de '$tool'?"; then
    download_fallback "$tool" "$fallback_type" "$fallback_url"
  else
    print_warn "Nenhuma ação realizada para $tool."
    return 1
  fi
}

install_by_name() {
  local name="$1"
  local row count first_row

  ensure_catalog || return 1

  if [ -z "$name" ]; then
    print_error "Informe o nome da ferramenta. Exemplo: ./chan-vy.sh --install nmap"
    return 1
  fi

  count=$(find_tool_rows "$name" | wc -l | tr -d ' ')
  if [ "$count" -eq 0 ]; then
    print_error "Ferramenta não encontrada no catálogo: $name"
    print_info "Dica: use './chan-vy.sh --search $name' para buscar nomes parecidos."
    return 1
  fi

  first_row=$(find_tool_rows "$name" | head -n 1)
  if [ "$count" -gt 1 ]; then
    print_warn "Ferramenta encontrada em $count categorias. Usando a primeira ocorrência."
  fi

  install_tool_from_row "$first_row"
}

select_tool_from_category() {
  local category="$1"
  local label="$2"
  local rows selection row count action

  while true; do
    banner
    printf "%b\n" "${yellow}$label${reset}"
    printf "\n"

    mapfile -t rows < <(show_tools_by_category "$category")
    count=${#rows[@]}

    if [ "$count" -eq 0 ]; then
      print_warn "Nenhuma ferramenta encontrada nesta categoria."
      pause
      return 0
    fi

    for row in "${rows[@]}"; do
      IFS=$'\t' read -r idx tool package fallback_type fallback_url category_label <<EOF
$row
EOF
      printf "%b[%3s]%b %-35s pacote: %s\n" "$red" "$idx" "$reset" "$tool" "$package"
    done

    printf "\n%b" "${red}[0]${reset} Voltar\n"
    printf "Escolha uma ferramenta: "
    read -r selection

    case "$selection" in
      0|voltar|back) return 0 ;;
      '') continue ;;
    esac

    if ! printf '%s' "$selection" | grep -Eq '^[0-9]+$'; then
      print_warn "Opção inválida."
      sleep 1
      continue
    fi

    if [ "$selection" -lt 1 ] || [ "$selection" -gt "$count" ]; then
      print_warn "Opção inválida."
      sleep 1
      continue
    fi

    row="${rows[$((selection - 1))]}"
    IFS=$'\t' read -r _idx tool package fallback_type fallback_url _category_label <<EOF
$row
EOF

    printf "\nEscolha a ação para %s:\n" "$tool"
    printf "  [1] Instalar pelo gerenciador da distro quando possível\n"
    printf "  [2] Baixar código-fonte/fallback\n"
    printf "  [0] Cancelar\n"
    printf "Opção: "
    read -r action

    case "$action" in
      1)
        DOWNLOAD_ONLY=0 install_tool_from_row "$category	$label	$tool	$package	$fallback_type	$fallback_url"
        pause
        ;;
      2)
        DOWNLOAD_ONLY=1 install_tool_from_row "$category	$label	$tool	$package	$fallback_type	$fallback_url"
        DOWNLOAD_ONLY=0
        pause
        ;;
      *)
        ;;
    esac
  done
}

main_menu() {
  local categories selection row idx slug label total total_tools resolved

  ensure_catalog || return 1

  while true; do
    banner
    show_system_info
    total_tools=$(catalog_count)
    printf "\n%b\n" "${green}Ferramentas no catálogo:${reset} $total_tools"
    printf "\n"

    mapfile -t categories < <(show_categories)
    for row in "${categories[@]}"; do
      IFS=$'\t' read -r idx slug label total <<EOF
$row
EOF
      printf "%b[%3s]%b %-34s %s ferramentas  /%s\n" "$red" "$idx" "$reset" "$label" "$total" "$slug"
    done

    printf "\n"
    printf "%b[/update]%b Atualizar catálogo\n" "$red" "$reset"
    printf "%b[/search]%b Buscar ferramenta\n" "$red" "$reset"
    printf "%b[/help]%b Ajuda\n" "$red" "$reset"
    printf "%b[/exit]%b Sair\n" "$red" "$reset"
    printf "\nEscolha uma categoria: "
    read -r selection

    case "$selection" in
      exit|/exit|sair|/sair|0) break ;;
      help|/help) usage; pause; continue ;;
      update|/update)
        update_catalog || true
        pause
        continue
        ;;
      search|/search)
        printf "Termo de busca: "
        read -r selection
        search_catalog "$selection"
        pause
        continue
        ;;
      '') continue ;;
    esac

    resolved=$(resolve_category_alias "$selection")

    if printf '%s' "$resolved" | grep -Eq '^[0-9]+$'; then
      if [ "$resolved" -lt 1 ] || [ "$resolved" -gt "${#categories[@]}" ]; then
        print_warn "Opção inválida."
        sleep 1
        continue
      fi
      row="${categories[$((resolved - 1))]}"
      IFS=$'\t' read -r idx slug label total <<EOF
$row
EOF
      select_tool_from_category "$slug" "$label"
      continue
    fi

    row=$(printf '%s\n' "${categories[@]}" | awk -F '\t' -v slug="$resolved" '$2 == slug { print; exit }')
    if [ -n "$row" ]; then
      IFS=$'\t' read -r idx slug label total <<EOF
$row
EOF
      select_tool_from_category "$slug" "$label"
    else
      print_warn "Opção inválida."
      sleep 1
    fi
  done
}

parse_args() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      --update)
        ACTION="update"
        ;;
      --search)
        ACTION="search"
        shift
        ACTION_ARG="${1:-}"
        ;;
      --install)
        ACTION="install"
        shift
        ACTION_ARG="${1:-}"
        ;;
      --download|--download-only)
        ACTION="install"
        DOWNLOAD_ONLY=1
        shift
        ACTION_ARG="${1:-}"
        ;;
      -y|--yes)
        YES=1
        ;;
      -h|--help|help|/help)
        ACTION="help"
        ;;
      *)
        print_error "Opção desconhecida: $1"
        usage
        exit 1
        ;;
    esac
    shift
  done
}

main() {
  parse_args "$@"

  case "$ACTION" in
    help)
      usage
      ;;
    update)
      update_catalog
      ;;
    search)
      search_catalog "$ACTION_ARG"
      ;;
    install)
      install_by_name "$ACTION_ARG"
      ;;
    menu)
      main_menu
      ;;
  esac
}

main "$@"
