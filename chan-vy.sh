#!/usr/bin/env bash
#Acesso ROOT.

source help.sh

[ $UID -ne '0' ] && { echo "Necessário ter Acesso ROOT."; exit 1 ;}

export LANG=pt_BR.UTF-8
zenity --title="Chan-vy Tools Listing" --info --width=400 --height=200 --text=" [CHAN-VY] É um script que baixa o código-fonte de todas as ferramentas disponíveis no Kali Linux, direto dos seus repositórios oficiais, e de repositórios confiáveis. "

#coloração do script
lightgreen='\e[1;32m'
white='\e[1;37m'
yellow="\033[1;33m"
red='\e[1;31m'
echo -e "$red" 

banner(){
echo -e "$red""                                                   "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|D|O|N|W|L|O|A|D| |C|O|N|C|L|U|Í|D|O| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&menu
}

download_ferramenta_git(){

  local nome_ferramenta=$1
  local repo_url=$2

mkdir $nome_ferramenta
clear
cd $nome_ferramenta
git clone $repo_url
clear
cd ..

# Verifica o código de retorno do curl
if [ $? -eq 0 ]; then
    banner
else
    echo "Falha no download. Verifique a URL ou sua conexão com a internet."
fi

}

download_ferramenta(){

  local nome_ferramenta=$1
  local repo_url=$2

mkdir $nome_ferramenta
clear
cd $nome_ferramenta
curl -O $repo_url
clear
cd ..

# Verifica o código de retorno do curl
if [ $? -eq 0 ]; then
    banner
else
    echo "Falha no download. Verifique a URL ou sua conexão com a internet."
fi

}


#tela primária
menu()

{
echo -e "$red"
        cat <<banner
                                                                      
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
banner
echo ""
echo -e  "$red Tools: $white ⚛  +300 $yellow||$red By @oandersonbsilva $yellow ||$red Pentesting Tools "



echo -e "\t\t\t $yellow Chan-vy v1.1\n"
echo -e "\t$red[/info]$yellow[[$white Information Gathering  $yellow]] $white: "
echo -e "\t$red[/vul ]$yellow[[$white Vulnerability Analysis $yellow]] $white: "
echo -e "\t$red[/wire]$yellow[[$white    Wireless Attacks    $yellow]] $white: "
echo -e "\t$red[/web ]$yellow[[$white    Web Applications    $yellow]] $white: "
echo -e "\t$red[/expl]$yellow[[$white   Exploitation Tools   $yellow]] $white: "
echo -e "\t$red[/stre]$yellow[[$white    Stress Testing      $yellow]] $white: "
echo -e "\t$red[/fore]$yellow[[$white    Forensics Tools     $yellow]] $white: "
echo -e "\t$red[/snif]$yellow[[$white   Sniffing & Spoofing  $yellow]] $white: "
echo -e "\t$red[/pass]$yellow[[$white    Password Attacks    $yellow]] $white: "
echo -e "\t$red[/main]$yellow[[$white   Maintaining Access   $yellow]] $white: "
echo -e "\t$red[/reve]$yellow[[$white   Reverse Engineering  $yellow]] $white: "
echo -e "\t$red[/hard]$yellow[[$white    Hardware Hacking    $yellow]] $white: "
echo -e "\t$red[/repo]$yellow[[$white     Reporting Tools    $yellow]] $white: "
echo -e "\t$red[/exit] $yellow[$white          Sair          $yellow]] $white: "
echo -e "\t$red Escolha uma Opção [/$yellow*$red]?"
echo -e "$white"
echo -e $lightgreen" ┌─["$red"Chan-vy $okegreen]──[$red~$lightgreen]─["$yellow"Home$lightgreen]:"
echo -ne $lightgreen" └─────► " ;tput sgr0
read menu

case $menu in
info|/info) Information;;
vul |/vul)  Vulnerability;;
wire|/wire) Wireless;;
web |/web)  Informa;;
expl|/expl) Exploração;;
stre|/stre) Stress;;
fore|/fore) Forensics ;;
snif|/snif) Sniffing ;;
pass|/pass) Password ;;
main|/main) Maintaining ;;
reve|/reve) Reverse ;;
hard|/hard) Hardware ;;
repo|/repo) Reporting ;;
exit|/exit) sair;;
help|/help) help;;

*) echo -e $yellow'opicão invalida, tente novamente!'&&sleep 2&&menu;;
esac
}
echo -e "$white"

function Information {
clear
echo -e "$red"
cat <<banner
+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g|
+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 66 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white ace-voip           $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Amap               $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white APT2               $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white arp-scan           $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white Automater          $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white bing-ip2hosts      $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white braa               $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white CaseFile           $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white CDPSnarf           $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white cisco-torch        $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white copy-router-config $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white DMitry             $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white dnmap              $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white dnsenum            $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white DNSRecon           $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white dnstracer          $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white dnswalk            $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white DotDotPwn          $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white enum4linux         $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white enumIAX            $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white EyeWitness         $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white Faraday            $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white Fierce             $yellow]] $white: "
echo -e "\t$red[24]$yellow[[$white Firewalk           $yellow]] $white: "
echo -e "\t$red[25]$yellow[[$white fragroute          $yellow]] $white: "
echo -e "\t$red[26]$yellow[[$white fragrouter         $yellow]] $white: "
echo -e "\t$red[27]$yellow[[$white Ghost Phisher      $yellow]] $white: "
echo -e "\t$red[28]$yellow[[$white GoLismero          $yellow]] $white: "
echo -e "\t$red[29]$yellow[[$white goofile            $yellow]] $white: "
echo -e "\t$red[30]$yellow[[$white hping3             $yellow]] $white: "
echo -e "\t$red[31]$yellow[[$white ident-user-enum    $yellow]] $white: "
echo -e "\t$red[32]$yellow[[$white InSpy              $yellow]] $white: "
echo -e "\t$red[33]$yellow[[$white InTrace            $yellow]] $white: "
echo -e "\t$red[34]$yellow[[$white iSMTP              $yellow]] $white: "
echo -e "\t$red[35]$yellow[[$white lbd                $yellow]] $white: "
echo -e "\t$red[36]$yellow[[$white Maltego Teeth      $yellow]] $white: "
echo -e "\t$red[37]$yellow[[$white masscan            $yellow]] $white: "
echo -e "\t$red[38]$yellow[[$white Metagoofil         $yellow]] $white: "
echo -e "\t$red[39]$yellow[[$white Miranda            $yellow]] $white: "
echo -e "\t$red[40]$yellow[[$white nbtscan-unixwiz    $yellow]] $white: "
echo -e "\t$red[41]$yellow[[$white Nikto              $yellow]] $white: "
echo -e "\t$red[42]$yellow[[$white Nmap               $yellow]] $white: "
echo -e "\t$red[43]$yellow[[$white ntop               $yellow]] $white: "
echo -e "\t$red[44]$yellow[[$white OSRFramework       $yellow]] $white: "
echo -e "\t$red[45]$yellow[[$white p0f                $yellow]] $white: "
echo -e "\t$red[46]$yellow[[$white Parsero            $yellow]] $white: "
echo -e "\t$red[47]$yellow[[$white Recon-ng           $yellow]] $white: "
echo -e "\t$red[48]$yellow[[$white SET                $yellow]] $white: "
echo -e "\t$red[49]$yellow[[$white SMBMap             $yellow]] $white: "
echo -e "\t$red[50]$yellow[[$white smtp-user-enum     $yellow]] $white: "
echo -e "\t$red[51]$yellow[[$white snmp-check         $yellow]] $white: "
echo -e "\t$red[52]$yellow[[$white SPARTA             $yellow]] $white: "
echo -e "\t$red[53]$yellow[[$white sslcaudit          $yellow]] $white: "
echo -e "\t$red[54]$yellow[[$white SSLsplit           $yellow]] $white: "
echo -e "\t$red[55]$yellow[[$white sslstrip           $yellow]] $white: "
echo -e "\t$red[56]$yellow[[$white SSLyze             $yellow]] $white: "
echo -e "\t$red[57]$yellow[[$white Sublist3r          $yellow]] $white: "
echo -e "\t$red[58]$yellow[[$white THC-IPV6           $yellow]] $white: "
echo -e "\t$red[59]$yellow[[$white theHarvester       $yellow]] $white: "
echo -e "\t$red[60]$yellow[[$white TLSSLed            $yellow]] $white: "
echo -e "\t$red[61]$yellow[[$white twofi              $yellow]] $white: "
echo -e "\t$red[62]$yellow[[$white Unicornscan        $yellow]] $white: "
echo -e "\t$red[63]$yellow[[$white URLCrazy           $yellow]] $white: "
echo -e "\t$red[64]$yellow[[$white Wireshark          $yellow]] $white: "
echo -e "\t$red[65]$yellow[[$white WOL-E              $yellow]] $white: "
echo -e "\t$red[66]$yellow[[$white Xplico             $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu$yellow]] $white: "


echo
read -p  ">>>>>>>>>>>"  menu0
   
case $menu0 in

/1|1) 
download_ferramenta "ace-voip" "https://ufpr.dl.sourceforge.net/project/ucsniff/ucsniff/ucsniff-3.2%20src/ucsniff-3.20.tar.gz"
;;

/2|2) 
download_ferramenta "Amap" "https://github.com/vanhauser-thc/THC-Archive/raw/master/Tools/amap-5.4.tar.gz"
;;

/3|3) 
download_ferramenta "APT2" "https://gitlab.com/kalilinux/packages/apt2/-/archive/kali/master/apt2-kali-master.tar.gz"
;;

/4|4) 
download_ferramenta_git "arp-scan" "https://github.com/royhills/arp-scan.git"
;;

/5|5) 
download_ferramenta_git "TekDefense-Automater" "https://github.com/1aN0rmus/TekDefense-Automater.git"
;;

/6|6) 
download_ferramenta_git "bing-ip2hosts" "https://github.com/urbanadventurer/bing-ip2hosts/archive/v1.0.1.zip"
;;

/7|7) 
download_ferramenta_git "braa" "https://github.com/mteg/braa.git"
;;

/8|8) 
download_ferramenta_git "casefile" "https://github.com/ParrotSec/casefile.git"
;;

/9|9) 
download_ferramenta_git "cdpsnarf" "https://github.com/Zapotek/cdpsnarf.git"
;;

/10|10)  
download_ferramenta "cisco-torch" "https://gitlab.com/kalilinux/packages/cisco-torch/-/archive/kali/master/cisco-torch-kali-master.zip"
;;

/11|11) 
download_ferramenta "copy-router-config" "https://gitlab.com/kalilinux/packages/copy-router-config/-/archive/kali/master/copy-router-config-kali-master.zip"
;;

/12|12)  
download_ferramenta "DMitry" "https://gitlab.com/kalilinux/packages/dmitry/-/archive/kali/master/dmitry-kali-master.zip"
;;

/13|13)  
download_ferramenta "dnmap" "https://gitlab.com/kalilinux/packages/dnmap/-/archive/kali/master/dnmap-kali-master.zip"
;;

/14|14) 
download_ferramenta_git "dnsenum" "https://github.com/fwaeytens/dnsenum.git" 
;;

/15|15)  
download_ferramenta_git "dnsrecon" "https://github.com/darkoperator/dnsrecon.git"
;;

/16|16) 
download_ferramenta "dnstracer" "https://gitlab.com/kalilinux/packages/dnstracer/-/archive/kali/master/dnstracer-kali-master.zip" 
;;

