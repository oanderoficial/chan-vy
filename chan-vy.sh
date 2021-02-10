#!/usr/bin/env bash
#Acesso ROOT.

[ $UID -ne '0' ] && { echo "Necessário ter Acesso ROOT."; exit 1 ;}

export LANG=pt_BR.UTF-8
zenity --title="Chan-vy Tools Listing" --info --width=400 --height=200 --text=" [CHAN-VY] É um script que baixa o código-fonte de todas as ferramentas disponíveis no Kali Linux, direto dos seus repositórios oficiais, e de repositórios confiáveis. "

#coloração do script
lightgreen='\e[1;32m'
white='\e[1;37m'
yellow="\033[1;33m"
red='\e[1;31m'
echo -e "$red" 

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



echo -e "\t\t\t $yellow Chan-vy v1.0\n"
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
mkdir ace-voip
clear
cd ace-voip/
curl -O https://ufpr.dl.sourceforge.net/project/ucsniff/ucsniff/ucsniff-3.2%20src/ucsniff-3.20.tar.gz
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/2|2) 
mkdir Amap
clear
cd Amap/
curl -O https://github.com/vanhauser-thc/THC-Archive/raw/master/Tools/amap-5.4.tar.gz
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/3|3) 
mkdir APT2
clear
cd APT2/
curl -O https://gitlab.com/kalilinux/packages/apt2/-/archive/kali/master/apt2-kali-master.tar.gz
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/4|4) 
mkdir arp-scan
clear
cd arp-scan/
git clone https://github.com/royhills/arp-scan.git
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/5|5) 
mkdir TekDefense-Automater
clear
cd TekDefense-Automater/
git clone https://github.com/1aN0rmus/TekDefense-Automater.git
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/6|6) 
mkdir bing-ip2hosts
clear
cd bing-ip2hosts/
curl -O https://github.com/urbanadventurer/bing-ip2hosts/archive/v1.0.1.zip
clear
mkdir bing-ip2hosts
mv v1.0.1.zip /bing-ip2hosts
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/7|7) 
mkdir braa
clear
cd braa/
git clone https://github.com/mteg/braa.git
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/8|8) 
mkdir casefile
clear
cd casefile/
git clone https://github.com/ParrotSec/casefile.git
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/9|9) 
mkdir cdpsnarf
clear
cd cdpsnarf/
git clone https://github.com/Zapotek/cdpsnarf.git
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/10|10)  
mkdir cisco-torch
clear
cd cisco-torch/
curl -O https://gitlab.com/kalilinux/packages/cisco-torch/-/archive/kali/master/cisco-torch-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/11|11)  
mkdir copy-router-config
clear
cd copy-router-config/
curl -O https://gitlab.com/kalilinux/packages/copy-router-config/-/archive/kali/master/copy-router-config-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/12|12)  
mkdir DMitry
clear
cd DMitry/
curl -O https://gitlab.com/kalilinux/packages/dmitry/-/archive/kali/master/dmitry-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/13|13)  
mkdir dnmap
clear
cd dnmap/
curl -O https://gitlab.com/kalilinux/packages/dnmap/-/archive/kali/master/dnmap-kali-master.zip
clear 
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/14|14)  
mkdir dnsenum
clear
cd dnsenum/
git clone https://github.com/fwaeytens/dnsenum.git
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/15|15)  
mkdir dnsrecon
clear
cd dnsrecon/
git clone https://github.com/darkoperator/dnsrecon.git
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/16|16)  
mkdir dnstracer
clear
cd dnstracer/
curl -O https://gitlab.com/kalilinux/packages/dnstracer/-/archive/kali/master/dnstracer-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/17|17)  
mkdir dnswalk
clear
cd dnswalk/
curl -O https://downloads.sourceforge.net/project/dnswalk/dnswalk/2.0.2/dnswalk-2.0.2.tar.gz?r=&ts=1588301577&use_mirror=ufpr
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/18|18) 
mkdir dotdotpwn
clear
cd dotdotpwn/
git clone https://github.com/wireghoul/dotdotpwn.git
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/19|19)  
mkdir enum4linux
clear 
cd enum4linux/
curl -O https://gitlab.com/kalilinux/packages/enum4linux/-/raw/kali/master/enum4linux.pl?inline=false
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/20|20)  
mkdir enumiax
clear
cd enumiax/
curl -O https://gitlab.com/kalilinux/packages/enumiax/-/archive/kali/master/enumiax-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/21|21) 
mkdir EyeWitness
clear
cd EyeWitness/
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/22|22)
mkdir faraday
clear
cd faraday/
git clone https://github.com/infobyte/faraday.git
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/23|23) 
mkdir fierce
clear
cd fierce/
curl -O https://gitlab.com/kalilinux/packages/fierce/-/archive/kali/master/fierce-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;


/24|24) 
mkdir firewalk
clear 
cd firewalk/
curl -O https://gitlab.com/kalilinux/packages/firewalk/-/archive/kali/master/firewalk-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/25|25)
mkdir fragroute
clear
cd fragroute/
curl -O https://gitlab.com/kalilinux/packages/fragroute/-/archive/kali/master/fragroute-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;
     
/26|26)
mkdir fragrouter
clear
cd fragrouter/
curl -O https://gitlab.com/kalilinux/packages/fragrouter/-/archive/kali/master/fragrouter-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/27|27) 
mkdir ghost-Phisher
clear 
cd ghost-phishe/
curl -O https://github.com/savio-code/ghost-phisher.git 
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/28|28) 
mkdir golismero
clear
cd golismero/
git clone https://github.com/golismero/golismero.git
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/29|29)
mkdir goofile
clear
cd goofile/
curl -O https://gitlab.com/kalilinux/packages/goofile/-/archive/kali/master/goofile-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/30|30)
mkdir hping3
clear
cd hping3/
curl -O https://gitlab.com/kalilinux/packages/hping3/-/archive/kali/master/hping3-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/31|31) 
mkdir ident-user-enum
clear
cd ident-user-enum/
curl -O https://gitlab.com/kalilinux/packages/ident-user-enum/-/archive/kali/master/ident-user-enum-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/32|32)
mkdir inspy
clear
cd inspy/
curl -O https://gitlab.com/kalilinux/packages/inspy/-/archive/kali/master/inspy-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/33|33) 
mkdir InTrace
clear
cd InTrace/
curl -O https://gitlab.com/kalilinux/packages/intrace/-/archive/kali/master/intrace-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/34|34)
mkdir ismtp
clear
cd ismtp/
curl -O https://gitlab.com/kalilinux/packages/ismtp/-/archive/kali/master/ismtp-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/35|35)
mkdir lbd
clear
cd lbd/
curl -O https://gitlab.com/kalilinux/packages/lbd/-/archive/kali/master/lbd-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/36|36)
mkdir maltego-teeth
clear
cd maltego-teeth/
curl -O https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/37|37) 
mkdir masscan
clear
cd masscan/
curl -O https://gitlab.com/kalilinux/packages/masscan/-/archive/kali/master/masscan-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;
 
/38|38) 
mkdir Metagoofil
clear
cd Metagoofil/
curl -O https://gitlab.com/kalilinux/packages/metagoofil/-/archive/kali/master/metagoofil-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;
          
