#!/bin/bash
# Handle logger
logger () {
    # Coloring
    expand_bg="\e[K"
    red_bg="\e[0;101m${expand_bg}"
    green_bg="\e[0;102m${expand_bg}"
    blue_bg="\e[0;104m${expand_bg}"
    white_bg="\e[1;47m\e[1;30m"
    red="\e[0;91m"
    green="\e[0;92m"
    blue="\e[0;94m"
    white="\e[0;97m"
    bold="\e[1m"
    uline="\e[4m"
    reset="\e[0m"
    format=$1
    if [[ $format == "red" || $format == "blue" || $format == "green" || $format == "white" ]]; then
        bgcolor="${format}_bg"
    else
        bgcolor="expand_bg"
        if [[ $format == "" || $format == "null" || $format == "none" || $format == "bold" || $format == "uline" ]]; then
            format="white"
            bgcolor="white_bg"
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

# Credit
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
    logger "green" "Dotfiles actually means hidden files and directories."
    logger "green" "For example '.mahdy' is a dotfile, we name config files dotfiles,"
    logger "green" "Because they are mostly in '.config' directory."
}

# Ctrl-c & Ctrl-z handler
ctrlc () {
    echo ""
    logger "red" "You have done a [Ctrl-C], performing clean up..."
    killall -s KILL -q pacman git pulseaudio > /dev/null &
    rm -rf /opt/dotfiles > /dev/null &
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

services () {
    logger "blue" "Enabling NetworkManager, LightDM services..."
    systemctl enable NetworkManager
    systemctl enable lightdm
    logger "green" "Enabled NetworkManager, LightDM services."
    logger "blue" "Starting NetworkManager, LightDM services..."
    systemctl start NetworkManager
    systemctl start lightdm
    logger "green" "Started NetworkManager, LightDM services."
}

manconfig () {
    logname=$(logname)
    confpath="/home/$logname"
    case $1 in
        "f" | "full")
            # .config Files
            cp -rf .config/* $confpath/.config
            # GTK Themes
            cp -rf .gtk/Dracula-icons /usr/share/icons/Dracula
            cp -rf .gtk/Dracula /usr/share/themes/Dracula
            cp -rf .gtkrc-2.0 $confpath/.gtkrc-2.0
            # i3 Window Manager
            mkdir -p $confpath/.config/i3 $confpath/.config/i3status
            cp -rf .config/i3/config $confpath/.config/i3/
            cp -rf .config/i3status/config $confpath/.config/i3status/
            cp -rf .scripts.sh $confpath/.scripts.sh
            # QuteBrowser
            mkdir -p $confpath/.config/qutebrowser/
            cp -rf .config/qutebrowser/* $confpath/.config/qutebrowser/
            # LightDM
            sed -i "s/#greeter-session=example-gtk-gnome/greeter-session=lightdm-gtk-greeter/g" /etc/lightdm/lightdm.conf
            cp -rf .wallpaper/lockscreen.png /usr/share/pixmaps/lightdm.background.png
            cp -rf .config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
            # Vim and Zsh
            cp -rf .vimrc $confpath/.vimrc
            cp -rf .zshrc $confpath/.zshrc
        ;;
        "themes")
            cp -rf .gtk/Dracula-icons /usr/share/icons/Dracula
            cp -rf .gtk/Dracula /usr/share/themes/Dracula
            cp -rf .gtkrc-2.0 $confpath/.gtkrc-2.0
        ;;
        "i3")
            mkdir -p $confpath/.config/i3 $confpath/.config/i3status
            cp -rf .config/i3/config $confpath/.config/i3/
            cp -rf .config/i3status/config $confpath/.config/i3status/
            cp -rf .scripts.sh $confpath/.scripts.sh
        ;;
        "qutebrowser")
            mkdir -p $confpath/.config/qutebrowser/
            cp -rf .config/qutebrowser/* $confpath/.config/qutebrowser/
        ;;
        "lightdm")
            sed -i "s/#greeter-session=example-gtk-gnome/greeter-session=lightdm-gtk-greeter/g" /etc/lightdm/lightdm.conf
            rm -rf /usr/share/icons/Dracula /usr/share/themes/Dracula
            cp -rf .gtk/Dracula-icons /usr/share/icons/Dracula
            cp -rf .gtk/Dracula /usr/share/themes/
            cp -rf .wallpaper/lockscreen.png /usr/share/pixmaps/lightdm.background.png
            cp -rf .config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
        ;;
	"vim")
	    cp -rf .vimrc $confpath/.vimrc
	;;
	"zsh")
	    cp -rf .zshrc $confpath/.zshrc
	;;
        *)
            if [[ -d ".config/$1" ]]; then
                rm -rf $confpath/.config/$1
                cp -rf .config/$1 $confpath/.config
            else
                logger "red" "No config file specified, You may ignore this."
            fi
        ;;
    esac
    chown -R $logname:$logname $confpath/.*
}

maninstall () {
    case $1 in
        "f" | "full")
            separator
            logger "bold" "Starting installer in 10 seconds... (Exit with [Ctrl+C])"
            logger "" "......" "nobreak"
            for ((i = 0 ; i < 10 ; i++)); do
                sleep 1
                echo -n "....."
            done
            echo ""
            logger "blue" "Installing package requirements..."
            pack="git vim xorg lightdm lightdm-gtk-greeter i3-gaps dmenu scrot nitrogen rofi dunst sbxkb picom kitty zsh qutebrowser mpv mpd youtube-dl xarchiver thunar gvfs thunar-archive-plugin thunar-media-tags-plugin thunar-volman pulseaudio pavucontrol networkmanager network-manager-applet noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra pango ttf-dejavu ttf-liberation ttf-hack"
        ;;
        "fonts")
            pack="noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra pango ttf-dejavu ttf-liberation ttf-hack"
        ;;
        "themes")
            pack="gtk2 gtk3 gtk4"
        ;;
        "lightdm")
            pack="lightdm lightdm-gtk-greeter"
        ;;
        "i3")
            pack="i3-gaps dmenu scrot nitrogen sbxkb dunst"
        ;;
        "audio")
            pack="pulseaudio pavucontrol"
        ;;
        "network")
            pack="networkmanager network-manager-applet"
        ;;
        "thunar")
            pack="thunar gvfs thunar-archive-plugin thunar-media-tags-plugin thunar-volman xarchiver"
        ;;
        *)
            pack="$1"
        ;;
    esac
    pacman -Sy $pack -q --needed --noconfirm --color=auto
    manconfig "$1"
}

filename="$0"
subcommand="$1"
app="$2"

main () {
    case $subcommand in
        "credit")
            helloworld
            exit
        ;;
        "c" | "config")
            manconfig "$app"
        ;;
        "i" | "install")
            maninstall "$app"
        ;;
        "f" | "full")
            helloworld
            maninstall full
            services
        ;;
        *)
            logger "green" ""
            logger "green" "Syntax: $filename [option] [input]"
            logger "green" ""
            logger "green" "Specify an option:"
            logger "green" ""
            logger "green" "      c/config      Copy app's config file from mahdymirzade/dotfiles"
            logger "green" ""
            logger "green" "      i/install     Install package and copy app's config"
            logger "green" ""
            logger "green" "      f/full        Full Installation"
            logger "green" ""
            logger "green" ""
            exit
        ;;
    esac
    logger "green" "Done :)" "bold"
}

main