/17|17)  
download_ferramenta "dnswalk" "https://downloads.sourceforge.net/project/dnswalk/dnswalk/2.0.2/dnswalk-2.0.2.tar.gz?r=&ts=1588301577&use_mirror=ufpr"
;;

/18|18) 
download_ferramenta_git "dotdotpwn" "https://github.com/wireghoul/dotdotpwn.git"
;;

/19|19)  
download_ferramenta "enum4linux" "https://gitlab.com/kalilinux/packages/enum4linux/-/raw/kali/master/enum4linux.pl?inline=false"
;;

/20|20)  
download_ferramenta "enumiax" "https://gitlab.com/kalilinux/packages/enumiax/-/archive/kali/master/enumiax-kali-master.zip"
;;

/21|21) 
download_ferramenta_git "EyeWitness" "https://github.com/FortyNorthSecurity/EyeWitness.git"
;;

/22|22)
download_ferramenta_git "faraday" "https://github.com/infobyte/faraday.git"
;;

/23|23) 
download_ferramenta "fierce" "https://gitlab.com/kalilinux/packages/fierce/-/archive/kali/master/fierce-kali-master.zip"
;;

/24|24) 
download_ferramenta "firewalk" "https://gitlab.com/kalilinux/packages/firewalk/-/archive/kali/master/firewalk-kali-master.zip"
;;

/25|25)
download_ferramenta "fragroute" "https://gitlab.com/kalilinux/packages/fragroute/-/archive/kali/master/fragroute-kali-master.zip"
;;
     
/26|26)
download_ferramenta "fragrouter" "https://gitlab.com/kalilinux/packages/fragrouter/-/archive/kali/master/fragrouter-kali-master.zip"
;;

/27|27) 
download_ferramenta_git "ghost-Phisher" "https://github.com/savio-code/ghost-phisher.git"
;;

/28|28) 
download_ferramenta_git "golismero" "https://github.com/golismero/golismero.git"
;;

/29|29)
download_ferramenta "goofile" "https://gitlab.com/kalilinux/packages/goofile/-/archive/kali/master/goofile-kali-master.zip"
;;

/30|30)
download_ferramenta "hping3" "https://gitlab.com/kalilinux/packages/hping3/-/archive/kali/master/hping3-kali-master.zip"
;;

/31|31) 
download_ferramenta "ident-user-enum" "https://gitlab.com/kalilinux/packages/ident-user-enum/-/archive/kali/master/ident-user-enum-kali-master.zip"
;;

/32|32)
download_ferramenta "inspy" "https://gitlab.com/kalilinux/packages/inspy/-/archive/kali/master/inspy-kali-master.zip"
;;

/33|33) 
download_ferramenta "InTrace" "https://gitlab.com/kalilinux/packages/intrace/-/archive/kali/master/intrace-kali-master.zip"
;;

/34|34)
download_ferramenta "ismtp" "https://gitlab.com/kalilinux/packages/ismtp/-/archive/kali/master/ismtp-kali-master.zip"
;;

/35|35)
download_ferramenta "lbd" "https://gitlab.com/kalilinux/packages/lbd/-/archive/kali/master/lbd-kali-master.zip"
;;

/36|36)
download_ferramenta "maltego-teeth" "https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip"
;;

/37|37) 
download_ferramenta "masscan" "https://gitlab.com/kalilinux/packages/masscan/-/archive/kali/master/masscan-kali-master.zip"
;;
 
/38|38) 
download_ferramenta "Metagoofil" "https://gitlab.com/kalilinux/packages/metagoofil/-/archive/kali/master/metagoofil-kali-master.zip"
;;
          
/39|39) Miranda
download_ferramenta "Metagoofil" "https://gitlab.com/kalilinux/packages/miranda/-/archive/kali/master/miranda-kali-master.zip"
;;

/40|40) nbtscan-unixwiz
download_ferramenta "nbtscan-unixwiz" "http://unixwiz.net/tools/nbtscan-1.0.31-sco-5.0.6.bin"
;;

/41|41) Nikto
download_ferramenta "Nikto" "https://gitlab.com/kalilinux/packages/nikto/-/archive/kali/master/nikto-kali-master.zip"
;;

/42|42) Nmap
download_ferramenta "Nmap" "https://gitlab.com/kalilinux/packages/nmap/-/archive/kali/master/nmap-kali-master.zip"
;;

/43|43) ntop
download_ferramenta "ntop" "https://gitlab.com/kalilinux/packages/ntop/-/archive/kali/master/ntop-kali-master.zip"
;;

/44|44) OSRFramework
download_ferramenta "OSRFramework" "https://gitlab.com/kalilinux/packages/osrframework/-/archive/kali/master/osrframework-kali-master.zip"
;;

/45|45) p0f
download_ferramenta "p0f" "https://gitlab.com/kalilinux/packages/p0f/-/archive/kali/master/p0f-kali-master.zip"
;;

/46|46) Parsero
download_ferramenta "Parsero" "https://github.com/behindthefirewalls/Parsero/archive/master.zip"
;;

/47|47) Recon-ng
download_ferramenta "Recon-ng" "https://gitlab.com/kalilinux/packages/recon-ng/-/archive/kali/master/recon-ng-kali-master.zip"
;;

/48|48) SET 
download_ferramenta "SET" "https://gitlab.com/kalilinux/packages/set/-/archive/kali/master/set-kali-master.zip"
;;

/49|49) SMBMap 
download_ferramenta "SMBMap" "https://gitlab.com/kalilinux/packages/smbmap/-/archive/kali/master/smbmap-kali-master.zip"
;;

/50|50) smtp-user-enum  
download_ferramenta "smtp-user-enum" "https://gitlab.com/kalilinux/packages/smtp-user-enum/-/archive/kali/master/smtp-user-enum-kali-master.zip"
;;

/51|51) snmp-check 
download_ferramenta "snmp-check" "https://gitlab.com/kalilinux/packages/snmpcheck/-/archive/kali/master/snmpcheck-kali-master.zip"
;;

/52|52) SPARTA
download_ferramenta "SPARTA" "https://gitlab.com/kalilinux/packages/sparta/-/archive/kali/master/sparta-kali-master.zip"
;;

/53|53) sslcaudit
download_ferramenta "sslcaudit" "https://gitlab.com/kalilinux/packages/sslcaudit/-/archive/kali/master/sslcaudit-kali-master.zip"
;;

/54|54) SSLsplit
download_ferramenta "SSLsplit" "https://gitlab.com/kalilinux/packages/sslsplit/-/archive/kali/master/sslsplit-kali-master.zip"
;;

/55|55) sslstrip
download_ferramenta "sslstrip" "https://gitlab.com/kalilinux/packages/sslstrip/-/archive/kali/master/sslstrip-kali-master.zip"
;;

/56|56) SSLyze
download_ferramenta "SSLyze" "https://gitlab.com/kalilinux/packages/sslyze/-/archive/kali/master/sslyze-kali-master.zip"
;;

/57|57) Sublist3r
download_ferramenta "Sublist3r" "https://gitlab.com/kalilinux/packages/sublist3r/-/archive/kali/master/sublist3r-kali-master.zip"
;;

/58|58) THC-IPV6 
download_ferramenta "THC-IPV6" "https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip"
;;

/59|59) theHarvester 
download_ferramenta "theHarvester" "https://gitlab.com/kalilinux/packages/theharvester/-/archive/kali/master/theharvester-kali-master.zip"
;;

/60|60) TLSSLed 
download_ferramenta "TLSSLed" "https://gitlab.com/kalilinux/packages/tlssled/-/archive/kali/master/tlssled-kali-master.zip"
;;

/61|61) twofi 
download_ferramenta "twofi" "https://gitlab.com/kalilinux/packages/twofi/-/archive/kali/master/twofi-kali-master.zip"
;;

/62|62) Unicornscan 
download_ferramenta "Unicornscan" "https://gitlab.com/kalilinux/packages/unicornscan/-/archive/kali/master/unicornscan-kali-master.zip"
;;

/63|63) URLCrazy 
download_ferramenta "URLCrazy" "https://gitlab.com/kalilinux/packages/urlcrazy/-/archive/kali/master/urlcrazy-kali-master.zip"
;;

/64|64) Wireshark 
download_ferramenta "Wireshark" "https://gitlab.com/kalilinux/packages/wireshark/-/archive/kali/master/wireshark-kali-master.zip"
;;

/65|65) WOL-E  
download_ferramenta "WOL-E" "https://gitlab.com/kalilinux/packages/wol-e/-/archive/kali/master/wol-e-kali-master.zip"
;;

/66|66) Xplico
download_ferramenta "Xplico" "https://gitlab.com/kalilinux/packages/xplico/-/archive/kali/master/xplico-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
clear 
sleep 0.5&&menu 
;;

*) echo
echo Opção incorreta!!
sleep 0.5&&Information
;;

esac
}
function Vulnerability () {
clear
echo -e "$red"
cat <<banner


  +-+-+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
  |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 27 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white BBQSQL                 $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white BED                    $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white cisco-auditing-tool    $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white cisco-global-exploiter $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white cisco-ocs              $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white cisco-torch            $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white copy-router-config     $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white Doona                  $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white DotDotPwn              $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white HexorBase              $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white jSQL Injection         $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white Lynis                  $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white Nmap                   $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white ohrwurm                $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white openvas                $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white Oscanner               $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white Powerfuzzer            $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white sfuzz                  $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white SidGuesser             $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white SIPArmyKnife           $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white sqlmap                 $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white Sqlninja               $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white sqlsus                 $yellow]] $white: "
echo -e "\t$red[24]$yellow[[$white THC-IPV6               $yellow]] $white: "
echo -e "\t$red[25]$yellow[[$white tnscmd10g              $yellow]] $white: "
echo -e "\t$red[26]$yellow[[$white unix-privesc-check     $yellow]] $white: "
echo -e "\t$red[27]$yellow[[$white Yersinia               $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu1
   
case $menu1 in

1|1) BBQSQL 
download_ferramenta "BBQSQL" "https://gitlab.com/kalilinux/packages/bbqsql/-/archive/kali/master/bbqsql-kali-master.zip"
;;

/2|2) BED  
download_ferramenta "BED" "https://gitlab.com/kalilinux/packages/doona/-/archive/kali/master/doona-kali-master.zip"
;;

/3|3) cisco-auditing-tool
download_ferramenta "cisco-auditing-tool" "https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip"
;;   

/4|4) cisco-global-exploiter
download_ferramenta "cisco-global-exploiter" "https://gitlab.com/kalilinux/packages/cisco-global-exploiter/-/archive/kali/master/cisco-global-exploiter-kali-master.zip"
;;   

/5|5) cisco-ocs 
download_ferramenta "cisco-ocs" "https://gitlab.com/kalilinux/packages/cisco-ocs/-/archive/kali/master/cisco-ocs-kali-master.zip"
;;   
 
/6|6) cisco-torch
download_ferramenta "cisco-torch" "https://gitlab.com/kalilinux/packages/cisco-torch/-/archive/kali/master/cisco-torch-kali-master.zip"
;;  

/7|7) copy-router-config
download_ferramenta "copy-router-config" "https://gitlab.com/kalilinux/packages/copy-router-config/-/archive/kali/master/copy-router-config-kali-master.zip"
;;   