/39|39) Miranda
mkdir Metagoofil
clear
cd Miranda/
curl -O https://gitlab.com/kalilinux/packages/miranda/-/archive/kali/master/miranda-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/40|40) nbtscan-unixwiz
mkdir nbtscan-unixwiz
clear
cd nbtscan-unixwiz/
curl -O http://unixwiz.net/tools/nbtscan-1.0.31-sco-5.0.6.bin
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/41|41) Nikto
mkdir Nikto
clear
cd Nikto/
curl -O https://gitlab.com/kalilinux/packages/nikto/-/archive/kali/master/nikto-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/42|42) Nmap
mkdir Nmap
clear
cd Nmap/
curl -O https://gitlab.com/kalilinux/packages/nmap/-/archive/kali/master/nmap-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/43|43) ntop
mkdir ntop
clear
cd ntop/
curl -O https://gitlab.com/kalilinux/packages/ntop/-/archive/kali/master/ntop-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/44|44) OSRFramework
mkdir OSRFramework
clear
cd OSRFramework/
curl -O https://gitlab.com/kalilinux/packages/osrframework/-/archive/kali/master/osrframework-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/45|45) p0f
mkdir p0f
clear
cd p0f/
curl -O https://gitlab.com/kalilinux/packages/p0f/-/archive/kali/master/p0f-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/46|46) Parsero
mkdir Parsero
clear
cd Parsero/
curl -O https://github.com/behindthefirewalls/Parsero/archive/master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/47|47) Recon-ng 
mkdir Recon-ng
clear 
cd Recon-ng/
curl -O https://gitlab.com/kalilinux/packages/recon-ng/-/archive/kali/master/recon-ng-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/48|48) SET 
mkdir SET
clear
cd SET/
curl -O https://gitlab.com/kalilinux/packages/set/-/archive/kali/master/set-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/49|49) SMBMap 
mkdir SMBMap
clear
cd SMBMap/
curl -O https://gitlab.com/kalilinux/packages/smbmap/-/archive/kali/master/smbmap-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/50|50) smtp-user-enum  
mkdir smtp-user-enum
clear 
cd smtp-user-enum/
curl -O https://gitlab.com/kalilinux/packages/smtp-user-enum/-/archive/kali/master/smtp-user-enum-kali-master.zip
clear 
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/51|51) snmp-check 
mkdir snmp-check 
clear
cd snmp-check/
curl -O https://gitlab.com/kalilinux/packages/snmpcheck/-/archive/kali/master/snmpcheck-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/52|52) SPARTA
mkdir SPARTA
clear
cd SPARTA/
curl -O https://gitlab.com/kalilinux/packages/sparta/-/archive/kali/master/sparta-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/53|53) sslcaudit
mkdir sslcaudit
clear
cd sslcaudit/
curl -O https://gitlab.com/kalilinux/packages/sslcaudit/-/archive/kali/master/sslcaudit-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/54|54) SSLsplit
mkdir SSLsplit
clear
cd SSLsplit/
curl -O https://gitlab.com/kalilinux/packages/sslsplit/-/archive/kali/master/sslsplit-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/55|55) sslstrip
mkdir sslstrip
clear
cd sslstrip/
curl -O https://gitlab.com/kalilinux/packages/sslstrip/-/archive/kali/master/sslstrip-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/56|56) SSLyze
mkdir SSLyze
clear
cd SSLyze/
curl -O https://gitlab.com/kalilinux/packages/sslyze/-/archive/kali/master/sslyze-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/57|57) Sublist3r
mkdir Sublist3r
clear
cd Sublist3r/
curl -O https://gitlab.com/kalilinux/packages/sublist3r/-/archive/kali/master/sublist3r-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/58|58) THC-IPV6 
mkdir THC-IPV6
clear 
cd THC-IPV6/
curl -O https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/59|59) theHarvester 
mkdir theHarvester
clear
cd theHarvester/
curl -O https://gitlab.com/kalilinux/packages/theharvester/-/archive/kali/master/theharvester-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/60|60) TLSSLed 
mkdir TLSSLed
clear
cd TLSSLed/
curl -O https://gitlab.com/kalilinux/packages/tlssled/-/archive/kali/master/tlssled-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/61|61) twofi 
mkdir twofi
clear
cd twofi/
curl -O https://gitlab.com/kalilinux/packages/twofi/-/archive/kali/master/twofi-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/62|62) Unicornscan 
mkdir Unicornscan
clear
cd Unicornscan/
curl -O https://gitlab.com/kalilinux/packages/unicornscan/-/archive/kali/master/unicornscan-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/63|63) URLCrazy 
mkdir URLCrazy
clear
cd URLCrazy/
curl -O https://gitlab.com/kalilinux/packages/urlcrazy/-/archive/kali/master/urlcrazy-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/64|64) Wireshark 
mkdir Wireshark
clear
cd Wireshark/
curl -O https://gitlab.com/kalilinux/packages/wireshark/-/archive/kali/master/wireshark-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/65|65) WOL-E  
mkdir WOL-E
clear 
cd WOL-E/
curl -O https://gitlab.com/kalilinux/packages/wol-e/-/archive/kali/master/wol-e-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
;;

/66|66) Xplico  
mkdir Xplico
clear
cd Xplico/
curl -O https://gitlab.com/kalilinux/packages/xplico/-/archive/kali/master/xplico-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""|I|n|f|o|r|m|a|t|i|o|n| |G|a|t|h|e|r|i|n|g| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Information
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
clear 
mkdir BBQSQL
cd BBQSQL/
curl -O https://gitlab.com/kalilinux/packages/bbqsql/-/archive/kali/master/bbqsql-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/2|2) BED  
clear
mkdir BED
cd BED/
curl -O https://gitlab.com/kalilinux/packages/doona/-/archive/kali/master/doona-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/3|3) cisco-auditing-tool
clear   
mkdir cisco-auditing-tool 
cd cisco-auditing-tool/
curl -O https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/4|4) cisco-global-exploiter
clear  
mkdir cisco-global-exploiter  
cd cisco-global-exploiter/
curl -O https://gitlab.com/kalilinux/packages/cisco-global-exploiter/-/archive/kali/master/cisco-global-exploiter-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/5|5) cisco-ocs 
clear 
mkdir cisco-ocs   
cd cisco-ocs/
curl -O https://gitlab.com/kalilinux/packages/cisco-ocs/-/archive/kali/master/cisco-ocs-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   
 
/6|6) cisco-torch
clear 
mkdir cisco-torch    
cd cisco-torch/
curl -O https://gitlab.com/kalilinux/packages/cisco-torch/-/archive/kali/master/cisco-torch-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;  

/7|7) copy-router-config
clear 
mkdir copy-router-config    
cd copy-router-config/
curl -O https://gitlab.com/kalilinux/packages/copy-router-config/-/archive/kali/master/copy-router-config-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/8|8) Doona
clear
mkdir Doona 
cd Doona/
curl -O https://gitlab.com/kalilinux/packages/doona/-/archive/kali/master/doona-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/9|9) DotDotPwn
clear
mkdir DotDotPwn 
cd DotDotPwn/
curl -O https://gitlab.com/kalilinux/packages/dotdotpwn/-/archive/kali/master/dotdotpwn-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;           
 
/10|10) HexorBase
clear
mkdir HexorBase 
cd HexorBase/
curl -O https://gitlab.com/kalilinux/packages/hexorbase/-/archive/kali/master/hexorbase-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;           

/11|11) jSQL Injection 
clear
mkdir jSQL-Injection  
cd jSQL-Injection/
curl -O https://gitlab.com/kalilinux/packages/jsql/-/archive/kali/master/jsql-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;            
 
/12|12) Lynis
clear
mkdir Lynis
cd Lynis/
curl -O https://downloads.cisofy.com/lynis/lynis-3.0.0.tar.gz
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/13|13) Nmap
clear
mkdir Nmap
cd Nmap/
curl -O https://gitlab.com/kalilinux/packages/nmap/-/archive/kali/master/nmap-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/14|14) ohrwurm
clear
mkdir ohrwurm
cd ohrwurm/
curl -O https://gitlab.com/kalilinux/packages/ohrwurm/-/archive/kali/master/ohrwurm-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/15|15) openvas
clear
mkdir openvas
cd openvas/
curl -O https://gitlab.com/kalilinux/packages/openvas/-/archive/kali/master/openvas-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/16|16) Oscanner
clear
mkdir Oscanner
cd Oscanner/
curl -O https://gitlab.com/kalilinux/packages/oscanner/-/archive/kali/master/oscanner-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/17|17) Powerfuzzer
clear 
mkdir Powerfuzzer 
cd Powerfuzzer/
curl -O https://gitlab.com/kalilinux/packages/powerfuzzer/-/archive/kali/master/powerfuzzer-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/18|18) sfuzz 
clear
mkdir sfuzz 
cd sfuzz/
curl -O https://gitlab.com/kalilinux/packages/sfuzz/-/archive/kali/master/sfuzz-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/19|19) SidGuesser
clear 
mkdir SidGuesser 
cd SidGuesser/
curl -O https://gitlab.com/kalilinux/packages/sidguesser/-/archive/kali/master/sidguesser-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/20|20) SIPArmyKnife 
clear
mkdir SIPArmyKnife 
cd SIPArmyKnife/
curl -O https://gitlab.com/kalilinux/packages/siparmyknife/-/archive/kali/master/siparmyknife-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/21|21) sqlmap 
clear
mkdir sqlmap 
cd sqlmap/
curl -O https://gitlab.com/kalilinux/packages/sqlmap/-/archive/kali/master/sqlmap-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;   

/22|22) Sqlninja 
clear
mkdir Sqlninja 
cd Sqlninja/
curl -O https://gitlab.com/kalilinux/packages/sqlninja/-/archive/kali/master/sqlninja-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;    

/23|23) sqlsus 
clear
mkdir sqlsus 
cd sqlsus/
curl -O https://gitlab.com/kalilinux/packages/sqlsus/-/archive/kali/master/sqlsus-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;       

/24|24) THC-IPV6 
clear 
mkdir THC-IPV6  
cd THC-IPV6/
curl -O https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;       

