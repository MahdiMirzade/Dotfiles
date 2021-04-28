# Picom Docs
[Picom](https://github.com/yshui/picom) is a X compositor which is forked from the original Compton because it seems to have become unmaintained.<br/>
[Main Documentation](https://github.com/yshui/picom/blob/next/README.md)

## Headers
- [Install + Config](#installation)
- [Enabling + Starting](#enable-and-start)
- [Picom ScreenShots](#screenshots)
- [~/.config/picom/picom.conf](#configpicompicomconf)

## Installation
```
$ pacman -S lightdm
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/lightdm/install
```

## Enable And Start
**Enable Picom:**
```
# Picom needs to run in startup, so my i3 config handles this.
```
**Start Picom - Without Reboot:**
```
$ picom -b
```

## ScreenShots
> Picom is great :)

<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/picom.png" alt="Picom Pic" width="512" height="288">

## ~/.config/picom/picom.conf
**Main configuration of picom. - only mentioned customized options**
**Shadow configuration:**
```
shadow = true;
shadow-radius = 15
shadow-offset-x = -15
shadow-offset-y = -15
shadow-exclude = [
  "name = 'Notification'",
  "class_g = 'Conky'",
  "class_g ?= 'Notify-osd'",
  "class_g = 'Cairo-clock'",
  "_GTK_FRAME_EXTENTS@:c"
];
```
**Fading configuration:**
```
fading = true
fade-in-step = 0.03;
fade-out-step = 0.03;
```
**Transparency configuration:**
```
inactive-opacity = 0.9;
frame-opacity = 1.0
inactive-opacity-override = false;
focus-exclude = [ "class_g = 'Cairo-clock'" ];
opacity-rule = [
  "100:name *= 'mpv'"
];
```