/8|8) Doona
download_ferramenta "Doona" "https://gitlab.com/kalilinux/packages/doona/-/archive/kali/master/doona-kali-master.zip"
;;   

/9|9) DotDotPwn
download_ferramenta "DotDotPwn" "https://gitlab.com/kalilinux/packages/dotdotpwn/-/archive/kali/master/dotdotpwn-kali-master.zip"
;;           
 
/10|10) HexorBase
download_ferramenta "HexorBase" "https://gitlab.com/kalilinux/packages/hexorbase/-/archive/kali/master/hexorbase-kali-master.zip"
;;           

/11|11) jSQL Injection 
download_ferramenta "jSQL Injection" "https://gitlab.com/kalilinux/packages/jsql/-/archive/kali/master/jsql-kali-master.zip"
;;            
 
/12|12) Lynis
download_ferramenta "Lynis" "https://downloads.cisofy.com/lynis/lynis-3.0.0.tar.gz"
;;

/13|13) Nmap
download_ferramenta "Nmap" "https://gitlab.com/kalilinux/packages/nmap/-/archive/kali/master/nmap-kali-master.zip"
;;

/14|14) ohrwurm
download_ferramenta "ohrwurm" "https://gitlab.com/kalilinux/packages/ohrwurm/-/archive/kali/master/ohrwurm-kali-master.zip"
;;   

/15|15) openvas
download_ferramenta "openvas" "https://gitlab.com/kalilinux/packages/openvas/-/archive/kali/master/openvas-kali-master.zip"
;;

/16|16) Oscanner
download_ferramenta "Oscanner" "https://gitlab.com/kalilinux/packages/oscanner/-/archive/kali/master/oscanner-kali-master.zip"
;;   

/17|17) Powerfuzzer
download_ferramenta "Powerfuzzer" "https://gitlab.com/kalilinux/packages/powerfuzzer/-/archive/kali/master/powerfuzzer-kali-master.zip"
;;   

/18|18) sfuzz 
download_ferramenta "sfuzz" "https://gitlab.com/kalilinux/packages/sfuzz/-/archive/kali/master/sfuzz-kali-master.zip"
;;   

/19|19) SidGuesser
download_ferramenta "SidGuesser" "https://gitlab.com/kalilinux/packages/sidguesser/-/archive/kali/master/sidguesser-kali-master.zip"
;;

/20|20) SIPArmyKnife 
download_ferramenta "SIPArmyKnife" "https://gitlab.com/kalilinux/packages/siparmyknife/-/archive/kali/master/siparmyknife-kali-master.zip"
;;

/21|21) sqlmap 
download_ferramenta "sqlmap" "https://gitlab.com/kalilinux/packages/sqlmap/-/archive/kali/master/sqlmap-kali-master.zip"
;;   

/22|22) Sqlninja 
download_ferramenta "Sqlninja" "https://gitlab.com/kalilinux/packages/sqlninja/-/archive/kali/master/sqlninja-kali-master.zip"
;;    

/23|23) sqlsus 
download_ferramenta "sqlsus" "https://gitlab.com/kalilinux/packages/sqlsus/-/archive/kali/master/sqlsus-kali-master.zip"
;;       

/24|24) THC-IPV6 
download_ferramenta "THC-IPV6" "https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip"
;;       

/25|25) tnscmd10g  
download_ferramenta "tnscmd10g" "https://gitlab.com/kalilinux/packages/tnscmd10g/-/archive/kali/master/tnscmd10g-kali-master.zip"
;;       

/26|26) unix-privesc-check
download_ferramenta "unix-privesc-check" "https://gitlab.com/kalilinux/packages/unix-privesc-check/-/archive/kali/master/unix-privesc-check-kali-master.zip"
;;

/27|27) Yersinia  
download_ferramenta "Yersinia" "https://gitlab.com/kalilinux/packages/yersinia/-/archive/kali/master/yersinia-kali-master.zip"
;;       

/help|help)
exibir_ajuda
;;

/menu|menu) 
clear 
sleep 0.5&&menu 
;;
        
*) echo
echo Opção incorreta!!
sleep 2&&Vulnerability
;;

esac
}


function Wireless () {
clear
echo -e "$red"
cat <<banner
       +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
       |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s|
       +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+ 
banner
echo ""
echo -e  "$red Tools: $white ⚛ 50 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white Airbase-ng             $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Aircrack-ng            $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white Airdecap-ng            $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white Aireplay-ng            $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white Airgraph-ng            $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white Airmon-ng              $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white Airodump-ng            $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white Airolib-ng             $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white Airserv-ng             $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white Airtun-ng              $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white Asleap                 $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white Besside-ng             $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white Bluelog                $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white BlueMaho               $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white BlueRanger             $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white Bluesnarfer            $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white Bully                  $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white coWPAtty               $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white Easside-ng             $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white Fern Wifi Cracker      $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white freeradius-wpe         $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white Ghost Phisher          $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white GsISKismet             $yellow]] $white: "
echo -e "\t$red[24]$yellow[[$white Gqrx                   $yellow]] $white: "
echo -e "\t$red[25]$yellow[[$white gr-scan                $yellow]] $white: "
echo -e "\t$red[26]$yellow[[$white hostapd-wpe            $yellow]] $white: "
echo -e "\t$red[27]$yellow[[$white ivstools               $yellow]] $white: "
echo -e "\t$red[28]$yellow[[$white kalibrate-rtl          $yellow]] $white: "
echo -e "\t$red[29]$yellow[[$white KillerBee              $yellow]] $white: "
echo -e "\t$red[30]$yellow[[$white Kismet                 $yellow]] $white: "
echo -e "\t$red[31]$yellow[[$white makeivs-ng             $yellow]] $white: "
echo -e "\t$red[32]$yellow[[$white mdk3                   $yellow]] $white: "
echo -e "\t$red[33]$yellow[[$white mfcuk                  $yellow]] $white: "
echo -e "\t$red[34]$yellow[[$white mfoc                   $yellow]] $white: "
echo -e "\t$red[35]$yellow[[$white mfterm                 $yellow]] $white: "
echo -e "\t$red[36]$yellow[[$white Multimon-NG            $yellow]] $white: "
echo -e "\t$red[37]$yellow[[$white Packetforge-ng         $yellow]] $white: "
echo -e "\t$red[38]$yellow[[$white PixieWPS               $yellow]] $white: "
echo -e "\t$red[39]$yellow[[$white pyrit                  $yellow]] $white: "
echo -e "\t$red[40]$yellow[[$white Reaver                 $yellow]] $white: "
echo -e "\t$red[41]$yellow[[$white redfang                $yellow]] $white: "
echo -e "\t$red[42]$yellow[[$white RTLSDR Scanner         $yellow]] $white: "
echo -e "\t$red[43]$yellow[[$white Spooftooph             $yellow]] $white: "
echo -e "\t$red[44]$yellow[[$white Tkiptun-ng             $yellow]] $white: "
echo -e "\t$red[45]$yellow[[$white Wesside-ng             $yellow]] $white: "
echo -e "\t$red[46]$yellow[[$white Wifi Honey             $yellow]] $white: "
echo -e "\t$red[47]$yellow[[$white wifiphisher            $yellow]] $white: "
echo -e "\t$red[48]$yellow[[$white Wifitap                $yellow]] $white: "
echo -e "\t$red[49]$yellow[[$white Wifite                 $yellow]] $white: "
echo -e "\t$red[50]$yellow[[$white wpaclean               $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu2


case $menu2 in

/1|1) Airbase-ng 
download_ferramenta "Airbase-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/2|2) Aircrack-ng 
download_ferramenta "Aircrack-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/3|3) Airdecap-ng
download_ferramenta "Airdecap-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/4|4) Aireplay-ng
download_ferramenta "Aireplay-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/5|5) Airgraph-ng 
download_ferramenta "Airgraph-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip" 
;;

/6|6) Airmon-ng 
download_ferramenta "Airmon-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/7|7) Airodump-ng
download_ferramenta "Airodump-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/8|8) Airolib-ng 
download_ferramenta "Airolib-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/9|9) Airserv-ng
download_ferramenta "Airserv-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/10|10) Airtun-ng
download_ferramenta "Airtun-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/11|11) Asleap
download_ferramenta "Asleap" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/12|12) Besside-ng
download_ferramenta "Besside-ng" "https://gitlab.com//kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/13|13) Bluelog
download_ferramenta "Bluelog" "https://gitlab.com/kalilinux/packages/bluelog/-/archive/kali/master/bluelog-kali-master.zip"
;;

/14|14) BlueMaho
download_ferramenta "BlueMaho" "https://gitlab.com/kalilinux/packages/bluelog/-/archive/kali/master/bluelog-kali-master.zip"
;;

/14|14) Bluepot
download_ferramenta "Bluepot" "https://gitlab.com/kalilinux/packages/bluepot/-/archive/kali/master/bluepot-kali-master.zip"
;;

/15|15) BlueRanger
download_ferramenta "BlueRanger" "https://gitlab.com/kalilinux/packages/blueranger/-/archive/kali/master/blueranger-kali-master.zip"
;;

/16|16) Bluesnarfer
download_ferramenta "Bluesnarfer" "https://gitlab.com/kalilinux/packages/bluesnarfer/-/archive/kali/master/bluesnarfer-kali-master.zip"
;;

/17|17) Bully
download_ferramenta "Bully" "https://gitlab.com/kalilinux/packages/bully/-/archive/kali/master/bully-kali-master.zip"
;;

/18|18) coWPAtty
download_ferramenta "coWPAtty" "https://gitlab.com/kalilinux/packages/cowpatty/-/archive/kali/master/cowpatty-kali-master.zip"
;;

/19|19) Easside-ng 
download_ferramenta "Easside-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/20|20) Fern Wifi Cracker  
download_ferramenta "Fern Wifi Cracker" "https://gitlab.com/kalilinux/packages/fern-wifi-cracker/-/archive/kali/master/fern-wifi-cracker-kali-master.zip"
;;

/21|21) freeradius-wpe 
download_ferramenta "freeradius-wpe" "https://gitlab.com/kalilinux/packages/freeradius-wpe/-/archive/kali/master/freeradius-wpe-kali-master.zip"  
;;

/22|22) GhostPhisher   
download_ferramenta "GhostPhisher" "https://gitlab.com/kalilinux/packages/ghost-phisher/-/archive/kali/master/ghost-phisher-kali-master.zip" 
;;

/22|22) GISKismet    
download_ferramenta "GISKismet" "https://gitlab.com/kalilinux/packages/giskismet/-/archive/kali/master/giskismet-kali-master.zip"
;;

/23|23) Gqrx    
download_ferramenta "Gqrx" "https://gitlab.com/kalilinux/packages/gqrx/-/archive/kali/master/gqrx-kali-master.zip"
;;

/24|24) grscan 
download_ferramenta "grscan" "https://gitlab.com/kalilinux/packages/gr-scan/-/archive/kali/master/gr-scan-kali-master.zip"     
;;

/25|25) grscan     
download_ferramenta "grscan" "https://gitlab.com/kalilinux/packages/gr-scan/-/archive/kali/master/gr-scan-kali-master.zip"     
;;

/26|26) hostapd-wpe 
download_ferramenta "hostapd-wpe" "https://gitlab.com/kalilinux/packages/gr-scan/-/archive/kali/master/gr-scan-kali-master.zip"
;;

/27|27) ivstools 
download_ferramenta "ivstools" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"    
;;

