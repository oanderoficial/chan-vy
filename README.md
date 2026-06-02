# chan-vy
[![Versão](https://img.shields.io/badge/vers%C3%A3o-1.3-sucecess.svg)](https://github.com/oandersonbsilva/chan-vy/blob/main/chan-vy.sh)
[![Plataformas](https://img.shields.io/badge/Plataformas-Linux%20x64%20%7C%20Linux%20x86-inactive.svg)](https://github.com/oandersonbsilva/chan-vy)
[![Catálogo:](https://img.shields.io/badge/Catálogo%3A-automatizado-blue.svg)](https://github.com/oandersonbsilva/chan-vy/blob/main/chan-vy.sh)
[![license](https://img.shields.io/badge/license-MIT-sucess.svg)](https://github.com/oandersonbsilva/chan-vy/blob/main/LICENSE)

<img src="https://raw.githubusercontent.com/oandersonbsilva/chan-vy/main/pictures/banner.png">

Chan-vy é um script para buscar, baixar e instalar ferramentas de segurança em diferentes distribuições Linux. O catálogo de ferramentas é gerado automaticamente a partir dos metapacotes oficiais do Kali Linux, evitando a necessidade de manter centenas de repositórios manualmente dentro do script.

O uso continua simples: basta executar o script, escolher uma categoria e selecionar a ferramenta desejada. O Chan-vy tenta instalar pelo gerenciador de pacotes da distribuição quando possível e, caso não encontre o pacote, oferece o download do código-fonte/fallback via Git.

<img src="https://raw.githubusercontent.com/oandersonbsilva/chan-vy/main/pictures/1.jpg">

# Requisitos

<ol>
<li><code>Sistema Operacional Linux</code></li>
<li><code>Bash</code></li>
<li><code>Curl</code> para atualizar o catálogo automaticamente</li>
<li><code>Git</code> para baixar repositórios fallback</li>
<li>Um gerenciador de pacotes suportado: <code>apt</code>, <code>dnf</code>, <code>yum</code>, <code>pacman</code>, <code>zypper</code> ou <code>apk</code></li>
</ol>

# Instalação

<ol>
<li><code>git clone https://github.com/bitcoinander/chan-vy.git</code></li>
<li><code>cd chan-vy </code></li>
<li><code>chmod a+x chan-vy.sh</code></li>
<li><code> ./chan-vy.sh </code></li>
</ol>

# Uso

Abrir o menu interativo:

```bash
./chan-vy.sh
```

Atualizar o catálogo a partir do Kali Linux:

```bash
./chan-vy.sh --update
```

Buscar uma ferramenta:

```bash
./chan-vy.sh --search sql
```

Instalar uma ferramenta diretamente:

```bash
./chan-vy.sh --install nmap
```

Baixar o código-fonte/fallback de uma ferramenta:

```bash
./chan-vy.sh --download sqlmap
```

Por padrão, o catálogo fica em:

```bash
~/.cache/chan-vy/tools.tsv
```

E os downloads fallback são salvos em:

```bash
./tools
```

É possível customizar esses caminhos:

```bash
CHANVY_CACHE_DIR=/tmp/chan-vy-cache ./chan-vy.sh --update
CHANVY_TOOLS_DIR=/opt/chan-vy/tools ./chan-vy.sh --download sqlmap
```

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/f2da1cf5-87b9-42d6-aa0b-0dbc621315f8" />
<img width="1919" height="1080" alt="image" src="https://github.com/user-attachments/assets/475cd5c1-307f-4fc4-86a6-1bf8a2bc2201" />
<img width="1919" height="1080" alt="image" src="https://github.com/user-attachments/assets/f27a5d16-16e4-47a0-9ceb-4269171e1fb1" />