/25|25) tnscmd10g  
clear
mkdir tnscmd10g  
cd tnscmd10g/
curl -O https://gitlab.com/kalilinux/packages/tnscmd10g/-/archive/kali/master/tnscmd10g-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;       

/26|26) unix-privesc-check
clear   
mkdir unix-privesc-check   
cd unix-privesc-check/
curl -O https://gitlab.com/kalilinux/packages/unix-privesc-check/-/archive/kali/master/unix-privesc-check-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Vulnerability
;;

/27|27) Yersinia  
clear
mkdir Yersinia   
cd Yersinia/
curl -O https://gitlab.com/kalilinux/packages/yersinia/-/archive/kali/master/yersinia-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |V|u|l|n|e|r|a|b|i|l|i|t|y| |A|n|a|l|y|s|i|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"&&sleep 2 &&Vulnerability
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
mkdir Airbase-ng
clear
cd Airbase-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/2|2) Aircrack-ng 
mkdir Aircrack-ng
clear
cd Aircrack-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/3|3) Airdecap-ng
mkdir Airdecap-ng and Airdecloak-ng
clear
cd Airdecap-ng and Airdecloak-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/4|4) Aireplay-ng
mkdir Aireplay-ng
clear
cd Aireplay-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/5|5) Airgraph-ng  
mkdir Airgraph-ng
clear
cd Airgraph-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/6|6) Airmon-ng 
mkdir Airmon-ng 
clear
cd Airmon-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/7|7) Airodump-ng
mkdir Airodump-ng
clear
cd Airodump-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/8|8) Airolib-ng 
mkdir Airolib-ng  
clear
cd Airolib-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd .. 
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/9|9) Airserv-ng
mkdir Airserv-ng 
clear
cd Airserv-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/10|10) Airtun-ng
mkdir Airtun-ng
clear
cd Airtun-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/11|11) Asleap
mkdir Asleap
clear
cd Asleap/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/12|12) Besside-ng
mkdir Besside-ng
clear
cd Besside-ng/
curl -O https://gitlab.com//kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/13|13) Bluelog
mkdir Bluelog
clear
cd Bluelog/
curl -O https://gitlab.com/kalilinux/packages/bluelog/-/archive/kali/master/bluelog-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/14|14) BlueMaho
mkdir BlueMaho
clear
cd BlueMaho/
curl -O https://gitlab.com/kalilinux/packages/bluelog/-/archive/kali/master/bluelog-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/14|14) Bluepot
mkdir Bluepot
clear
cd Bluepot/
curl -O https://gitlab.com/kalilinux/packages/bluepot/-/archive/kali/master/bluepot-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/15|15) BlueRanger
mkdir BlueRanger
clear
cd BlueRanger/
curl -O https://gitlab.com/kalilinux/packages/blueranger/-/archive/kali/master/blueranger-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/16|16) Bluesnarfer
mkdir Bluesnarfer
clear
cd Bluesnarfer/
curl -O https://gitlab.com/kalilinux/packages/bluesnarfer/-/archive/kali/master/bluesnarfer-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/17|17) Bully
mkdir Bully
clear
cd Bully/
curl -O https://gitlab.com/kalilinux/packages/bully/-/archive/kali/master/bully-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/18|18) coWPAtty
mkdir coWPAtty
clear
cd coWPAtty/
curl -O https://gitlab.com/kalilinux/packages/cowpatty/-/archive/kali/master/cowpatty-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/19|19) Easside-ng 
mkdir Easside-ng  
clear
cd Easside-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/20|20) Fern Wifi Cracker  
mkdir FernWifiCracker  
clear
cd FernWifiCracker/
curl -O https://gitlab.com/kalilinux/packages/fern-wifi-cracker/-/archive/kali/master/fern-wifi-cracker-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/21|21) freeradius-wpe   
mkdir freeradius-wpe  
clear
cd freeradius-wpe/
curl -O https://gitlab.com/kalilinux/packages/freeradius-wpe/-/archive/kali/master/freeradius-wpe-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/22|22) GhostPhisher    
mkdir GhostPhisher  
clear
cd GhostPhisher/
curl -O https://gitlab.com/kalilinux/packages/ghost-phisher/-/archive/kali/master/ghost-phisher-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/22|22) GISKismet    
mkdir GISKismet  
clear
cd GISKismet/
curl -O https://gitlab.com/kalilinux/packages/giskismet/-/archive/kali/master/giskismet-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/23|23) Gqrx    
mkdir Gqrx  
clear
cd Gqrx/
curl -O https://gitlab.com/kalilinux/packages/gqrx/-/archive/kali/master/gqrx-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/24|24) grscan     
mkdir grscan   
clear
cd grscan/
curl -O https://gitlab.com/kalilinux/packages/gr-scan/-/archive/kali/master/gr-scan-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/25|25) grscan     
mkdir grscan   
clear
cd grscan/
curl -O https://gitlab.com/kalilinux/packages/gr-scan/-/archive/kali/master/gr-scan-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/26|26) hostapd-wpe     
mkdir hostapdwpe   
clear
cd hostapdwpe/
curl -O https://gitlab.com/kalilinux/packages/gr-scan/-/archive/kali/master/gr-scan-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/27|27) ivstools     
mkdir ivstools   
clear
cd ivstools/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/28|28) kalibrate-rtl      
mkdir kalibrate-rtl    
clear
cd kalibrate-rtl/
curl -O https://gitlab.com/kalilinux/packages/kalibrate-rtl/-/archive/kali/master/kalibrate-rtl-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/29|29) KillerBee 
mkdir KillerBee    
clear
cd KillerBee/
curl -O https://gitlab.com/kalilinux/packages/killerbee/-/archive/kali/master/killerbee-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/30|30) Kismet 
mkdir Kismet    
clear
cd Kismet/
curl -O https://gitlab.com/kalilinux/packages/kismet/-/archive/kali/master/kismet-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;


/31|31) makeivs-ng 
mkdir makeivs-ng    
clear
cd makeivs-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/32|32) mdk3
mkdir mdk3  
clear
cd mdk3/
curl -O https://gitlab.com/kalilinux/packages/mdk3/-/archive/kali/master/mdk3-kali-master.tar.gz
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/33|33) mfcuk
mkdir mfcuk  
clear
cd mfcuk/
curl -O https://gitlab.com/kalilinux/packages/mfcuk/-/archive/kali/master/mfcuk-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/34|34) mfoc
mkdir mfoc  
clear
cd mfoc/
curl -O https://gitlab.com/kalilinux/packages/mfoc/-/archive/kali/master/mfoc-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/35|35) mfterm
mkdir mfterm  
clear
cd mfterm/
curl -O https://gitlab.com/kalilinux/packages/mfterm/-/archive/kali/master/mfterm-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/36|36) Multimon-ng
mkdir Multimon-ng 
clear
cd Multimon-ng/
curl -O https://gitlab.com/kalilinux/packages/multimon-ng/-/archive/kali/master/multimon-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/37|37) Packetforge-ng
mkdir Packetforge-ng
clear
cd Packetforge-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/38|38) PixieWPS
mkdir PixieWPS
clear
cd PixieWPS/
curl -O https://gitlab.com/kalilinux/packages/pixiewps/-/archive/kali/master/pixiewps-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/39|39) pyrit
mkdir pyrit
clear
cd pyrit/
curl -O https://gitlab.com/kalilinux/packages/pyrit/-/archive/kali/master/pyrit-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/40|40) Reaver
mkdir Reaver
clear
cd Reaver/
curl -O https://gitlab.com/kalilinux/packages/reaver/-/archive/kali/master/reaver-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/41|41) redfang
mkdir redfang
clear
cd redfang/
curl -O https://gitlab.com/kalilinux/packages/redfang/-/archive/kali/master/redfang-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/42|42) RTLSDR Scanner
mkdir RTLSDRScanner
clear
cd RTLSDRScanner/
curl -O https://gitlab.com/kalilinux/packages/rtlsdr-scanner/-/archive/kali/master/rtlsdr-scanner-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/43|43) Spooftooph
mkdir Spooftooph
clear
cd Spooftooph/
curl -O https://gitlab.com/kalilinux/packages/spooftooph/-/archive/kali/master/spooftooph-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/44|44) Tkiptun-ng 
mkdir Tkiptun-ng 
clear
cd Tkiptun-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/45|45) Wesside-ng 
mkdir Wesside-ng 
clear
cd Wesside-ng/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/46|46) Wifi Honey
mkdir WifiHoney
clear
cd WifiHoney/
curl -O https://gitlab.com/kalilinux/packages/wifi-honey/-/archive/kali/master/wifi-honey-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/47|47) wifiphisher
mkdir wifiphisher
clear
cd wifiphisher/
curl -O https://gitlab.com/kalilinux/packages/wifiphisher/-/archive/kali/master/wifiphisher-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/48|48) Wifitap
mkdir Wifitap
clear
cd Wifitap/
curl -O https://gitlab.com/kalilinux/packages/wifitap/-/archive/kali/master/wifitap-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/49|49) Wifite
mkdir Wifite
clear
cd Wifite/
curl -O https://gitlab.com/kalilinux/packages/wifite/-/archive/kali/master/wifite-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
;;