/28|28) kalibrate-rtl
download_ferramenta "kalibrate-rt" "https://gitlab.com/kalilinux/packages/kalibrate-rtl/-/archive/kali/master/kalibrate-rtl-kali-master.zip"      
;;

/29|29) KillerBee
download_ferramenta "KillerBee" "https://gitlab.com/kalilinux/packages/killerbee/-/archive/kali/master/killerbee-kali-master.zip" 
;;

/30|30) Kismet 
download_ferramenta "Kismet" "https://gitlab.com/kalilinux/packages/kismet/-/archive/kali/master/kismet-kali-master.zip"
;;


/31|31) makeivs-ng 
download_ferramenta "makeivs-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/32|32) mdk3
download_ferramenta "mdk3" "https://gitlab.com/kalilinux/packages/mdk3/-/archive/kali/master/mdk3-kali-master.tar.gz" 
;;

/33|33) mfcuk
download_ferramenta "mfcuk" "https://gitlab.com/kalilinux/packages/mfcuk/-/archive/kali/master/mfcuk-kali-master.zip" 
;;

/34|34) mfoc
download_ferramenta "mfoc" "https://gitlab.com/kalilinux/packages/mfoc/-/archive/kali/master/mfoc-kali-master.zip" 
;;

/35|35) mfterm
download_ferramenta "mfterm" "https://gitlab.com/kalilinux/packages/mfterm/-/archive/kali/master/mfterm-kali-master.zip" 
;;

/36|36) Multimon-ng
download_ferramenta "Multimon-ng" "https://gitlab.com/kalilinux/packages/multimon-ng/-/archive/kali/master/multimon-ng-kali-master.zip" 
;;

/37|37) Packetforge-ng
download_ferramenta "Packetforge-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip" 
;;

/38|38) PixieWPS
download_ferramenta "PixieWPS" "https://gitlab.com/kalilinux/packages/pixiewps/-/archive/kali/master/pixiewps-kali-master.zip" 
;;

/39|39) pyrit
download_ferramenta "pyrit" "https://gitlab.com/kalilinux/packages/pyrit/-/archive/kali/master/pyrit-kali-master.zip" 
;;

/40|40) Reaver
download_ferramenta "Reaver" "https://gitlab.com/kalilinux/packages/reaver/-/archive/kali/master/reaver-kali-master.zip"
;;

/41|41) redfang
download_ferramenta "redfang" "https://gitlab.com/kalilinux/packages/redfang/-/archive/kali/master/redfang-kali-master.zip"
;;

/42|42) RTLSDR Scanner
download_ferramenta "RTLSDR Scanner" "https://gitlab.com/kalilinux/packages/rtlsdr-scanner/-/archive/kali/master/rtlsdr-scanner-kali-master.zip" 
;;

/43|43) Spooftooph
download_ferramenta "Spooftooph" "https://gitlab.com/kalilinux/packages/spooftooph/-/archive/kali/master/spooftooph-kali-master.zip"
;;

/44|44) Tkiptun-ng 
download_ferramenta "Tkiptun-ng" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/45|45) Wesside-ng
download_ferramenta "Wesside-ng " "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"  
;;

/46|46) Wifi Honey
download_ferramenta "Wifi Honey" "https://gitlab.com/kalilinux/packages/wifi-honey/-/archive/kali/master/wifi-honey-kali-master.zip" 
;;

/47|47) wifiphisher
download_ferramenta "wifiphisher" "https://gitlab.com/kalilinux/packages/wifiphisher/-/archive/kali/master/wifiphisher-kali-master.zip"
;;

/48|48) Wifitap
download_ferramenta "Wifitap" "https://gitlab.com/kalilinux/packages/wifitap/-/archive/kali/master/wifitap-kali-master.zip" 
;;

/49|49) Wifite
download_ferramenta "Wifite" "https://gitlab.com/kalilinux/packages/wifite/-/archive/kali/master/wifite-kali-master.zip" 
;;

/50|50) wpaclean
download_ferramenta "wpaclean" "https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Wireless
        ;;

      esac
}

function Informa () {
   clear
echo -e "$red"
cat <<banner
      +-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+
      |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s|
      +-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 43 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white apache-users           $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Arachni                $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white BBQSQL                 $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white BlindElephant          $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white Burp Suite             $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white CutyCapt               $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white DAVTest                $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white deblaze                $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white DIRB                   $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white DirBuster              $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white fimap                  $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white FunkLoad               $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white Gobuster               $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white Grabber                $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white hURL                   $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white jboss-autopwn          $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white joomscan               $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white jSQL Injection         $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white Maltego Teeth          $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white Nikto                  $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white PadBuster              $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white Paros                  $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white Parsero                $yellow]] $white: "
echo -e "\t$red[24]$yellow[[$white plecost                $yellow]] $white: "
echo -e "\t$red[25]$yellow[[$white Powerfuzzer            $yellow]] $white: "
echo -e "\t$red[26]$yellow[[$white ProxyStrike            $yellow]] $white: "
echo -e "\t$red[27]$yellow[[$white Recon-ng               $yellow]] $white: "
echo -e "\t$red[28]$yellow[[$white Skipfish               $yellow]] $white: "
echo -e "\t$red[29]$yellow[[$white sqlmap                 $yellow]] $white: "
echo -e "\t$red[30]$yellow[[$white Sqlninja               $yellow]] $white: "
echo -e "\t$red[31]$yellow[[$white sqlsus                 $yellow]] $white: "
echo -e "\t$red[32]$yellow[[$white ua-tester              $yellow]] $white: "
echo -e "\t$red[33]$yellow[[$white Uniscan                $yellow]] $white: "
echo -e "\t$red[34]$yellow[[$white w3af                   $yellow]] $white: "
echo -e "\t$red[35]$yellow[[$white WebScarab              $yellow]] $white: "
echo -e "\t$red[36]$yellow[[$white Webshag                $yellow]] $white: "
echo -e "\t$red[37]$yellow[[$white WebSlayer              $yellow]] $white: "
echo -e "\t$red[38]$yellow[[$white WebSploit              $yellow]] $white: "
echo -e "\t$red[39]$yellow[[$white Wfuzz                  $yellow]] $white: "
echo -e "\t$red[40]$yellow[[$white WhatWeb                $yellow]] $white: "
echo -e "\t$red[41]$yellow[[$white WPScan                 $yellow]] $white: "
echo -e "\t$red[42]$yellow[[$white XSSer                  $yellow]] $white: "
echo -e "\t$red[43]$yellow[[$white zaproxy                $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu3
  
case $menu3 in

/1|1) apache-users
download_ferramenta "apache-users" "https://gitlab.com/kalilinux/packages/apache-users/-/archive/kali/master/apache-users-kali-master.zip"
;;

/2|2) Arachni
download_ferramenta "Arachni" "https://gitlab.com/kalilinux/packages/arachni/-/archive/kali/master/arachni-kali-master.zip"
;;

/3|3) BBQSQL
download_ferramenta "BBQSQL" "https://gitlab.com/kalilinux/packages/bbqsql/-/archive/kali/master/bbqsql-kali-master.zip"
;;

/4|4) BlindElephant
download_ferramenta "BlindElephant" "https://gitlab.com/kalilinux/packages/blindelephant/-/archive/kali/master/blindelephant-kali-master.zip"
;;

/5|5) Burp Suite
download_ferramenta "Burp Suite" "https://gitlab.com/kalilinux/packages/burpsuite/-/archive/kali/master/burpsuite-kali-master.zip"
;;

/6|6) CutyCapt
download_ferramenta "CutyCapt" "https://gitlab.com/kalilinux/packages/cutycapt/-/archive/kali/master/cutycapt-kali-master.zip"
;;

/7|7) DAVTest
download_ferramenta "DAVTest" "https://gitlab.com/kalilinux/packages/davtest/-/archive/kali/master/davtest-kali-master.zip"
;;

/8|8) deblaze
download_ferramenta "deblaze" "https://gitlab.com/kalilinux/packages/deblaze/-/archive/kali/master/deblaze-kali-master.zip"
;;

/9|9) DIRB
download_ferramenta "DIRB" "https://gitlab.com/kalilinux/packages/dirb/-/archive/kali/master/dirb-kali-master.zi"
;;

/10|10) DirBuster
download_ferramenta "DirBuster" "https://gitlab.com/kalilinux/packages/dirbuster/-/archive/kali/master/dirbuster-kali-master.zip"
;;

/11|11) fimap
download_ferramenta "fimap" "https://gitlab.com/kalilinux/packages/fimap/-/archive/kali/master/fimap-kali-master.zip"
;;

/12|12) FunkLoad
download_ferramenta "FunkLoad" "https://gitlab.com/kalilinux/packages/funkload/-/archive/kali/master/funkload-kali-master.zip" 
;;

/13|13) Gobuster
download_ferramenta_git "Gobuster" "https://github.com/OJ/gobuster.git" 
;;

/14|14) Grabber
download_ferramenta "Grabber" "https://gitlab.com/kalilinux/packages/grabber/-/archive/kali/master/grabber-kali-master.zip" 
;;

/15|15) hURL
download_ferramenta "hURL" "https://gitlab.com/kalilinux/packages/hurl/-/archive/kali/master/hurl-kali-master.zip"
;;

/16|16) jboss-autopwn
download_ferramenta "jboss-autopwn" "https://gitlab.com/kalilinux/packages/joomscan/-/archive/kali/master/joomscan-kali-master.zip"
;;

/17|17) joomscan
download_ferramenta "joomscan" "https://gitlab.com/kalilinux/packages/joomscan/-/archive/kali/master/joomscan-kali-master.zip"
;;

/18|18) jSQL Injection
download_ferramenta "jSQL Injection" "https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip" 
;;

/19|19) Maltego Teeth
download_ferramenta "Maltego Teeth" "https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip"
;;

/20|20) Nikto
download_ferramenta "Nikto" "https://gitlab.com/kalilinux/packages/nikto/-/archive/kali/master/nikto-kali-master.zip"
;;

/21|21) PadBuster
download_ferramenta "PadBuster" "https://gitlab.com/kalilinux/packages/padbuster/-/archive/kali/master/padbuster-kali-master.zip"
;;

/22|22) Paros
download_ferramenta "Paros" "https://gitlab.com/kalilinux/packages/paros/-/archive/kali/master/paros-kali-master.zip"
;;

/23|23) Parsero
download_ferramenta "Parsero" "https://github.com/behindthefirewalls/Parsero/archive/master.zip"
;;

/24|24) plecost
download_ferramenta "plecost" "https://gitlab.com/kalilinux/packages/plecost/-/archive/kali/master/plecost-kali-master.zip"
;;

/25|25) Powerfuzzer
download_ferramenta "Powerfuzzer" "https://gitlab.com/kalilinux/packages/powerfuzzer/-/archive/kali/master/powerfuzzer-kali-master.zip"
;;

/26|26) ProxyStrike
download_ferramenta "ProxyStrike" "https://gitlab.com/kalilinux/packages/proxystrike/-/archive/kali/master/proxystrike-kali-master.zip"
;;

/27|27) Recon-ng 
download_ferramenta "Recon-ng " "https://gitlab.com/kalilinux/packages/recon-ng/-/archive/kali/master/recon-ng-kali-master.zip"
;;

