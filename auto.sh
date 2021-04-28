#!/bin/bash
#
#   __  __       _         _         __  __ _                   _
#  |  \/  | __ _| |__   __| |_   _  |  \/  (_)_ __ ______ _  __| | ___
#  | |\/| |/ _` | '_ \ / _` | | | | | |\/| | | '__|_  / _` |/ _` |/ _ \
#  | |  | | (_| | | | | (_| | |_| | | |  | | | |   / / (_| | (_| |  __/
#  |_|  |_|\__,_|_| |_|\__,_|\__, | |_|  |_|_|_|  /___\__,_|\__,_|\___|
#                            |___/
#
# This file is a part of `github.com/mahdymirzade/dofiles`.
#
#
# Coloring
expand_bg="\e[K"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
blue_bg="\e[0;104m${expand_bg}"
red="\e[0;91m"
green="\e[0;92m"
blue="\e[0;94m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

# Handle logger
logger () {
    format=$1
    if [[ $format == "red" || $format == "blue" || $format == "green" ]]; then
        bgcolor="${format}_bg"
    else
        bgcolor="expand_bg"
        if [[ $format == "" || $format == "null" || $format == "none" ]]; then
            format="reset"
        fi
    fi
    echo -en "${reset}${!bgcolor}${bold}DOTFILES${reset}${expand_bg} "
    echo -en "${reset}${!format}"
    addon="-e"
    if [[ $3 == "nobreak" ]]; then
        addon="-en"
    elif [[ $3 == "bold" ]]; then
        prefixx="${bold}"
    elif [[ $3 == "uline" ]]; then
        prefixx="${uline}"
    else
        prefixx=""
    fi
    echo $addon "${prefixx}${2}"
    echo -en "${reset}"
}
separator () {
    logger "" "." "nobreak"
    for ((i = 0 ; i < 54 ; i++)); do
        echo -n "."
    done
    echo "."
}

# Ctrl-c & Ctrl-z handler
ctrlc () {
    logger "" ""
    logger "red" "You have done a [Ctrl-C], performing clean up..."
    killall -s KILL -q pacman git pulseaudio > /dev/null &
    rm -rf /opt/dotfiles > /dev/nukk &
    logger "red" "Exiting Installer..."
    exit 2
}
trap "ctrlc" 2
trap "" TSTP

# Verify privileges
if [[ $EUID -ne 0 ]]; then
    logger "red" "This script can't run without enough privileges."
    logger "red" "Please run ${reset}${green}Dotfiles${reset}${red} as root user."
    exit
fi

# Introduction
helloworld () {
    logger "green" "Dotfiles is my repository which includes my configurations." "bold"
    logger "green" "https://github.com/mahdymirzade/dotfiles" "bold"
    logger "green" ""
    logger "green" " ____        _    __ _ _"
    logger "green" "|  _ \  ___ | |_ / _(_) | ___  ___"
    logger "green" "| | | |/ _ \| __| |_| | |/ _ \/ __|"
    logger "green" "| |_| | (_) | |_|  _| | |  __/\__ \\"
    logger "green" "|____/ \___/ \__|_| |_|_|\___||___/"
    logger "green" ""
    logger "blue" "Dotfiles actually means hidden files and directories."
    logger "blue" "For example '.mahdy' is a dotfile, we name config files dotfiles,"
    logger "blue" "Because they are mostly in '.config' directory."
}

# Check OS and requirements
requirements () {
    logger "bold" "Starting installer in 10 seconds... (Exit with [Ctrl+C])"
    logger "" "......" "nobreak"
    for ((i = 0 ; i < 10 ; i++)); do
        sleep 1
        echo -n "....."
    done
    echo ""
    pacman -Sy xorg lightdm lightdm-gtk-greeter \
        i3 dmenu scrot nitrogen rofi \
        kitty zsh qutebrowser xarchiver \
        thunar gvfs thunar-archive-plugin \
        thunar-media-tags-plugin thunar-volman \
        pulseaudio pavucontrol picom \
        networkmanager network-manager-applet \
        noto-fonts noto-fonts-cjk \
        noto-fonts-emoji noto-fonts-extra \
        ttf-dejavu ttf-liberation ttf-hack \
        -q --needed --noconfirm --color=auto
    if [[ -e /opt/dotfiles ]]; then
        rm -rf /opt/dotfiles
    fi
    if [[ -e ~/.oh-my-zsh ]]; then
        rm -rf ~/.oh-my-zsh
    fi
}

installation () {
    git clone https://github.com/mahdymirzade/dotfiles.git /opt/dotfiles
    /opt/dotfiles/install
    systemctl enable NetworkManager
    systemctl enable lightdm
    systemctl start lightdm
    systemctl start NetworkManager
}

main () {
    clear
    helloworld
    separator
    requirements
    separator
    installation
    separator
    logger "green" "Done :)" "bold"
}

main