/50|50) wpaclean
mkdir wpaclean
clear
cd wpaclean/
curl -O https://gitlab.com/kalilinux/packages/aircrack-ng/-/archive/kali/master/aircrack-ng-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|i|r|e|l|e|s|s| |A|t|t|a|c|k|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Wireless
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
mkdir apache-users
clear
cd apache-users/
curl -O https://gitlab.com/kalilinux/packages/apache-users/-/archive/kali/master/apache-users-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/2|2) Arachni
mkdir Arachni
clear
cd Arachni/
curl -O https://gitlab.com/kalilinux/packages/arachni/-/archive/kali/master/arachni-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/3|3) BBQSQL
clear
mkdir BBQSQL
cd BBQSQL/
curl -O https://gitlab.com/kalilinux/packages/bbqsql/-/archive/kali/master/bbqsql-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/4|4) BlindElephant
clear
mkdir BlindElephant
cd BlindElephant/
curl -O https://gitlab.com/kalilinux/packages/blindelephant/-/archive/kali/master/blindelephant-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/5|5) Burp Suite
mkdir BurpSuite
clear
cd BurpSuite/
curl -O https://gitlab.com/kalilinux/packages/burpsuite/-/archive/kali/master/burpsuite-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/6|6) CutyCapt
clear
mkdir CutyCapt
cd CutyCapt/
curl -O https://gitlab.com/kalilinux/packages/cutycapt/-/archive/kali/master/cutycapt-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/7|7) DAVTest
clear
mkdir DAVTest
cd DAVTest/
curl -O https://gitlab.com/kalilinux/packages/davtest/-/archive/kali/master/davtest-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/8|8) deblaze
clear
mkdir deblaze
cd deblaze/
curl -O https://gitlab.com/kalilinux/packages/deblaze/-/archive/kali/master/deblaze-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/9|9) DIRB
clear
mkdir DIRB
cd DIRB/
curl -O https://gitlab.com/kalilinux/packages/dirb/-/archive/kali/master/dirb-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/10|10) DirBuster
clear
mkdir DirBuster
cd DirBuster/
curl -O https://gitlab.com/kalilinux/packages/dirbuster/-/archive/kali/master/dirbuster-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/11|11) fimap
clear
mkdir fimap
cd fimap/
curl -O https://gitlab.com/kalilinux/packages/fimap/-/archive/kali/master/fimap-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Informa
;;

/12|12) FunkLoad
clear
mkdir FunkLoad
cd FunkLoad/
curl -O https://gitlab.com/kalilinux/packages/funkload/-/archive/kali/master/funkload-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/13|13) Gobuster
clear
mkdir Gobuster
cd Gobuster/
curl -O https://github.com/OJ/gobuster.git
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/14|14) Grabber
clear
mkdir Grabber
cd Grabber/
curl -O https://gitlab.com/kalilinux/packages/grabber/-/archive/kali/master/grabber-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/15|15) hURL
clear
mkdir hURL
cd hURL/
curl -O https://gitlab.com/kalilinux/packages/hurl/-/archive/kali/master/hurl-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/16|16) jboss-autopwn
clear
mkdir jboss-autopwn
cd jboss-autopwn/
curl -O https://gitlab.com/kalilinux/packages/joomscan/-/archive/kali/master/joomscan-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/17|17) joomscan
clear
mkdir joomscan
cd joomscan/
curl -O https://gitlab.com/kalilinux/packages/joomscan/-/archive/kali/master/joomscan-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/18|18) jSQL Injection
clear
mkdir jSQLInjection
cd jSQLInjection/
curl -O https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/19|19) Maltego Teeth
clear
mkdir MaltegoTeeth
cd MaltegoTeeth/
curl -O https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/20|20) Nikto
clear
mkdir Nikto
cd Nikto/
curl -O https://gitlab.com/kalilinux/packages/nikto/-/archive/kali/master/nikto-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/21|21) PadBuster
clear
mkdir PadBuster
cd PadBuster/
curl -O https://gitlab.com/kalilinux/packages/padbuster/-/archive/kali/master/padbuster-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/22|22) Paros
clear
mkdir Paros
cd Paros/
curl -O https://gitlab.com/kalilinux/packages/paros/-/archive/kali/master/paros-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/23|23) Parsero
clear
mkdir Parsero
cd Parsero/
curl -O https://github.com/behindthefirewalls/Parsero/archive/master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/24|24) plecost
clear
mkdir plecost
cd plecost/
curl -O https://gitlab.com/kalilinux/packages/plecost/-/archive/kali/master/plecost-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/25|25) Powerfuzzer
clear
mkdir Powerfuzzer 
cd Powerfuzzer/
curl -O https://gitlab.com/kalilinux/packages/powerfuzzer/-/archive/kali/master/powerfuzzer-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/26|26) ProxyStrike
clear
mkdir ProxyStrike 
cd ProxyStrike/
curl -O https://gitlab.com/kalilinux/packages/proxystrike/-/archive/kali/master/proxystrike-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/27|27) Recon-ng 
clear
mkdir Recon-ng  
cd Recon-ng/
curl -O https://gitlab.com/kalilinux/packages/recon-ng/-/archive/kali/master/recon-ng-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/28|28) Skipfish
clear
mkdir Skipfish
cd Skipfish/
curl -O https://gitlab.com/kalilinux/packages/skipfish/-/archive/kali/master/skipfish-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/29|29) sqlmap
clear
mkdir sqlmap
cd sqlmap/
curl -O https://gitlab.com/kalilinux/packages/sqlmap/-/archive/kali/master/sqlmap-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/30|30) Sqlninja
clear
mkdir Sqlninja
cd Sqlninja/
curl -O https://gitlab.com/kalilinux/packages/sqlninja/-/archive/kali/master/sqlninja-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/31|31) sqlsus
clear
mkdir sqlsus
cd sqlsus/
curl -O https://gitlab.com/kalilinux/packages/sqlsus/-/archive/kali/master/sqlsus-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/32|32) ua-tester 
clear
mkdir ua-tester 
cd ua-tester/
curl -O https://gitlab.com/kalilinux/packages/ua-tester/-/archive/kali/master/ua-tester-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/33|33) Uniscan
clear
mkdir Uniscan
cd Uniscan/
curl -O https://gitlab.com/kalilinux/packages/uniscan/-/archive/kali/master/uniscan-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/34|34) w3af
clear
mkdir w3af
cd w3af/
curl -O https://gitlab.com/kalilinux/packages/w3af/-/archive/kali/master/w3af-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/35|35) WebScarab
clear
mkdir WebScarab
cd WebScarab/
curl -O https://gitlab.com/kalilinux/packages/webscarab/-/archive/kali/master/webscarab-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/36|36) Webshag
clear
mkdir Webshag
cd Webshag/
curl -O https://gitlab.com/kalilinux/packages/webshag/-/archive/kali/master/webshag-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/37|37) WebSlayer 
clear
mkdir WebSlayer
cd WebSlayer/
curl -O https://gitlab.com/kalilinux/packages/webslayer/-/archive/kali/master/webslayer-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/38|38) WebSploit
clear
mkdir WebSploit 
cd WebSploit/
curl -O https://gitlab.com/kalilinux/packages/websploit/-/archive/kali/master/websploit-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/39|39) Wfuzz
clear
mkdir Wfuzz
cd Wfuzz/
curl -O https://gitlab.com/kalilinux/packages/wfuzz/-/archive/kali/master/wfuzz-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/40|40) WhatWeb 
clear
mkdir WhatWeb
cd WhatWeb/
curl -O https://github.com/urbanadventurer/WhatWeb/archive/v0.5.4.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/41|41) WPScan 
clear
mkdir WPScan
cd WPScan/
curl -O https://gitlab.com/kalilinux/packages/wpscan/-/archive/kali/master/wpscan-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/42|42) XSSer
clear
mkdir XSSer
cd XSSer/
curl -O https://gitlab.com/kalilinux/packages/xsser/-/archive/kali/master/xsser-kali-master.zip
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
;;