/28|28) Skipfish
download_ferramenta "Skipfish" "https://gitlab.com/kalilinux/packages/skipfish/-/archive/kali/master/skipfish-kali-master.zip" 
;;

/29|29) sqlmap
download_ferramenta "sqlmap" "https://gitlab.com/kalilinux/packages/sqlmap/-/archive/kali/master/sqlmap-kali-master.zip"
;;

/30|30) Sqlninja
download_ferramenta "Sqlninja" "https://gitlab.com/kalilinux/packages/sqlninja/-/archive/kali/master/sqlninja-kali-master.zip"
;;

/31|31) sqlsus
download_ferramenta "sqlsus" "https://gitlab.com/kalilinux/packages/sqlsus/-/archive/kali/master/sqlsus-kali-master.zip"
;;

/32|32) ua-tester 
download_ferramenta "ua-tester" "https://gitlab.com/kalilinux/packages/ua-tester/-/archive/kali/master/ua-tester-kali-master.zip"
;;

/33|33) Uniscan
download_ferramenta "Uniscan" "https://gitlab.com/kalilinux/packages/uniscan/-/archive/kali/master/uniscan-kali-master.zip"
;;

/34|34) w3af
download_ferramenta "w3af" "https://gitlab.com/kalilinux/packages/w3af/-/archive/kali/master/w3af-kali-master.zip"
;;

/35|35) WebScarab
download_ferramenta "WebScarab" "https://gitlab.com/kalilinux/packages/webscarab/-/archive/kali/master/webscarab-kali-master.zip"
;;

/36|36) Webshag
download_ferramenta "Webshag" "https://gitlab.com/kalilinux/packages/webshag/-/archive/kali/master/webshag-kali-master.zip"
;;

/37|37) WebSlayer 
download_ferramenta "WebSlayer" "https://gitlab.com/kalilinux/packages/webslayer/-/archive/kali/master/webslayer-kali-master.zip"
;;

/38|38) WebSploit
download_ferramenta "WebSploit" "https://gitlab.com/kalilinux/packages/websploit/-/archive/kali/master/websploit-kali-master.zip"
;;

/39|39) Wfuzz
download_ferramenta "Wfuzz" "https://gitlab.com/kalilinux/packages/wfuzz/-/archive/kali/master/wfuzz-kali-master.zip"
;;

/40|40) WhatWeb 
download_ferramenta "WhatWeb" "https://github.com/urbanadventurer/WhatWeb/archive/v0.5.4.zip" 
;;

/41|41) WPScan 
download_ferramenta "WPScan" "https://gitlab.com/kalilinux/packages/wpscan/-/archive/kali/master/wpscan-kali-master.zip"
;;

/42|42) XSSer
download_ferramenta "XSSer" "https://gitlab.com/kalilinux/packages/xsser/-/archive/kali/master/xsser-kali-master.zip"
;;

/43|43) zaproxy
download_ferramenta "zaproxy" "https://gitlab.com/kalilinux/packages/zaproxy/-/archive/kali/master/zaproxy-kali-master.zip" 
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Informa
        ;;

      esac
}

function Exploração () {
   clear
echo -e "$red"
cat <<banner
 +-+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
 |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s|
 +-+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 21 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white Armitage            $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Backdoor Factory    $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white BeEF                $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white cisco-auditing-tool $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white cisco-global        $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white cisco-ocs           $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white cisco-torch         $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white commix              $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white crackle             $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white exploitdb           $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white jboss-autopwn       $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white Linux Exploit       $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white Maltego Teeth       $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white metasploit-framework$yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white MSFPC               $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white routersploit        $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white SET                 $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white ShellNoob           $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white sqlmap              $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white THC-IPV6            $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white Yersinia            $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu $yellow]] $white: "


echo
read -p  ">>>>>>>>>>>"  menu4

case $menu4 in

/1|1) Armitage

download_ferramenta "Armitage" "https://gitlab.com/kalilinux/packages/armitage/-/archive/kali/master/armitage-kali-master.zip"
;;

/2|2) Backdoor-Factory
download_ferramenta "Backdoor-Factory" "https://gitlab.com/kalilinux/packages/backdoor-factory/-/archive/kali/master/backdoor-factory-kali-master.zip" 
;;

/3|3) BeEF
download_ferramenta "BeEF" "https://gitlab.com/kalilinux/packages/beef-xss/-/archive/kali/master/beef-xss-kali-master.zip"
;;

/4|4) cisco-auditing-tool
download_ferramenta "cisco-auditing-tool" "https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip"
;;

/5|5) cisco-global-exploiter
download_ferramenta "cisco-global-exploiter" "https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip"
;;

/6|6) cisco-ocs
download_ferramenta "cisco-ocs" "https://gitlab.com/kalilinux/packages/cisco-ocs/-/archive/kali/master/cisco-ocs-kali-master.zip" 
;;

/7|7) cisco-torch
download_ferramenta "cisco-torch" "https://gitlab.com/kalilinux/packages/cisco-torch/-/archive/kali/master/cisco-torch-kali-master.zip" 
;;

/8|8) commix
download_ferramenta "commix" "https://github.com/commixproject/commix/archive/master.zip"
;;

/9|9) crackle
download_ferramenta "crackle" "https://gitlab.com/kalilinux/packages/crackle/-/archive/kali/master/crackle-kali-master.zip"
;;

/10|10) exploitdb
download_ferramenta "exploitdb" "https://gitlab.com/kalilinux/packages/exploitdb/-/archive/kali/master/exploitdb-kali-master.zip" 
;;

/11|11) jboss-autopwn 
download_ferramenta "jboss-autopwn" "https://gitlab.com/kalilinux/packages/jboss-autopwn/-/archive/kali/master/jboss-autopwn-kali-master.zip"
;;

/12|12) Linux-Exploit-Suggester
download_ferramenta "Linux-Exploit-Suggester" "https://gitlab.com/kalilinux/packages/linux-exploit-suggester/-/archive/kali/master/linux-exploit-suggester-kali-master.zip" 
;;

/13|13) Maltego-Teeth
download_ferramenta "Maltego-Teeth" "https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip"
;;

/14|14) metasploit-framework
download_ferramenta "metasploit-framework" "https://gitlab.com/kalilinux/packages/metasploit-framework/-/archive/kali/master/metasploit-framework-kali-master.zip"
;;

/15|15) MSFPC
download_ferramenta "MSFPC" "https://gitlab.com/kalilinux/packages/msfpc/-/archive/kali/master/msfpc-kali-master.zip"
;;

/16|16) routersploit
download_ferramenta "routersploit" "https://gitlab.com/kalilinux/packages/routersploit/-/archive/kali/master/routersploit-kali-master.zip"
;;

/17|17) SET
download_ferramenta "SET" "https://gitlab.com/kalilinux/packages/set/-/archive/kali/master/set-kali-master.zip"
;;

/18|18) ShellNoob
download_ferramenta "ShellNoob" "https://gitlab.com/kalilinux/packages/shellnoob/-/archive/kali/master/shellnoob-kali-master.zip"
;;

/19|19) sqlmap
download_ferramenta "sqlmap" "https://gitlab.com/kalilinux/packages/sqlmap/-/archive/kali/master/sqlmap-kali-master.zip"
;;

/20|20) THC-IPV6 
download_ferramenta "THC-IPV6" "https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip"
;;

/21|21) Yersinia
download_ferramenta "Yersinia" "https://gitlab.com/kalilinux/packages/yersinia/-/archive/kali/master/yersinia-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Exploração
        ;;

      esac
}

function Stress () {
   clear
echo -e "$red"
cat <<banner
         +-+-+-+-+-+-+ +-+-+-+-+-+-+-+
         |S|t|r|e|s|s| |T|e|s|t|i|n|g|
         +-+-+-+-+-+-+ +-+-+-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 14 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white DHCPig                 $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white FunkLoad               $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white iaxflood               $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white Inundator              $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white inviteflood            $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white ipv6-toolkit           $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white mdk3                   $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white Reaver                 $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white rtpflood               $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white SlowHTTPTest           $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white t50                    $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white Termineter             $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white THC-IPV6               $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white THC-SSL-DOS            $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu5
  
case $menu5 in

/1|1) DHCPig 
download_ferramenta "DHCPig" "https://gitlab.com/kalilinux/packages/dhcpig/-/archive/kali/master/dhcpig-kali-master.zip"
;;

/2|2) FunkLoad 
download_ferramenta "FunkLoad" "https://gitlab.com/kalilinux/packages/funkload/-/archive/kali/master/funkload-kali-master.zip"
;;

/3|3) iaxflood 
download_ferramenta "iaxflood" "https://gitlab.com/kalilinux/packages/iaxflood/-/archive/kali/master/iaxflood-kali-master.zip"
;;

/4|4) Inundator  
download_ferramenta "Inundator" "https://gitlab.com/kalilinux/packages/inundator/-/archive/kali/master/inundator-kali-master.zip"
;;

/5|5) inviteflood
download_ferramenta "inviteflood" "https://gitlab.com/kalilinux/packages/inviteflood/-/archive/kali/master/inviteflood-kali-master.zip"
;;

/6|6) ipv6-toolkit 
download_ferramenta "ipv6-toolkit " "https://gitlab.com/kalilinux/packages/ipv6-toolkit/-/archive/kali/master/ipv6-toolkit-kali-master.zip"
;;

/7|7) mdk3 
download_ferramenta "mdk3" "https://gitlab.com/kalilinux/packages/mdk3/-/archive/kali/master/mdk3-kali-master.zip"
;;

/8|8) Reaver 
download_ferramenta "Reaver" "https://gitlab.com/kalilinux/packages/reaver/-/archive/kali/master/reaver-kali-master.zip"
;;

/9|9) rtpflood
download_ferramenta "rtpflood" "https://gitlab.com/kalilinux/packages/rtpflood/-/archive/kali/master/rtpflood-kali-master.zip"
;;

/10|10) SlowHTTPTest
download_ferramenta "SlowHTTPTest" "https://gitlab.com/kalilinux/packages/slowhttptest/-/archive/kali/master/slowhttptest-kali-master.zip"
;;

/11|11) t50
download_ferramenta "t50" "https://gitlab.com/kalilinux/packages/t50/-/archive/kali/master/t50-kali-master.zip"
;;

/12|12) Termineter
download_ferramenta "Termineter" "https://gitlab.com/kalilinux/packages/termineter/-/archive/kali/master/termineter-kali-master.zip"
;;

/13|13) THC-IPV6
download_ferramenta "THC-IPV6" "https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip"
;;

/14|14) THC-SSL-DOS
download_ferramenta "THC-SSL-DOS" "https://gitlab.com/kalilinux/packages/thc-ssl-dos/-/archive/kali/master/thc-ssl-dos-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Stress
        ;;

      esac
}

function Forensics () {
   clear
echo -e "$red"
cat <<banner
         +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
         |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|
         +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 23 $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white Binwalk                $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white bulk-extractor         $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white Capstone               $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white chntpw                 $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white Cuckoo                 $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white dc3dd                  $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white ddrescue               $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white DFF                    $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white diStorm3               $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white Dumpzilla              $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white extundelete            $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white Foremost               $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white Galleta                $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white Guymager               $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white iPhone Backup Analyzer $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white p0f                    $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white pdf-parser             $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white pdfid                  $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white pdgmail                $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white peepdf                 $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white RegRipper              $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white Volatility             $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white Xplico                 $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu6
  
case $menu6 in

/1|1) Binwalk 
download_ferramenta "Binwalk" "https://gitlab.com/kalilinux/packages/binwalk/-/archive/kali/master/binwalk-kali-master.zip"
;;

