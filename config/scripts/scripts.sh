#!/bin/bash
getKeyboardLayout () {
  layout=$(setxkbmap -query | grep -oP 'layout:\s*\K([\w,]+)')
  echo -n "$layout"
}
changeKeyboardLayout () {
    LAYOUT=$(getKeyboardLayout)
    if [[ "$LAYOUT" == "ir" ]]; then
        setxkbmap us
    else
        setxkbmap ir
    fi
}

changeWallpaper () {
    WALLPAPER=$(shuf -n1 -e ~/Pictures/Wallpapers/*)
    SHORTWALLPAPER=$(echo $WALLPAPER | sed "s/.*\///" | sed "s/\..*//")
    nitrogen --set-auto --save $WALLPAPER
    notify-send "Wallpaper Refreshed " " Current wallpaper: $SHORTWALLPAPER "
}

subcommand="$1"
shift || (echo "Please specify an option: 

    cngKeyboard         Change Current Keyboard Layout

    getKeyboard         Get Current Keyboard Layout

    cngWallpaper        Change wallpaper randomly
                        Pics from ~/Pictures/Wallpapers/" && exit)

case $subcommand in
    "cngKeyboard")
        changeKeyboardLayout
    ;;
    "getKeyboard")
        getKeyboardLayout
    ;;
    "cngWallpaper")
        changeWallpaper
    ;;
esac
