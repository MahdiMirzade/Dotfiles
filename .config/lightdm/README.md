# LightDM Docs
[LightDM](https://github.com/CanonicalLtd/lightdm) is a cross-desktop display manager.<br/>
[Main Documentation](https://github.com/canonical/lightdm/blob/master/README.md)

## Headers
- [Install + Config](#installation)
- [Enabling + Starting](#enable-and-start)
- [LightDM ScreenShots](#screenshots)
- [/etc/lightdm/lightdm.conf](#etclightdmlightdmconf)
- [/etc/lightdm/lightdm-gtk-greeter.conf](#etclightdmlightdm-gtk-greeterconf)

## Installation
```
$ pacman -S lightdm
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/lightdm/install
```

## Enable And Start
**Enable LightDM (GUI):**
```
$ systemctl enable lightdm
```
**Start LightDM (GUI) - Without Reboot:**
```
$ systemctl start lightdm
```

## ScreenShots
> LightDM is cool :)

<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lightdm.png" alt="LightDM Pic" width="512" height="288">

## /etc/lightdm/lightdm.conf
**Main configuration of lightdm.**
**Changing a variable to activate greeter:**
```
#greeter-session=example-gtk-gnome
=>
greeter-session=lightdm-gtk-greeter
```

## /etc/lightdm/lightdm-gtk-greeter.conf
**Main configuration of lightdm greeter.**
**Set greeter's configuration title:**
```
[greeter]
```
**Set greeter's background:**
```
background = /usr/share/pixmaps/lightdm.background.png
```
**Set greeter's theme, icons, font:**
```
theme-name = Dracula
icon-theme-name = Dracula
font-name = Hack Reqular 9
```
**Set greeter's login box position:**
```
position = 2%,start -4%,end
```
**Set greeter's login box profile:**
```
default-user-image = /usr/share/pixmaps/archlinux-logo.png
```