/2|2) bulk-extractor 
download_ferramenta "bulk-extractor"  "https://gitlab.com/kalilinux/packages/bulk-extractor/-/archive/kali/master/bulk-extractor-kali-master.zip"
;;

/3|3) Capstone
download_ferramenta "Capstone" "https://github.com/aquynh/capstone/archive/master.zip"
;;

/4|4) chntpw
download_ferramenta "chntpw" "https://gitlab.com/kalilinux/packages/chntpw/-/archive/kali/master/chntpw-kali-master.zip"
;;

/5|5) Cuckoo
download_ferramenta "Cuckoo" "https://gitlab.com/kalilinux/packages/cuckoo/-/archive/kali/master/cuckoo-kali-master.zip"
;;

/6|6) dc3dd
download_ferramenta "dc3dd" "https://gitlab.com/kalilinux/packages/dc3dd/-/archive/kali/master/dc3dd-kali-master.zip"
;;

/7|7) ddrescue 
download_ferramenta "ddrescue" "https://gitlab.com/kalilinux/packages/ddrescue/-/archive/kali/master/ddrescue-kali-master.zip"
;;

/8|8) DFF
download_ferramenta "DFF" "https://gitlab.com/kalilinux/packages/dff/-/archive/kali/master/dff-kali-master.zip"
;;

/9|9) diStorm3
download_ferramenta "diStorm3" "https://gitlab.com/kalilinux/packages/distorm3/-/archive/kali/master/distorm3-kali-master.zip"
;;

/10|10) Dumpzilla
download_ferramenta "Dumpzilla" "https://gitlab.com/kalilinux/packages/dumpzilla/-/archive/kali/master/dumpzilla-kali-master.zip"
;;

/11|11) extundelete
download_ferramenta "extundelete" "https://gitlab.com/kalilinux/packages/extundelete/-/archive/kali/master/extundelete-kali-master.zip"
;;

/12|12) Foremost
download_ferramenta "Foremost" "https://gitlab.com/kalilinux/packages/foremost/-/archive/kali/master/foremost-kali-master.zip"
;;

/13|13) Galleta
download_ferramenta "Galleta" "https://gitlab.com/kalilinux/packages/galleta/-/archive/kali/master/galleta-kali-master.zip"
;;

/14|14) Guymager
download_ferramenta "Guymager" "https://gitlab.com/kalilinux/packages/guymager/-/archive/kali/master/guymager-kali-master.zip"
;;

/15|15) iPhoneBackupAnalyzer
download_ferramenta "iPhoneBackupAnalyzer" "https://gitlab.com/kalilinux/packages/iphone-backup-analyzer/-/archive/kali/master/iphone-backup-analyzer-kali-master.zip"
;;

/16|16) p0f
download_ferramenta "p0f" "https://gitlab.com/kalilinux/packages/p0f/-/archive/kali/master/p0f-kali-master.zip"
;;

/17|17) pdf-parser
download_ferramenta "pdf-parser" "https://gitlab.com/kalilinux/packages/pdf-parser/-/archive/kali/master/pdf-parser-kali-master.zip"
;;

/18|18) pdfid
download_ferramenta "pdfid" "https://gitlab.com/kalilinux/packages/pdfid/-/archive/kali/master/pdfid-kali-master.zip"
;;

/19|19) pdgmail
download_ferramenta "pdgmail" "https://gitlab.com/kalilinux/packages/pdfid/-/archive/kali/master/pdfid-kali-master.zip"
;;

/20|20) peepdf
download_ferramenta "peepdf" "https://gitlab.com/kalilinux/packages/peepdf/-/archive/kali/master/peepdf-kali-master.zip"
;;

/21|21) RegRipper
download_ferramenta "RegRipper" "https://gitlab.com/kalilinux/packages/regripper/-/archive/kali/master/regripper-kali-master.zip"
;;

/22|22) Volatility
download_ferramenta "Volatility" "https://gitlab.com/kalilinux/packages/volatility/-/archive/kali/master/volatility-kali-master.zip"
;;

/23|23) Xplico
download_ferramenta "Xplico" "https://gitlab.com/kalilinux/packages/xplico/-/archive/kali/master/xplico-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Forensics
        ;;

      esac
}

function Sniffing () {
   clear
echo -e "$red"
cat <<banner
       +-+-+-+-+-+-+-+-+ +-+ +-+-+-+-+-+-+-+-+
       |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|
       +-+-+-+-+-+-+-+-+ +-+ +-+-+-+-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 33  $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white bettercap              $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Burp Suite             $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white DNSChef                $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white fiked                  $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white hamster-sidejack       $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white HexInject              $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white iaxflood               $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white inviteflood            $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white iSMTP                  $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white isr-evilgrade          $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white mitmproxy              $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white ohrwurm                $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white protos-sip             $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white rebind                 $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white responder              $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white rtpbreak               $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white rtpinsertsound         $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white rtpmixsound            $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white sctpscan               $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white SIPArmyKnife           $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white SIPp                   $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white SIPVicious             $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white SniffJoke              $yellow]] $white: "
echo -e "\t$red[24]$yellow[[$white SSLsplit               $yellow]] $white: "
echo -e "\t$red[25]$yellow[[$white sslstrip               $yellow]] $white: "
echo -e "\t$red[26]$yellow[[$white THC-IPV6               $yellow]] $white: "
echo -e "\t$red[27]$yellow[[$white VoIPHopper             $yellow]] $white: "
echo -e "\t$red[28]$yellow[[$white WebScarab              $yellow]] $white: "
echo -e "\t$red[29]$yellow[[$white Wifi Honey             $yellow]] $white: "
echo -e "\t$red[30]$yellow[[$white Wireshark              $yellow]] $white: "
echo -e "\t$red[31]$yellow[[$white xspy                   $yellow]] $white: "
echo -e "\t$red[32]$yellow[[$white Yersinia               $yellow]] $white: "
echo -e "\t$red[33]$yellow[[$white zaproxy                $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu7

case $menu7 in

/1|1) bettercap 
download_ferramenta "bettercap" "https://gitlab.com/kalilinux/packages/bettercap/-/archive/kali/master/bettercap-kali-master.zip"
;;

/2|2) BurpSuite
download_ferramenta "BurpSuite" "https://gitlab.com/kalilinux/packages/burpsuite/-/archive/kali/master/burpsuite-kali-master.zip"
;;

/3|3) DNSChef
download_ferramenta "DNSChef" "https://gitlab.com/kalilinux/packages/dnschef/-/archive/kali/master/dnschef-kali-master.zip"
;;

/4|4) fiked
download_ferramenta "fiked" "https://gitlab.com/kalilinux/packages/fiked/-/archive/kali/master/fiked-kali-master.zip"
;;

/5|5) hamster-sidejack
download_ferramenta "hamster-sidejack" "https://gitlab.com/kalilinux/packages/hamster-sidejack/-/archive/kali/master/hamster-sidejack-kali-master.zip"
;;

/6|6) HexInject
download_ferramenta "HexInject" "https://gitlab.com/kalilinux/packages/hexinject/-/archive/kali/master/hexinject-kali-master.zip"
;;

/7|7) iaxflood
download_ferramenta "iaxflood" "https://gitlab.com/kalilinux/packages/iaxflood/-/archive/kali/master/iaxflood-kali-master.zip"
;;

/8|8) inviteflood
download_ferramenta "inviteflood" "https://gitlab.com/kalilinux/packages/inviteflood/-/archive/kali/master/inviteflood-kali-master.zip"
;;

/9|9) iSMTP
download_ferramenta "iSMTP" "https://gitlab.com/kalilinux/packages/ismtp/-/archive/kali/master/ismtp-kali-master.zip"
;;

/10|10) isr-evilgrade
download_ferramenta "isr-evilgrade" "https://gitlab.com/kalilinux/packages/isr-evilgrade/-/archive/kali/master/isr-evilgrade-kali-master.zip"
;;

/11|11) mitmproxy
download_ferramenta "mitmproxy" "https://gitlab.com/kalilinux/packages/mitmproxy/-/archive/kali/master/mitmproxy-kali-master.zip"
;;

/12|12) ohrwurm
download_ferramenta "ohrwurm" "https://gitlab.com/kalilinux/packages/ohrwurm/-/archive/kali/master/ohrwurm-kali-master.zip"
;;

/13|13) protos-sip
download_ferramenta "protos-sip" "https://gitlab.com/kalilinux/packages/protos-sip/-/archive/kali/master/protos-sip-kali-master.zip"
;;

/14|14) rebind
download_ferramenta "rebind" "https://gitlab.com/kalilinux/packages/rebind/-/archive/kali/master/rebind-kali-master.zip"
;;

/15|15) responder
download_ferramenta "responder" "https://gitlab.com/kalilinux/packages/responder/-/archive/kali/master/responder-kali-master.zip"
;;

/16|16) rtpbreak
download_ferramenta "rtpbreak" "https://gitlab.com/kalilinux/packages/rtpbreak/-/archive/kali/master/rtpbreak-kali-master.zip"
;;

/17|17) rtpinsertsound
download_ferramenta "rtpinsertsound" "https://gitlab.com/kalilinux/packages/rtpinsertsound/-/archive/kali/master/rtpinsertsound-kali-master.zip"
;;

/18|18) rtpmixsound
download_ferramenta "rtpmixsound" "https://gitlab.com/kalilinux/packages/rtpmixsound/-/archive/kali/master/rtpmixsound-kali-master.zip"
;;

/19|19) sctpscan
download_ferramenta "sctpscan" "https://gitlab.com/kalilinux/packages/sctpscan/-/archive/kali/master/sctpscan-kali-master.zip"
;;

/20|20) SIPArmyKnife
download_ferramenta "SIPArmyKnife" "https://gitlab.com/kalilinux/packages/siparmyknife/-/archive/kali/master/siparmyknife-kali-master.zip"
;;

/21|21) SIPp
download_ferramenta "SIPp" "https://gitlab.com/kalilinux/packages/sipp/-/archive/kali/master/sipp-kali-master.zip" 
;;

/22|22) SIPVicious
download_ferramenta "SIPVicious" "https://gitlab.com/kalilinux/packages/sipvicious/-/archive/kali/master/sipvicious-kali-master.zip"
;;

/23|23) SniffJoke 
download_ferramenta "SniffJoke" "https://gitlab.com/kalilinux/packages/sniffjoke/-/archive/kali/master/sniffjoke-kali-master.zip"
;;

/24|24) SSLsplit
download_ferramenta "SSLsplit" "https://gitlab.com/kalilinux/packages/sslsplit/-/archive/kali/master/sslsplit-kali-master.zip"
;;

/25|25) sslstrip
download_ferramenta "sslstrip" "https://gitlab.com/kalilinux/packages/sslstrip/-/archive/kali/master/sslstrip-kali-master.zip"
;;

/26|26) THC-IPV6
download_ferramenta "THC-IPV6" "https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip"
;;

/27|27) VoIPHopper
download_ferramenta "VoIPHopper" "https://gitlab.com/kalilinux/packages/voiphopper/-/archive/kali/master/voiphopper-kali-master.zip"
;;

/28|28) WebScarab
download_ferramenta "WebScarab" "https://gitlab.com/kalilinux/packages/webscarab/-/archive/kali/master/webscarab-kali-master.zip"
;;