/43|43) zaproxy
mkdir zaproxy
cd zaproxy/
curl -O https://gitlab.com/kalilinux/packages/zaproxy/-/archive/kali/master/zaproxy-kali-master.zip
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red"" |W|e|b| |A|p|p|l|i|c|a|t|i|o|n|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Informa
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
mkdir Armitage
clear
cd Armitage/
curl -O https://gitlab.com/kalilinux/packages/armitage/-/archive/kali/master/armitage-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/2|2) Backdoor-Factory
mkdir BackdoorFactory
clear
cd BackdoorFactory/
curl -O https://gitlab.com/kalilinux/packages/backdoor-factory/-/archive/kali/master/backdoor-factory-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/3|3) BeEF
mkdir BeEF
clear
cd BeEF/
curl -O https://gitlab.com/kalilinux/packages/beef-xss/-/archive/kali/master/beef-xss-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/4|4) cisco-auditing-tool
mkdir cisco-auditing-tool
clear
cd cisco-auditing-tool/
curl -O https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/5|5) cisco-global-exploiter
mkdir cisco-global-exploiter
clear
cd cisco-global-exploiter/
curl -O https://gitlab.com/kalilinux/packages/cisco-global-exploiter/-/archive/kali/master/cisco-global-exploiter-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/6|6) cisco-ocs
mkdir cisco-ocs
clear
cd cisco-ocs/
curl -O https://gitlab.com/kalilinux/packages/cisco-ocs/-/archive/kali/master/cisco-ocs-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/7|7) cisco-torch
mkdir cisco-torch 
clear
cd cisco-torch/
curl -O https://gitlab.com/kalilinux/packages/cisco-torch/-/archive/kali/master/cisco-torch-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/8|8) commix
mkdir commix
clear
cd commix/
curl -O https://github.com/commixproject/commix/archive/master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/9|9) crackle
mkdir crackle
clear
cd crackle/
curl -O https://gitlab.com/kalilinux/packages/crackle/-/archive/kali/master/crackle-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/10|10) exploitdb
mkdir exploitdb
clear
cd exploitdb/
curl -O https://gitlab.com/kalilinux/packages/exploitdb/-/archive/kali/master/exploitdb-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/11|11) jboss-autopwn 
mkdir jboss-autopwn
clear
cd jboss-autopwn/
curl -O https://gitlab.com/kalilinux/packages/jboss-autopwn/-/archive/kali/master/jboss-autopwn-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/12|12) Linux-Exploit-Suggester 
mkdir LinuxExploitSuggester 
clear
cd LinuxExploitSuggester/
curl -O https://gitlab.com/kalilinux/packages/linux-exploit-suggester/-/archive/kali/master/linux-exploit-suggester-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/13|13) Maltego-Teeth
mkdir Maltego-Teeth
clear
cd Maltego-Teeth/
curl -O https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/14|14) metasploit-framework
mkdir metasploit-framework
clear
cd metasploit-framework/
curl -O https://gitlab.com/kalilinux/packages/metasploit-framework/-/archive/kali/master/metasploit-framework-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/15|15) MSFPC
mkdir MSFPC
clear
cd MSFPC/
curl -O https://gitlab.com/kalilinux/packages/msfpc/-/archive/kali/master/msfpc-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/16|16) routersploit
mkdir routersploit
clear
cd routersploit/
curl -O https://gitlab.com/kalilinux/packages/routersploit/-/archive/kali/master/routersploit-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/17|17) SET
mkdir SET
clear
cd SET/
curl -O https://gitlab.com/kalilinux/packages/set/-/archive/kali/master/set-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/18|18) ShellNoob
mkdir ShellNoob
clear
cd ShellNoob/
curl -O https://gitlab.com/kalilinux/packages/shellnoob/-/archive/kali/master/shellnoob-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/19|19) sqlmap
mkdir sqlmap
clear
cd sqlmap/
curl -O https://gitlab.com/kalilinux/packages/sqlmap/-/archive/kali/master/sqlmap-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/20|20) THC-IPV6 
mkdir THC-IPV6 
clear
cd THC-IPV6/
curl -O https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
;;

/21|21) Yersinia
mkdir Yersinia
clear
cd Yersinia/
curl -O https://gitlab.com/kalilinux/packages/yersinia/-/archive/kali/master/yersinia-kali-master.zip
clear
cd ..
echo -e "$red""                                            "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e "$red""  |E|x|p|l|o|i|t|a|t|i|o|n| |T|o|o|l|s| "
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy"  &&sleep 2 &&Exploração
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
clear 
mkdir DHCPig
cd DHCPig/
curl -O https://gitlab.com/kalilinux/packages/dhcpig/-/archive/kali/master/dhcpig-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/2|2) FunkLoad 
clear 
mkdir FunkLoad
cd FunkLoad/
curl -O https://gitlab.com/kalilinux/packages/funkload/-/archive/kali/master/funkload-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/3|3) iaxflood 
clear 
mkdir iaxflood
cd iaxflood/
curl -O https://gitlab.com/kalilinux/packages/iaxflood/-/archive/kali/master/iaxflood-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/4|4) Inundator  
clear 
mkdir Inundator
cd Inundator/
curl -O https://gitlab.com/kalilinux/packages/inundator/-/archive/kali/master/inundator-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/5|5) inviteflood
clear 
mkdir inviteflood
cd inviteflood/
curl -O https://gitlab.com/kalilinux/packages/inviteflood/-/archive/kali/master/inviteflood-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/6|6) ipv6-toolkit 
clear 
mkdir ipv6-toolkit 
cd  ipv6-toolkit/
curl -O https://gitlab.com/kalilinux/packages/ipv6-toolkit/-/archive/kali/master/ipv6-toolkit-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/7|7) mdk3 
clear 
mkdir mdk3
cd  mdk3/
curl -O https://gitlab.com/kalilinux/packages/mdk3/-/archive/kali/master/mdk3-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/8|8) Reaver 
clear 
mkdir Reaver
cd  Reaver/
curl -O https://gitlab.com/kalilinux/packages/reaver/-/archive/kali/master/reaver-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/9|9) rtpflood
clear 
mkdir rtpflood
cd  rtpflood/
curl -O https://gitlab.com/kalilinux/packages/rtpflood/-/archive/kali/master/rtpflood-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/10|10) SlowHTTPTest
clear 
mkdir SlowHTTPTest
cd  SlowHTTPTest/
curl -O https://gitlab.com/kalilinux/packages/slowhttptest/-/archive/kali/master/slowhttptest-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/11|11) t50
clear 
mkdir t50
cd  t50/
curl -O https://gitlab.com/kalilinux/packages/t50/-/archive/kali/master/t50-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/12|12) Termineter
clear 
mkdir Termineter
cd  Termineter/
curl -O https://gitlab.com/kalilinux/packages/termineter/-/archive/kali/master/termineter-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/13|13) THC-IPV6
clear 
mkdir THC-IPV6
cd  THC-IPV6/
curl -O https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
;;

