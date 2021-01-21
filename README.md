# dotfiles

These files are optimized for me, if you did enjoy, help me improve this repository by pull requests.

## Details

| Name                  | Value                         |
| --------------------- | ----------------------------- |
| Graphical Server      | [Xorg](#xorg)                 |
| Desktop Environment   | *None*                        |
| Window Manager        | [i3](#i3)                     |
| Display Manager       | [LightDM](#lightdm)           |
| Terminal              | [Kitty](#kitty)               |
| Shell                 | [ZSH](#zsh)                   |
| File Manager          | [Thunar](#thunar)             |
| Internet Browser      | [QuteBrowser](#qute-browser)  |


## Xorg

<img src="assets/xorg.png" alt="Xorg Icon" width="100" height="100">

[Xorg](https://x.org) is the most popular display server.

**Installation**

`pacman -S xorg`

## i3

<img src="assets/i3.gif" alt="i3 Icon" width="256" height="144">

[i3](https://i3wm.org) is a tiling window manager and I use it as my daily WM.

**Installation**

`pacman -S i3-wm`

**Configuration**

`./config/i3/install`

## LightDM

<img src="assets/lightdm.png" alt="LightDM Login Page" width="141" height="104">

[LightDM](https://github.com/canonical/lightdm) is a cross-desktop display manager.

I use *lightdm-gtk-greeter* as my greeter.

**Installation**

`pacman -S lightdm lightdm-gtk-greeter`

**Configuration**

`sed -i 's/greeter-session=/greeter-session=lightdm-gtk-greeter/g' /etc/lightdm/lightdm.conf`

## Kitty

<img src="assets/kitty.png" alt="Kitty Icon" width="100" height="100">

[kitty](https://sw.kovidgoyal.net/kitty) - the fast, featureful, GPU based terminal emulator

**Installation**

`pacman -S kitty`

**Configuration**

`./config/kitty/install`

## ZSH

<img src="assets/zsh.png" alt="Oh-My-Zsh Icon" width="100" height="100">

[Zsh](https://www.zsh.org) is a shell designed for interactive use, although it is also a powerful scripting language.

**Installation**

`pacman -S zsh`

**Configuration**

Change your default shell:

`chsh -s /bin/zsh`

I use oh-my-zsh as well: *(No Configuration On Oh-My-Zsh)*

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## Thunar

<img src="assets/thunar.png" alt="Thunar Icon" width="100" height="100">

[Thunar](https://docs.xfce.org/xfce/thunar/start) is a modern file manager for the Xfce Desktop Environment.

**Installation**

`pacman -S thunar`

## Qute Browser

<img src="assets/qutebrowser.svg" alt="QuteBrowser Icon" width="100" height="100">

[Qute Browser](https://qutebrowser.org) is a Vim-style Web Browser.

**Installation**

`pacman -S qutebrowser`

**Configuration**

`./config/qutebrowser/install`