/29|29) WifiHoney
download_ferramenta "WifiHoney" "https://gitlab.com/kalilinux/packages/wifi-honey/-/archive/kali/master/wifi-honey-kali-master.zip"
;;

/30|30) Wireshark
download_ferramenta "Wireshark" "https://gitlab.com/kalilinux/packages/wireshark/-/archive/kali/master/wireshark-kali-master.zip"
;;

/31|31) xspy
download_ferramenta "xspy" "https://gitlab.com/kalilinux/packages/xspy/-/archive/kali/master/xspy-kali-master.zip"
;;

/32|32) Yersinia
download_ferramenta "Yersinia" "https://gitlab.com/kalilinux/packages/yersinia/-/archive/kali/master/yersinia-kali-master.zip"
;;

/33|33) zaproxy
download_ferramenta "zaproxy" "https://gitlab.com/kalilinux/packages/zaproxy/-/archive/kali/master/zaproxy-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Sniffing
        ;;

      esac
}

function Password () {
   clear
echo -e "$red"
cat <<banner   

         +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
         |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|  
         +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
banner
echo ""
echo -e  "$red Tools: $white ⚛ 38  $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white BruteSpray             $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Burp Suite             $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white CeWL                   $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white chntpw                 $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white cisco-auditing-tool    $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white CmosPwd                $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white creddump               $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white crowbar                $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white crunch                 $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white findmyhash             $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white gpp-decrypt            $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white hash-identifier        $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white Hashcat                $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white HexorBase              $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white THC-Hydra              $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white John the Ripper        $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white Johnny                 $yellow]] $white: "
echo -e "\t$red[18]$yellow[[$white Maltego Teeth          $yellow]] $white: "
echo -e "\t$red[19]$yellow[[$white Maskprocessor          $yellow]] $white: "
echo -e "\t$red[20]$yellow[[$white multiforcer            $yellow]] $white: "
echo -e "\t$red[21]$yellow[[$white Ncrack                 $yellow]] $white: "
echo -e "\t$red[22]$yellow[[$white oclgausscrack          $yellow]] $white: "
echo -e "\t$red[23]$yellow[[$white ophcrack               $yellow]] $white: "
echo -e "\t$red[24]$yellow[[$white PACK                   $yellow]] $white: "
echo -e "\t$red[25]$yellow[[$white patator                $yellow]] $white: "
echo -e "\t$red[26]$yellow[[$white phrasendrescher        $yellow]] $white: "
echo -e "\t$red[27]$yellow[[$white polenum                $yellow]] $white: "
echo -e "\t$red[28]$yellow[[$white RainbowCrack           $yellow]] $white: "
echo -e "\t$red[29]$yellow[[$white rcracki-mt             $yellow]] $white: "
echo -e "\t$red[30]$yellow[[$white RSMangler              $yellow]] $white: "
echo -e "\t$red[31]$yellow[[$white SecLists               $yellow]] $white: "
echo -e "\t$red[32]$yellow[[$white SQLdict                $yellow]] $white: "
echo -e "\t$red[33]$yellow[[$white Statsprocessor         $yellow]] $white: "
echo -e "\t$red[34]$yellow[[$white THC-pptp-bruter        $yellow]] $white: "
echo -e "\t$red[35]$yellow[[$white TrueCrack              $yellow]] $white: "
echo -e "\t$red[36]$yellow[[$white WebScarab              $yellow]] $white: "
echo -e "\t$red[37]$yellow[[$white wordlists              $yellow]] $white: "
echo -e "\t$red[38]$yellow[[$white zaproxy                $yellow]] $white: "

echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu8

case $menu8 in

/1|1) BruteSpray 
download_ferramenta "BruteSpray" "https://github.com/x90skysn3k/brutespray/archive/master.zip"
;;

/2|2) BurpSuite 
download_ferramenta "BurpSuite" "https://gitlab.com/kalilinux/packages/burpsuite/-/archive/kali/master/burpsuite-kali-master.zip"
;;

/3|3) CeWL 
download_ferramenta "CeWL" "https://gitlab.com/kalilinux/packages/cewl/-/archive/kali/master/cewl-kali-master.zip"
;;

/4|4) chntpw 
download_ferramenta "chntpw" "https://gitlab.com/kalilinux/packages/chntpw/-/archive/kali/master/chntpw-kali-master.zip"
;;

/5|5) cisco-auditing-tool 
download_ferramenta "cisco-auditing-tool " "https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip"
;;

/6|6) CmosPwd 
download_ferramenta "CmosPwd" "https://gitlab.com/kalilinux/packages/cmospwd/-/archive/kali/master/cmospwd-kali-master.zip"
;;

/7|7) creddump 
download_ferramenta "creddump" "https://gitlab.com/kalilinux/packages/creddump/-/archive/kali/master/creddump-kali-master.zip"
;;

/8|8) crowbar 
download_ferramenta "crowbar" "https://gitlab.com/kalilinux/packages/crowbar/-/archive/kali/master/crowbar-kali-master.zip"
;;

/9|9) crunch 
download_ferramenta "crunch" "https://gitlab.com/kalilinux/packages/crunch/-/archive/kali/master/crunch-kali-master.zip"
;;

/10|10) findmyhash 
download_ferramenta "findmyhash" "https://gitlab.com/kalilinux/packages/findmyhash/-/archive/kali/master/findmyhash-kali-master.zip"
;;

/11|11) gpp-decrypt 
download_ferramenta "gpp-decrypt" "https://gitlab.com/kalilinux/packages/gpp-decrypt/-/archive/kali/master/gpp-decrypt-kali-master.zip"
;;

/12|12) hash-identifier
download_ferramenta "hash-identifier" "https://gitlab.com/kalilinux/packages/hash-identifier/-/archive/kali/master/hash-identifier-kali-master.zip"
;;

/13|13) Hashcat
download_ferramenta "Hashcat" "https://gitlab.com/kalilinux/packages/hashcat/-/archive/kali/master/hashcat-kali-master.zip"
;;

/14|14) HexorBase
download_ferramenta "HexorBase" "https://gitlab.com/kalilinux/packages/hexorbase/-/archive/kali/master/hexorbase-kali-master.zip"
;;

/15|15) THC-Hydra
download_ferramenta "THC-Hydra" "https://gitlab.com/kalilinux/packages/hydra/-/archive/kali/master/hydra-kali-master.zip"
;; 

/16|16) JohntheRipper
download_ferramenta "JohntheRipper" "https://gitlab.com/kalilinux/packages/john/-/archive/kali/master/john-kali-master.tar.gz"
;; 

/17|17) Johnny
download_ferramenta "Johnny" "https://gitlab.com/kalilinux/packages/johnny/-/archive/kali/master/johnny-kali-master.zip"
;; 

/18|18) Maltego 
download_ferramenta "Maltego" "https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip"
;; 

/19|19) Maskprocessor 
download_ferramenta "Maskprocessor" "https://gitlab.com/kalilinux/packages/maskprocessor/-/archive/kali/master/maskprocessor-kali-master.zip"
;; 

/20|20) multiforcer 
download_ferramenta "multiforcer" "https://gitlab.com/kalilinux/packages/multiforcer/-/archive/kali/master/multiforcer-kali-master.zip"
;; 

/21|21) Ncrack 
download_ferramenta "Ncrack" "https://gitlab.com/kalilinux/packages/ncrack/-/archive/kali/master/ncrack-kali-master.zip"
;; 

/22|22) oclgausscrack 
download_ferramenta "oclgausscrack" "https://gitlab.com/kalilinux/packages/oclgausscrack/-/archive/kali/master/oclgausscrack-kali-master.zip"
;; 

/23|23) ophcrack 
download_ferramenta "ophcrack" "https://downloads.sourceforge.net/project/ophcrack/ophcrack/3.8.0/ophcrack-3.8.0.tar.bz2?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fophcrack%2Ffiles%2Fophcrack%2F3.8.0%2Fophcrack-3.8.0.tar.bz2%2Fdownload&ts=1612621466"
;; 

/24|24) PACK 
download_ferramenta "PACK" "https://gitlab.com/kalilinux/packages/pack/-/archive/kali/master/pack-kali-master.zip"
;; 

/25|25) patator 
download_ferramenta "patator" "https://gitlab.com/kalilinux/packages/patator/-/archive/kali/master/patator-kali-master.zip"
;; 

/26|26) phrasendrescher 
download_ferramenta "phrasendrescher" "https://gitlab.com/kalilinux/packages/phrasendrescher/-/archive/kali/master/phrasendrescher-kali-master.zip"
;; 

/27|27) polenum 
download_ferramenta "polenum" "https://gitlab.com/kalilinux/packages/polenum/-/archive/kali/master/polenum-kali-master.zip"
;; 

/28|28) RainbowCrack 
download_ferramenta "RainbowCrack" "https://gitlab.com/kalilinux/packages/rainbowcrack/-/archive/kali/master/rainbowcrack-kali-master.zip"
;; 

/29|29) rcracki-mt 
download_ferramenta "rcracki-mt" "https://gitlab.com/kalilinux/packages/rcracki-mt/-/archive/kali/master/rcracki-mt-kali-master.zip"
;; 

/30|30) RSMangler
download_ferramenta "RSMangler" "https://gitlab.com/kalilinux/packages/rsmangler/-/archive/kali/master/rsmangler-kali-master.zip"
;; 

/31|31) SecLists
download_ferramenta "SecLists" "https://gitlab.com/kalilinux/packages/seclists/-/archive/kali/master/seclists-kali-master.zip"
;; 

/32|32) SQLdict
download_ferramenta "SQLdict" "https://gitlab.com/kalilinux/packages/sqldict/-/archive/kali/master/sqldict-kali-master.zip"
;; 

/33|33) Statsprocessor
download_ferramenta "Statsprocessor" "https://gitlab.com/kalilinux/packages/statsprocessor/-/archive/kali/master/statsprocessor-kali-master.zip"
;; 

/34|34) THC-pptp-bruter
download_ferramenta "THC-pptp-bruter" "https://gitlab.com/kalilinux/packages/thc-pptp-bruter/-/archive/kali/master/thc-pptp-bruter-kali-master.zip"
;; 

/35|35) TrueCrack
download_ferramenta "TrueCrack" "https://gitlab.com/kalilinux/packages/truecrack/-/archive/kali/master/truecrack-kali-master.zip"
;; 

/36|36) WebScarab
download_ferramenta "WebScarab" "https://gitlab.com/kalilinux/packages/webscarab/-/archive/kali/master/webscarab-kali-master.tar.gz"
;; 

/37|37) wordlists
download_ferramenta "wordlists" "https://gitlab.com/kalilinux/packages/wordlists/-/archive/kali/master/wordlists-kali-master.zip"
;; 

/38|38) zaproxy
download_ferramenta "zaproxy" "https://gitlab.com/kalilinux/packages/zaproxy/-/archive/kali/master/zaproxy-kali-master.zip"
;; 

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Password
        ;;

      esac
}