/14|14) THC-SSL-DOS
clear 
mkdir THC-SSL-DOS
cd  THC-SSL-DOS/
curl -O https://gitlab.com/kalilinux/packages/thc-ssl-dos/-/archive/kali/master/thc-ssl-dos-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red"" |S|t|r|e|s|s| |T|e|s|t|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Stress
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
clear 
mkdir Binwalk
cd Binwalk/
curl -O https://gitlab.com/kalilinux/packages/binwalk/-/archive/kali/master/binwalk-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/2|2) bulk-extractor 
clear 
mkdir bulk-extractor
cd bulk-extractor/
curl -O https://gitlab.com/kalilinux/packages/bulk-extractor/-/archive/kali/master/bulk-extractor-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/3|3) Capstone
clear 
mkdir Capstone
cd Capstone/
curl -O https://github.com/aquynh/capstone/archive/master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/4|4) chntpw
clear 
mkdir chntpw
cd chntpw/
curl -O https://gitlab.com/kalilinux/packages/chntpw/-/archive/kali/master/chntpw-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/5|5) Cuckoo
clear 
mkdir Cuckoo
cd Cuckoo/
curl -O https://gitlab.com/kalilinux/packages/cuckoo/-/archive/kali/master/cuckoo-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/6|6) dc3dd
clear 
mkdir dc3dd
cd dc3dd/
curl -O https://gitlab.com/kalilinux/packages/dc3dd/-/archive/kali/master/dc3dd-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/7|7) ddrescue 
clear 
mkdir ddrescue
cd ddrescue/
curl -O https://gitlab.com/kalilinux/packages/ddrescue/-/archive/kali/master/ddrescue-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/8|8) DFF
clear 
mkdir DFF
cd DFF/
curl -O https://gitlab.com/kalilinux/packages/dff/-/archive/kali/master/dff-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/9|9) diStorm3
clear 
mkdir diStorm3
cd diStorm3/
curl -O https://gitlab.com/kalilinux/packages/distorm3/-/archive/kali/master/distorm3-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/10|10) Dumpzilla
clear 
mkdir Dumpzilla
cd Dumpzilla/
curl -O https://gitlab.com/kalilinux/packages/dumpzilla/-/archive/kali/master/dumpzilla-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/11|11) extundelete
clear 
mkdir extundelete
cd extundelete/
curl -O https://gitlab.com/kalilinux/packages/extundelete/-/archive/kali/master/extundelete-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/12|12) Foremost
clear 
mkdir Foremost
cd Foremost/
curl -O https://gitlab.com/kalilinux/packages/foremost/-/archive/kali/master/foremost-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/13|13) Galleta
clear 
mkdir Galleta
cd Galleta/
curl -O https://gitlab.com/kalilinux/packages/galleta/-/archive/kali/master/galleta-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/14|14) Guymager
clear 
mkdir Guymager
cd Guymager/
curl -O https://gitlab.com/kalilinux/packages/guymager/-/archive/kali/master/guymager-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/15|15) iPhoneBackupAnalyzer
clear 
mkdir iPhoneBackupAnalyzer
cd iPhoneBackupAnalyzer/
curl -O https://gitlab.com/kalilinux/packages/iphone-backup-analyzer/-/archive/kali/master/iphone-backup-analyzer-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/16|16) p0f
clear 
mkdir p0f
cd p0f/
curl -O https://gitlab.com/kalilinux/packages/p0f/-/archive/kali/master/p0f-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/17|17) pdf-parser
clear 
mkdir pdf-parser
cd pdf-parser/
curl -O https://gitlab.com/kalilinux/packages/pdf-parser/-/archive/kali/master/pdf-parser-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/18|18) pdfid
clear 
mkdir pdfid
cd pdfid/
curl -O https://gitlab.com/kalilinux/packages/pdfid/-/archive/kali/master/pdfid-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/19|19) pdgmail
clear 
mkdir pdgmail
cd pdgmail/
curl -O https://gitlab.com/kalilinux/packages/pdfid/-/archive/kali/master/pdfid-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/20|20) peepdf
clear 
mkdir peepdf
cd peepdf/
curl -O https://gitlab.com/kalilinux/packages/peepdf/-/archive/kali/master/peepdf-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/21|21) RegRipper
clear 
mkdir RegRipper
cd RegRipper/
curl -O https://gitlab.com/kalilinux/packages/regripper/-/archive/kali/master/regripper-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/22|22) Volatility
clear 
mkdir Volatility
cd Volatility/
curl -O https://gitlab.com/kalilinux/packages/volatility/-/archive/kali/master/volatility-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
;;

/23|23) Xplico
clear 
mkdir Xplico
cd Xplico/
curl -O https://gitlab.com/kalilinux/packages/xplico/-/archive/kali/master/xplico-kali-master.zip
clear
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |F|o|r|e|n|s|i|c|s| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Forensics
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
clear 
mkdir bettercap
cd bettercap/
curl -O https://gitlab.com/kalilinux/packages/bettercap/-/archive/kali/master/bettercap-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/2|2) BurpSuite
clear 
mkdir BurpSuite
cd BurpSuite/
curl -O https://gitlab.com/kalilinux/packages/burpsuite/-/archive/kali/master/burpsuite-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/3|3) DNSChef
clear 
mkdir DNSChef
cd DNSChef/
curl -O https://gitlab.com/kalilinux/packages/dnschef/-/archive/kali/master/dnschef-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/4|4) fiked
clear 
mkdir fiked
cd fiked/
curl -O https://gitlab.com/kalilinux/packages/fiked/-/archive/kali/master/fiked-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/5|5) hamster-sidejack
clear 
mkdir hamster-sidejack
cd hamster-sidejack/
curl -O https://gitlab.com/kalilinux/packages/hamster-sidejack/-/archive/kali/master/hamster-sidejack-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/6|6) HexInject
clear 
mkdir HexInject
cd HexInject/
curl -O https://gitlab.com/kalilinux/packages/hexinject/-/archive/kali/master/hexinject-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/7|7) iaxflood
clear 
mkdir iaxflood
cd iaxflood/
curl -O https://gitlab.com/kalilinux/packages/iaxflood/-/archive/kali/master/iaxflood-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/8|8) inviteflood
clear 
mkdir inviteflood
cd inviteflood/
curl -O https://gitlab.com/kalilinux/packages/inviteflood/-/archive/kali/master/inviteflood-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/9|9) iSMTP
clear 
mkdir iSMTP
cd iSMTP/
curl -O https://gitlab.com/kalilinux/packages/ismtp/-/archive/kali/master/ismtp-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/10|10) isr-evilgrade
clear 
mkdir isr-evilgrade 
cd isr-evilgrade/
curl -O https://gitlab.com/kalilinux/packages/isr-evilgrade/-/archive/kali/master/isr-evilgrade-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/11|11) mitmproxy
clear 
mkdir mitmproxy 
cd mitmproxy/
curl -O https://gitlab.com/kalilinux/packages/mitmproxy/-/archive/kali/master/mitmproxy-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/12|12) ohrwurm
clear 
mkdir ohrwurm 
cd ohrwurm/
curl -O https://gitlab.com/kalilinux/packages/ohrwurm/-/archive/kali/master/ohrwurm-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/13|13) protos-sip
clear 
mkdir protos-sip 
cd protos-sip/
curl -O https://gitlab.com/kalilinux/packages/protos-sip/-/archive/kali/master/protos-sip-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/14|14) rebind
clear 
mkdir rebind
cd rebind/
curl -O https://gitlab.com/kalilinux/packages/rebind/-/archive/kali/master/rebind-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/15|15) responder
clear 
mkdir responder
cd responder/
curl -O https://gitlab.com/kalilinux/packages/responder/-/archive/kali/master/responder-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/16|16) rtpbreak
clear 
mkdir rtpbreak
cd rtpbreak/
curl -O https://gitlab.com/kalilinux/packages/rtpbreak/-/archive/kali/master/rtpbreak-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/17|17) rtpinsertsound
clear 
mkdir rtpinsertsound
cd rtpinsertsound/
curl -O https://gitlab.com/kalilinux/packages/rtpinsertsound/-/archive/kali/master/rtpinsertsound-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/18|18) rtpmixsound
clear 
mkdir rtpmixsound
cd rtpmixsound/
curl -O https://gitlab.com/kalilinux/packages/rtpmixsound/-/archive/kali/master/rtpmixsound-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/19|19) sctpscan
clear 
mkdir sctpscan
cd sctpscan/
curl -O https://gitlab.com/kalilinux/packages/sctpscan/-/archive/kali/master/sctpscan-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/20|20) SIPArmyKnife
clear 
mkdir SIPArmyKnife
cd SIPArmyKnife/
curl -O https://gitlab.com/kalilinux/packages/siparmyknife/-/archive/kali/master/siparmyknife-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/21|21) SIPp
clear 
mkdir SIPp
cd SIPp/
curl -O https://gitlab.com/kalilinux/packages/sipp/-/archive/kali/master/sipp-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/22|22) SIPVicious
clear 
mkdir SIPVicious
cd SIPVicious/
curl -O https://gitlab.com/kalilinux/packages/sipvicious/-/archive/kali/master/sipvicious-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/23|23) SniffJoke
clear 
mkdir SniffJoke
cd SniffJoke/
curl -O https://gitlab.com/kalilinux/packages/sniffjoke/-/archive/kali/master/sniffjoke-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/24|24) SSLsplit
clear 
mkdir SSLsplit
cd SSLsplit/
curl -O https://gitlab.com/kalilinux/packages/sslsplit/-/archive/kali/master/sslsplit-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/25|25) sslstrip
clear 
mkdir sslstrip
cd sslstrip/
curl -O https://gitlab.com/kalilinux/packages/sslstrip/-/archive/kali/master/sslstrip-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/26|26) THC-IPV6
clear 
mkdir THC-IPV6
cd THC-IPV6/
curl -O https://gitlab.com/kalilinux/packages/thc-ipv6/-/archive/kali/master/thc-ipv6-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/27|27) VoIPHopper
clear 
mkdir VoIPHopper
cd VoIPHopper/
curl -O https://gitlab.com/kalilinux/packages/voiphopper/-/archive/kali/master/voiphopper-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/28|28) WebScarab
clear 
mkdir WebScarab
cd WebScarab/
curl -O https://gitlab.com/kalilinux/packages/webscarab/-/archive/kali/master/webscarab-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/29|29) WifiHoney
clear 
mkdir WifiHoney
cd WifiHoney/
curl -O https://gitlab.com/kalilinux/packages/wifi-honey/-/archive/kali/master/wifi-honey-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/30|30) Wireshark
clear 
mkdir Wireshark
cd Wireshark/
curl -O https://gitlab.com/kalilinux/packages/wireshark/-/archive/kali/master/wireshark-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/31|31) xspy
clear 
mkdir xspy
cd xspy/
curl -O https://gitlab.com/kalilinux/packages/xspy/-/archive/kali/master/xspy-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/32|32) Yersinia
clear 
mkdir Yersinia
cd Yersinia/
curl -O https://gitlab.com/kalilinux/packages/yersinia/-/archive/kali/master/yersinia-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
;;

