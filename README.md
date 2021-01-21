# dotfiles

These files are optimized for me, if you did enjoy, help me improve this repository by pull requests.

## Details

| Name                  | Value                         |
| --------------------- | ----------------------------- |
| Graphical Server      | [Xorg](#xorg)                 |
| Desktop Environment   | *None*                        |
| Window Manager        | [i3](#i3)                     |
| Display Manager       | [LightDM](#lightdm)           |
| File Manager          | [Thunar](#thunar)             |
| Internet Browser      | [QuteBrowser](#qute-browser)  |
| Shell                 | ZSH                           |

## Xorg

[Xorg](https://x.org) is the most popular display server.

### Installation

`pacman -S xorg`

## i3

[i3](https://i3wm.org) is a tiling window manager and I use it as my daily WM.

### Installation

`pacman -S i3-wm`

### Configuration

`./config/i3/install`

## LightDM

[LightDM](https://github.com/canonical/lightdm) is a cross-desktop display manager.

I use *lightdm-gtk-greeter* as my greeter.

### Installation

`pacman -S lightdm lightdm-gtk-greeter`

### Configuration

`sed -i 's/greeter-session=/greeter-session=lightdm-gtk-greeter/g' /etc/lightdm/lightdm.conf`


## Thunar

[Thunar](https://docs.xfce.org/xfce/thunar/start) is a modern file manager for the Xfce Desktop Environment.

### Installation

`pacman -S thunar`

## Qute Browser

[Qute Browser](https://qutebrowser.org) is a Vim-style Web Browser.

### Installation

`pacman -S qutebrowser`

### Configuration

`./config/qutebrowser/install`