function Maintaining () {
   clear
echo -e "$red"
cat <<banner   

       +-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+
       |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|
       +-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+

banner
echo ""
echo -e  "$red Tools: $white ⚛ 17  $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white CryptCat               $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white Cymothoa               $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white dbd                    $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white dns2tcp                $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white HTTPTunnel             $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white Intersect              $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white Nishang                $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white polenum                $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white PowerSploit            $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white pwnat                  $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white RidEnum                $yellow]] $white: "
echo -e "\t$red[12]$yellow[[$white sbd                    $yellow]] $white: "
echo -e "\t$red[13]$yellow[[$white shellter               $yellow]] $white: "
echo -e "\t$red[14]$yellow[[$white U3-Pwn                 $yellow]] $white: "
echo -e "\t$red[15]$yellow[[$white Webshells              $yellow]] $white: "
echo -e "\t$red[16]$yellow[[$white Weevely                $yellow]] $white: "
echo -e "\t$red[17]$yellow[[$white Winexe                 $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu9

case $menu9 in

/1|1) CryptCat 
download_ferramenta "CryptCat" "https://gitlab.com/kalilinux/packages/cryptcat/-/archive/kali/master/cryptcat-kali-master.zip"
;;

/2|2) Cymothoa 
download_ferramenta "Cymothoa" "https://gitlab.com/kalilinux/packages/cymothoa/-/archive/kali/master/cymothoa-kali-master.zip"
;;

/3|3) dbd 
download_ferramenta "dbd" "https://gitlab.com/kalilinux/packages/dbd/-/archive/kali/master/dbd-kali-master.zip"
;;

/4|4) dns2tcp 
download_ferramenta "dns2tcp" "https://gitlab.com/kalilinux/packages/dns2tcp/-/archive/kali/master/dns2tcp-kali-master.zip"
;;

/5|5) HTTPTunnel 
download_ferramenta "HTTPTunnel" "https://gitlab.com/kalilinux/packages/httptunnel/-/archive/kali/master/httptunnel-kali-master.zip"
;;

/6|6) Intersect 
download_ferramenta "Intersect" "https://gitlab.com/kalilinux/packages/intersect/-/archive/kali/master/intersect-kali-master.zip" 
;;

/7|7) Nishang
download_ferramenta "Nishang" "https://gitlab.com/kalilinux/packages/nishang/-/archive/kali/master/nishang-kali-master.zip" 
;;

/8|8) polenum 
download_ferramenta "polenum" "https://gitlab.com/kalilinux/packages/polenum/-/archive/kali/master/polenum-kali-master.zip"

;;

/9|9) PowerSploit 
download_ferramenta "PowerSploit" "https://gitlab.com/kalilinux/packages/powersploit/-/archive/kali/master/powersploit-kali-master.zip"
;;

/10|10) pwnat 
download_ferramenta "pwnat" "https://gitlab.com/kalilinux/packages/pwnat/-/archive/kali/master/pwnat-kali-master.zip"
;;

/11|11) RidEnum 
download_ferramenta "RidEnum" "https://gitlab.com/kalilinux/packages/ridenum/-/archive/kali/master/ridenum-kali-master.zip"
;;

/12|12) sbd 
download_ferramenta "sbd" "https://gitlab.com/kalilinux/packages/sbd/-/archive/kali/master/sbd-kali-master.zip"
;;

/13|13) shellter 
download_ferramenta "shellter" "https://gitlab.com/kalilinux/packages/shellter/-/archive/kali/master/shellter-kali-master.zip"
;;

/14|14) U3-Pwn 
download_ferramenta "U3-Pwn" "https://gitlab.com/kalilinux/packages/u3-pwn/-/archive/kali/master/u3-pwn-kali-master.zip"
;;

/15|15) Webshells 
download_ferramenta "Webshells" "https://gitlab.com/kalilinux/packages/webshells/-/archive/kali/master/webshells-kali-master.zip"
;;

/16|16) Weevely 
download_ferramenta "Weevely" "https://gitlab.com/kalilinux/packages/weevely/-/archive/kali/master/weevely-kali-master.tar.gz"
;;

/17|17) Winexe 
download_ferramenta "Winexe" "https://gitlab.com/kalilinux/packages/winexe/-/archive/kali/master/winexe-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Maintaining
        ;;

      esac
}

function Reverse () {
   clear
echo -e "$red"
cat <<banner   

       +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+
       |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|
       +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+

banner
echo ""
echo -e  "$red Tools: $white ⚛ 11  $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white apktool                $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white dex2jar                $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white diStorm3               $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white edb-debugger           $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white jad                    $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white javasnoop              $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white JD-GUI                 $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white OllyDbg                $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white smali                  $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white Valgrind               $yellow]] $white: "
echo -e "\t$red[11]$yellow[[$white YARA                   $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu10

case $menu10 in

/1|1) apktool
download_ferramenta "apktool" "https://gitlab.com/kalilinux/packages/apktool/-/archive/kali/master/apktool-kali-master.zip"
;;

/2|2) dex2jar
download_ferramenta "dex2jar" "https://gitlab.com/kalilinux/packages/apktool/-/archive/kali/master/apktool-kali-master.zip"
;;

/3|3) diStorm3
download_ferramenta "diStorm3" "https://gitlab.com/kalilinux/packages/distorm3/-/archive/kali/master/distorm3-kali-master.zip"
;;

/4|4) edb-debugger
download_ferramenta "edb-debugger" "https://gitlab.com/kalilinux/packages/edb-debugger/-/archive/kali/master/edb-debugger-kali-master.zip"
;;

/5|5) jad
download_ferramenta "jad" "https://gitlab.com/kalilinux/packages/jad/-/archive/kali/master/jad-kali-master.zip"
;;

/6|6) javasnoop
download_ferramenta "javasnoop" "https://gitlab.com/kalilinux/packages/javasnoop/-/archive/kali/master/javasnoop-kali-master.zip"
;;

/7|7) JD-GUI
download_ferramenta "JD-GUI" "https://gitlab.com/kalilinux/packages/jd-gui/-/archive/kali/master/jd-gui-kali-master.zip"
;;

/8|8) OllyDbg
download_ferramenta "OllyDbg" "https://gitlab.com/kalilinux/packages/ollydbg/-/archive/kali/master/ollydbg-kali-master.zip"
;;

/9|9) smali
download_ferramenta "smali" "https://gitlab.com/kalilinux/packages/smali/-/archive/kali/master/smali-kali-master.zip"
;;

/10|10) Valgrind
download_ferramenta "Valgrind" "https://gitlab.com/kalilinux/packages/valgrind/-/archive/kali/master/valgrind-kali-master.zip"
;;

/11|11) YARA
download_ferramenta "YARA" "https://gitlab.com/kalilinux/packages/yara/-/archive/kali/master/yara-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Reverse
        ;;

      esac
}

function Hardware () {
   clear
echo -e "$red"
cat <<banner   

         +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
         |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|
         +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+

banner
echo ""
echo -e  "$red Tools: $white ⚛ 6  $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white android-sdk            $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white apktool                $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white Arduino                $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white dex2jar                $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white Sakis3G                $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white smali                  $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu11

case $menu11 in

/1|1) android-sdk
download_ferramenta "android-sdk" "https://gitlab.com/kalilinux/packages/android-sdk/-/archive/kali/master/android-sdk-kali-master.zip"
;;

/2|2) apktool
download_ferramenta "apktool" "https://gitlab.com/kalilinux/kalilinux/packages/apktool/-/archive/kali/master/apktool-kali-master.zip"
;;

/3|3) Arduino
download_ferramenta "Arduino" "https://gitlab.com/kalilinux/packages/arduino/-/archive/kali/master/arduino-kali-master.zip"
;;

/4|4) dex2jar
download_ferramenta "dex2jar" "https://gitlab.com/kalilinux/packages/dex2jar/-/archive/kali/master/dex2jar-kali-master.zip"
;;

/5|5) Sakis3G
download_ferramenta "Sakis3G" "https://gitlab.com/kalilinux/packages/sakis3g/-/archive/kali/master/sakis3g-kali-master.zip"
;;


/6|6) smali
download_ferramenta "smali" "https://gitlab.com/kalilinux/packages/smali/-/archive/kali/master/smali-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Hardware
        ;;

      esac
}

function Reporting () {
   clear
echo -e "$red"
cat <<banner   

        +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
        |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|
        +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+

banner
echo ""
echo -e  "$red Tools: $white ⚛ 10  $yellow||$red By @oandersonbsilva"

echo ""
echo -e "\t$red[1]$yellow [[$white CaseFile               $yellow]] $white: "
echo -e "\t$red[2]$yellow [[$white cherrytree             $yellow]] $white: "
echo -e "\t$red[3]$yellow [[$white CutyCapt               $yellow]] $white: "
echo -e "\t$red[4]$yellow [[$white dos2unix               $yellow]] $white: "
echo -e "\t$red[5]$yellow [[$white Dradis                 $yellow]] $white: "
echo -e "\t$red[6]$yellow [[$white MagicTree              $yellow]] $white: "
echo -e "\t$red[7]$yellow [[$white Metagoofil             $yellow]] $white: "
echo -e "\t$red[8]$yellow [[$white Nipper-ng              $yellow]] $white: "
echo -e "\t$red[9]$yellow [[$white pipal                  $yellow]] $white: "
echo -e "\t$red[10]$yellow[[$white RDPY                   $yellow]] $white: "
echo -e "\t$red[/menu]$yellow[[$white Retornar ao Menu    $yellow]] $white: "

echo
read -p  ">>>>>>>>>>>"  menu12

case $menu12 in

/1|1) CaseFile
download_ferramenta "CaseFile" "https://gitlab.com/kalilinux/packages/casefile/-/archive/kali/master/casefile-kali-master.zip"
;;

/2|2) cherrytree 
download_ferramenta "cherrytree" "https://gitlab.com/kalilinux/packages/cherrytree/-/archive/kali/master/cherrytree-kali-master.zip"
;;

/3|3) CutyCapt 
download_ferramenta "CutyCapt" "https://gitlab.com/kalilinux/packages/cutycapt/-/archive/kali/master/cutycapt-kali-master.zip"
;;

/4|4) dos2unix 
download_ferramenta "dos2unix" "https://gitlab.com/kalilinux/packages/dos2unix/-/archive/kali/master/dos2unix-kali-master.zip"
;;

/5|5) Dradis 
download_ferramenta "Dradis" "https://gitlab.com/kalilinux/packages/dradis/-/archive/kali/master/dradis-kali-master.zip"
;;

/6|6) MagicTree
download_ferramenta "MagicTree" "https://github.com/braintripping/magic-tree/archive/master.zip" 
;;

/7|7) Metagoofil 
download_ferramenta "Metagoofil" "https://gitlab.com/kalilinux/packages/metagoofil/-/archive/kali/master/metagoofil-kali-master.zip" 
;;

/8|8) Nipper-ng 
download_ferramenta "Nipper-ng" "https://gitlab.com/kalilinux/packages/nipper-ng/-/archive/kali/master/nipper-ng-kali-master.zip"
;;

/9|9) pipal
download_ferramenta "pipal" "https://gitlab.com/kalilinux/packages/pipal/-/archive/kali/master/pipal-kali-master.zip"
;;

/10|10) RDPY
download_ferramenta "RDPY" "https://gitlab.com/kalilinux/packages/python-rdpy/-/archive/kali/master/python-rdpy-kali-master.zip"
;;

/help|help)
exibir_ajuda
;;

/menu|menu) 
    clear 
    sleep 0.5&&menu 
        ;;
        
 *) echo
        echo Opção incorreta!!
        sleep 2&&Reporting
        ;;

      esac
}

function sair()
{  clear
   exit 0
   
   
}
menu