/33|33) zaproxy
clear 
mkdir zaproxy
cd zaproxy/
curl -O https://gitlab.com/kalilinux/packages/zaproxy/-/archive/kali/master/zaproxy-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""  |S|n|i|f|f|i|n|g| |&| |S|p|o|o|f|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Sniffing
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
clear 
mkdir BruteSpray
cd BruteSpray/
curl -O https://github.com/x90skysn3k/brutespray/archive/master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/2|2) BurpSuite 
clear 
mkdir BurpSuite
cd BurpSuite/
curl -O https://gitlab.com/kalilinux/packages/burpsuite/-/archive/kali/master/burpsuite-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/3|3) CeWL 
clear 
mkdir CeWL
cd CeWL/
curl -O https://gitlab.com/kalilinux/packages/cewl/-/archive/kali/master/cewl-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/4|4) chntpw 
clear 
mkdir chntpw
cd chntpw/
curl -O https://gitlab.com/kalilinux/packages/chntpw/-/archive/kali/master/chntpw-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/5|5) cisco-auditing-tool 
clear 
mkdir cisco-auditing-tool
cd cisco-auditing-tool/
curl -O https://gitlab.com/kalilinux/packages/cisco-auditing-tool/-/archive/kali/master/cisco-auditing-tool-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/6|6) CmosPwd 
clear 
mkdir CmosPwd
cd CmosPwd/
curl -O https://gitlab.com/kalilinux/packages/cmospwd/-/archive/kali/master/cmospwd-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/7|7) creddump 
clear 
mkdir creddump
cd creddump/
curl -O https://gitlab.com/kalilinux/packages/creddump/-/archive/kali/master/creddump-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/8|8) crowbar 
clear 
mkdir crowbar
cd crowbar/
curl -O https://gitlab.com/kalilinux/packages/crowbar/-/archive/kali/master/crowbar-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/9|9) crunch 
clear 
mkdir crunch
cd crunch/
curl -O https://gitlab.com/kalilinux/packages/crunch/-/archive/kali/master/crunch-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/10|10) findmyhash 
clear 
mkdir findmyhash
cd findmyhash/
curl -O https://gitlab.com/kalilinux/packages/findmyhash/-/archive/kali/master/findmyhash-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/11|11) gpp-decrypt 
clear 
mkdir gpp-decrypt
cd gpp-decrypt/
curl -O https://gitlab.com/kalilinux/packages/gpp-decrypt/-/archive/kali/master/gpp-decrypt-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/12|12) hash-identifier
clear 
mkdir hash-identifier
cd hash-identifier/
curl -O https://gitlab.com/kalilinux/packages/hash-identifier/-/archive/kali/master/hash-identifier-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/13|13) Hashcat
clear 
mkdir Hashcat
cd Hashcat/
curl -O https://gitlab.com/kalilinux/packages/hashcat/-/archive/kali/master/hashcat-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/14|14) HexorBase
clear 
mkdir HexorBase
cd HexorBase/
curl -O https://gitlab.com/kalilinux/packages/hexorbase/-/archive/kali/master/hexorbase-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;;

/15|15) THC-Hydra
clear 
mkdir THC-Hydra
cd THC-Hydra/
curl -O https://gitlab.com/kalilinux/packages/hydra/-/archive/kali/master/hydra-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/16|16) JohntheRipper
clear 
mkdir JohntheRipper
cd JohntheRipper/
curl -O https://gitlab.com/kalilinux/packages/john/-/archive/kali/master/john-kali-master.tar.gz
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/17|17) Johnny
clear 
mkdir Johnny
cd Johnny/
curl -O https://gitlab.com/kalilinux/packages/johnny/-/archive/kali/master/johnny-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/18|18) Maltego 
clear 
mkdir Maltego 
cd Maltego/
curl -O https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/19|19) Maskprocessor 
clear 
mkdir Maskprocessor 
cd Maskprocessor/
curl -O https://gitlab.com/kalilinux/packages/maskprocessor/-/archive/kali/master/maskprocessor-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/20|20) multiforcer 
clear 
mkdir multiforcer 
cd multiforcer/
curl -O https://gitlab.com/kalilinux/packages/multiforcer/-/archive/kali/master/multiforcer-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/21|21) Ncrack 
clear 
mkdir Ncrack 
cd Ncrack/
curl -O https://gitlab.com/kalilinux/packages/ncrack/-/archive/kali/master/ncrack-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/22|22) oclgausscrack 
clear 
mkdir oclgausscrack 
cd oclgausscrack/
curl -O https://gitlab.com/kalilinux/packages/oclgausscrack/-/archive/kali/master/oclgausscrack-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/23|23) ophcrack 
clear 
mkdir ophcrack 
cd ophcrack/
curl -O https://downloads.sourceforge.net/project/ophcrack/ophcrack/3.8.0/ophcrack-3.8.0.tar.bz2?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fophcrack%2Ffiles%2Fophcrack%2F3.8.0%2Fophcrack-3.8.0.tar.bz2%2Fdownload&ts=1612621466
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/24|24) PACK 
clear 
mkdir PACK 
cd PACK/
curl -O https://gitlab.com/kalilinux/packages/pack/-/archive/kali/master/pack-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/25|25) patator 
clear 
mkdir patator 
cd patator/
curl -O https://gitlab.com/kalilinux/packages/patator/-/archive/kali/master/patator-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/26|26) phrasendrescher 
clear 
mkdir phrasendrescher 
cd phrasendrescher/
curl -O https://gitlab.com/kalilinux/packages/phrasendrescher/-/archive/kali/master/phrasendrescher-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/27|27) polenum 
clear 
mkdir polenum 
cd polenum/
curl -O https://gitlab.com/kalilinux/packages/polenum/-/archive/kali/master/polenum-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/28|28) RainbowCrack 
clear 
mkdir RainbowCrack 
cd RainbowCrack/
curl -O https://gitlab.com/kalilinux/packages/rainbowcrack/-/archive/kali/master/rainbowcrack-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/29|29) rcracki-mt 
clear 
mkdir rcracki-mt 
cd rcracki-mt/
curl -O https://gitlab.com/kalilinux/packages/rcracki-mt/-/archive/kali/master/rcracki-mt-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/30|30) RSMangler
clear 
mkdir RSMangler
cd RSMangler/
curl -O https://gitlab.com/kalilinux/packages/rsmangler/-/archive/kali/master/rsmangler-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/31|31) SecLists
clear 
mkdir SecLists
cd SecLists/
curl -O https://gitlab.com/kalilinux/packages/seclists/-/archive/kali/master/seclists-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/32|32) SQLdict
clear 
mkdir SQLdict
cd SQLdict/
curl -O https://gitlab.com/kalilinux/packages/sqldict/-/archive/kali/master/sqldict-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/33|33) Statsprocessor
clear 
mkdir Statsprocessor
cd Statsprocessor/
curl -O https://gitlab.com/kalilinux/packages/statsprocessor/-/archive/kali/master/statsprocessor-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/34|34) THC-pptp-bruter
clear 
mkdir THC-pptp-bruter
cd THC-pptp-bruter/
curl -O https://gitlab.com/kalilinux/packages/thc-pptp-bruter/-/archive/kali/master/thc-pptp-bruter-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/35|35) TrueCrack
clear 
mkdir TrueCrack
cd TrueCrack/
curl -O https://gitlab.com/kalilinux/packages/truecrack/-/archive/kali/master/truecrack-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/36|36) WebScarab
clear 
mkdir WebScarab
cd WebScarab/
curl -O https://gitlab.com/kalilinux/packages/webscarab/-/archive/kali/master/webscarab-kali-master.tar.gz
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/37|37) wordlists
clear 
mkdir wordlists
cd wordlists/
curl -O https://gitlab.com/kalilinux/packages/wordlists/-/archive/kali/master/wordlists-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
;; 

/38|38) zaproxy
clear 
mkdir zaproxy
cd zaproxy/
curl -O https://gitlab.com/kalilinux/packages/zaproxy/-/archive/kali/master/zaproxy-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |P|a|s|s|w|o|r|d| |A|t|t|a|c|k|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Password
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
clear 
mkdir CryptCat
cd CryptCat/
curl -O https://gitlab.com/kalilinux/packages/cryptcat/-/archive/kali/master/cryptcat-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/2|2) Cymothoa 
clear 
mkdir Cymothoa
cd Cymothoa/
curl -O https://gitlab.com/kalilinux/packages/cymothoa/-/archive/kali/master/cymothoa-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/3|3) dbd 
clear 
mkdir dbd
cd dbd/
curl -O https://gitlab.com/kalilinux/packages/dbd/-/archive/kali/master/dbd-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/4|4) dns2tcp 
clear 
mkdir dns2tcp
cd dns2tcp/
curl -O https://gitlab.com/kalilinux/packages/dns2tcp/-/archive/kali/master/dns2tcp-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/5|5) HTTPTunnel 
clear 
mkdir HTTPTunnel
cd HTTPTunnel/
curl -O https://gitlab.com/kalilinux/packages/httptunnel/-/archive/kali/master/httptunnel-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/6|6) Intersect 
clear 
mkdir Intersect
cd Intersect/
curl -O https://gitlab.com/kalilinux/packages/intersect/-/archive/kali/master/intersect-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/7|7) Nishang 
clear 
mkdir Nishang
cd Nishang/
curl -O https://gitlab.com/kalilinux/packages/nishang/-/archive/kali/master/nishang-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/8|8) polenum 
clear 
mkdir polenum
cd polenum/
curl -O https://gitlab.com/kalilinux/packages/polenum/-/archive/kali/master/polenum-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/9|9) PowerSploit 
clear 
mkdir PowerSploit
cd PowerSploit/
curl -O https://gitlab.com/kalilinux/packages/powersploit/-/archive/kali/master/powersploit-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/10|10) pwnat 
clear 
mkdir pwnat
cd pwnat/
curl -O https://gitlab.com/kalilinux/packages/pwnat/-/archive/kali/master/pwnat-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/11|11) RidEnum 
clear 
mkdir RidEnum
cd RidEnum/
curl -O https://gitlab.com/kalilinux/packages/ridenum/-/archive/kali/master/ridenum-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/12|12) sbd 
clear 
mkdir sbd
cd sbd/
curl -O https://gitlab.com/kalilinux/packages/sbd/-/archive/kali/master/sbd-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/13|13) shellter 
clear 
mkdir shellter
cd shellter/
curl -O https://gitlab.com/kalilinux/packages/shellter/-/archive/kali/master/shellter-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/14|14) U3-Pwn 
clear 
mkdir U3-Pwn
cd U3-Pwn/
curl -O https://gitlab.com/kalilinux/packages/u3-pwn/-/archive/kali/master/u3-pwn-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/15|15) Webshells 
clear 
mkdir Webshells
cd Webshells/
curl -O https://gitlab.com/kalilinux/packages/webshells/-/archive/kali/master/webshells-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/16|16) Weevely 
clear 
mkdir Weevely
cd Weevely/
curl -O https://gitlab.com/kalilinux/packages/weevely/-/archive/kali/master/weevely-kali-master.tar.gz
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
;;

/17|17) Winexe 
clear 
mkdir Winexe
cd Winexe/
curl -O https://gitlab.com/kalilinux/packages/winexe/-/archive/kali/master/winexe-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |M|a|i|n|t|a|i|n|i|n|g| |A|c|c|e|s|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Maintaining
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
clear 
mkdir apktool
cd apktool/
curl -O https://gitlab.com/kalilinux/packages/apktool/-/archive/kali/master/apktool-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/2|2) dex2jar
clear 
mkdir dex2jar
cd dex2jar/
curl -O https://gitlab.com/kalilinux/packages/dex2jar/-/archive/kali/master/dex2jar-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/3|3) diStorm3
clear 
mkdir diStorm3
cd diStorm3/
curl -O https://gitlab.com/kalilinux/packages/distorm3/-/archive/kali/master/distorm3-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/4|4) edb-debugger
clear 
mkdir edb-debugger
cd edb-debugger/
curl -O https://gitlab.com/kalilinux/packages/edb-debugger/-/archive/kali/master/edb-debugger-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/5|5) jad
clear 
mkdir jad
cd jad/
curl -O https://gitlab.com/kalilinux/packages/jad/-/archive/kali/master/jad-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/6|6) javasnoop
clear 
mkdir javasnoop
cd javasnoop/
curl -O https://gitlab.com/kalilinux/packages/javasnoop/-/archive/kali/master/javasnoop-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/7|7) JD-GUI
clear 
mkdir JD-GUI
cd JD-GUI/
curl -O https://gitlab.com/kalilinux/packages/jd-gui/-/archive/kali/master/jd-gui-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/8|8) OllyDbg
clear 
mkdir OllyDbg
cd  OllyDbg/
curl -O https://gitlab.com/kalilinux/packages/ollydbg/-/archive/kali/master/ollydbg-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/9|9) smali
clear 
mkdir smali
cd  smali/
curl -O https://gitlab.com/kalilinux/packages/smali/-/archive/kali/master/smali-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/10|10) Valgrind
clear 
mkdir Valgrind
cd  Valgrind/
curl -O https://gitlab.com/kalilinux/packages/valgrind/-/archive/kali/master/valgrind-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
;;

/11|11) YARA
clear 
mkdir YARA
cd  YARA/
curl -O https://gitlab.com/kalilinux/packages/yara/-/archive/kali/master/yara-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|v|e|r|s|e| |E|n|g|i|n|e|e|r|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reverse
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
clear 
mkdir android-sdk
cd android-sdk/
curl -O https://gitlab.com/kalilinux/packages/android-sdk/-/archive/kali/master/android-sdk-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Hardware
;;

/2|2) apktool
clear 
mkdir apktool
cd apktool/
curl -O https://gitlab.com/kalilinux/kalilinux/packages/apktool/-/archive/kali/master/apktool-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Hardware
;;

/3|3) Arduino
clear 
mkdir Arduino
cd Arduino/
curl -O https://gitlab.com/kalilinux/packages/arduino/-/archive/kali/master/arduino-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Hardware
;;

/4|4) dex2jar
clear 
mkdir dex2jar
cd dex2jar/
curl -O https://gitlab.com/kalilinux/packages/dex2jar/-/archive/kali/master/dex2jar-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Hardware
;;

/5|5) Sakis3G
clear 
mkdir Sakis3G
cd Sakis3G/
curl -O https://gitlab.com/kalilinux/packages/sakis3g/-/archive/kali/master/sakis3g-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Hardware
;;


/6|6) smali
clear 
mkdir smali
cd smali/
curl -O https://gitlab.com/kalilinux/packages/smali/-/archive/kali/master/smali-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |H|a|r|d|w|a|r|e| |H|a|c|k|i|n|g|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Hardware
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
clear 
mkdir CaseFile
cd CaseFile/
curl -O https://gitlab.com/kalilinux/packages/casefile/-/archive/kali/master/casefile-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/2|2) cherrytree 
clear 
mkdir cherrytree
cd cherrytree/
curl -O https://gitlab.com/kalilinux/packages/cherrytree/-/archive/kali/master/cherrytree-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/3|3) CutyCapt 
clear 
mkdir CutyCapt
cd CutyCapt/
curl -O https://gitlab.com/kalilinux/packages/cutycapt/-/archive/kali/master/cutycapt-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/4|4) dos2unix 
clear 
mkdir dos2unix
cd dos2unix/
curl -O https://gitlab.com/kalilinux/packages/dos2unix/-/archive/kali/master/dos2unix-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/5|5) Dradis 
clear 
mkdir Dradis
cd Dradis/
curl -O https://gitlab.com/kalilinux/packages/dradis/-/archive/kali/master/dradis-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/6|6) MagicTree 
clear 
mkdir MagicTree
cd MagicTree/
curl -O https://github.com/braintripping/magic-tree/archive/master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/7|7) Metagoofil 
clear 
mkdir Metagoofil
cd Metagoofil/
curl -O https://gitlab.com/kalilinux/packages/metagoofil/-/archive/kali/master/metagoofil-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/8|8) Nipper-ng 
clear 
mkdir Nipper-ng
cd Nipper-ng/
curl -O https://gitlab.com/kalilinux/packages/nipper-ng/-/archive/kali/master/nipper-ng-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/9|9) pipal
clear 
mkdir pipal
cd pipal/
curl -O https://gitlab.com/kalilinux/packages/pipal/-/archive/kali/master/pipal-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
;;

/10|10) RDPY
clear 
mkdir RDPY
cd RDPY/
curl -O https://gitlab.com/kalilinux/packages/python-rdpy/-/archive/kali/master/python-rdpy-kali-master.zip
clear 
cd ..
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e "$red""   |R|e|p|o|r|t|i|n|g| |T|o|o|l|s|"
echo -e "$lightgreen""+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "
echo -e $ [!] $yellow'Confira a Ferramenta no Diretório' $lightgreen "/chan-vy" &&sleep 2 &&Reporting
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
