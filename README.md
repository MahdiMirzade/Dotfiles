# Dotfiles
These files are optimized for me (as a desktop user), if you did enjoy,<br/>
help me improve this repository by pull requests or maybe [donation](#donate).

## Full Installation
**Installing all requirements in arch linux for GUI**
```
$ pacman -S xorg lightdm lightdm-gtk-greeter \
i3 dmenu scrot nitrogen rofi \
kitty zsh qutebrowser xarchiver \
thunar thunar-archive-plugin \
thunar-media-tags-plugin thunar-volman \
pulseaudio pavucontrol picom \
networkmanager network-manager-applet \
noto-fonts noto-fonts-cjk \
noto-fonts-emoji noto-fonts-extra \
ttf-dejavu ttf-liberation ttf-hack
```
**Clone this repo and do configuration**
```
$ git clone https://github.com/mahdymirzade/dotfiles.git
$ cd dotfiles
$ ./install
```
**Enable LightDM (GUI)**:
```
$ systemctl enable lightdm
```
**Start Audio Server, GUI, NetworkManager - Without Reboot**:
```
$ pulseaudio --start
$ systemctl start lightdm
$ systemctl start NetworkManager
```


## Details
| Name                  | Value                         	        | Name                  | Value                                             |
| --------------------- | --------------------------------------------- | --------------------- | ------------------------------------------------- |
| Graphical Server      | [Xorg](#xorg)                 	        | Terminal Emulater     | [Kitty](#kitty)               	            |
| Fonts Configuration   | [Fonts](#fonts)                               | File Manager          | [Thunar](#thunar)                      	    |
| Display Manager       | [LightDM](#lightdm)           	        | Internet Browser      | [QuteBrowser](#qute-browser)  	            |
| Window Manager        | [i3](#i3)                     	        | Program Launcher      | [Rofi](#rofi)                                     |
| Audio Server	      	| [PulseAudio](#pulse-audio)		        | GTK Themes            | [Dracula Theme](#themes)                          |
| Network Manager     	| [networkmanager](#network-manager)	        | BitTorrent Client     | [QBittorrent](#qbittorrent)                       |
| Compositor            | [Picom](#picom)                               | 
| Shell                 | [ZSH](#zsh)                                   |

## Xorg
[Xorg](https://x.org) is the most popular display server.

**Installation**
```
$ pacman -S xorg
```

## Fonts
Install following packages if you are missing characters/fonts/monospace:
```
$ pacman -S noto-fonts noto-fonts-cjk \
noto-fonts-emoji noto-fonts-extra \
ttf-dejavu ttf-liberation ttf-hack
```
These packages contains chinese, japanese, korean (CJK) fonts as well.

## LightDM
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lightdm.gif" alt="LightDM Gif" width="400" height="224" align="right">

[LightDM](https://github.com/canonical/lightdm) is a cross-desktop display manager.

I use *lightdm-gtk-greeter* as my greeter.

**Installation**
```
$ pacman -S lightdm lightdm-gtk-greeter
```
**Configuration**
```
$ ./config/lightdm/install
```

## i3
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/i3.gif" alt="i3 Gif" width="400" height="224" align="right">

[i3](https://i3wm.org) is a tiling window manager and I use it as my daily WM.

**Installation**
```
$ pacman -S i3 dmenu \
scrot nitrogen
```
**Configuration**
```
$ ./config/i3/install
```
[Documentation](/config/i3)

## Pulse Audio
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/pulseaudio.gif" alt="PulseAudio Gif" width="400" height="246" align="right">

[PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) is a featureful, general-purpose sound server.

[pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) is the PulseAudio Volume Control.

**Installation**
```
$ pacman -S pulseaudio pavucontrol
```
**If it didn't Start - Without Reboot**
```
$ pulseaudio --start
```

## Network Manager
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/networkmanager.gif" width="400" height="224" align="right">

[networkmanager](https://wiki.gnome.org/Projects/NetworkManager) is a network connection manager and user applications.

**Installation**
```
$ pacman -S networkmanager \
network-manager-applet
$ systemctl enable NetworkManager
```
**If it didn't Start - Without Reboot**
```
$ systemctl start NetworkManager
```

## Picom
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/picom.gif" width="400" height="224" align="right">

[Picom](https://github.com/yshui/picom) is a X compositor which is forked from the original [Compton](https://github.com/chjj/compton) because it seems to have become unmaintained.

**Installation**
```
$ pacman -S picom
```
**Confuration**
```
$ ./config/picom/install
```
**If it didn't Start - Without Reboot**
```
$ picom -b
```
[Documentation](/config/picom)

## ZSH
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/zsh.gif" alt="ZSH Gif" width="400" height="262" align="right">

[Zsh](https://www.zsh.org) is a shell designed for interactive use, although it is also a powerful scripting language.

**Installation**
```
$ pacman -S zsh
```
**Configuration** *[oh-my-zsh will be installed]*
```
$ ./config/zsh/install
```
[Click Here to Checkout GIF's Source](https://giphy.com/gifs/7OUJtOFzBU4uY)

[Documentation](/config/zsh)

## Kitty
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/kitty.gif" alt="Kitty Gif" width="400" height="266" align="right">

[Kitty](https://sw.kovidgoyal.net/kitty) - the fast, featureful, GPU based terminal emulator

**Installation**
```
$ pacman -S kitty
```
**Configuration**
```
$ ./config/kitty/install
```
[Documentation](/config/kitty)

## Thunar
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/thunar.gif" alt="Thunar Gif" width="400" height="213" align="right">

[Thunar](https://docs.xfce.org/xfce/thunar/start) is a modern file manager for the Xfce Desktop Environment.

**Installation**
```
$ pacman -S thunar \
thunar-archive-plugin \
thunar-media-tags-plugin \
thunar-volman xarchiver
```

## Qute Browser
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/qutebrowser.gif" alt="QuteBrowser Gif" width="400" height="224" align="right">

[Qute Browser](https://qutebrowser.org) is a Vim-style Web Browser.

**Installation**
```
$ pacman -S qutebrowser
```
**Configuration**
```
$ ./config/qutebrowser/install
```
[Documentation](/config/qutebrowser)

## Rofi
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/rofi.gif" alt="Rofi Gif" width="400" height="144" align="right">

[Rofi](https://github.com/DaveDavenport/rofi) is a window switcher, application launcher and dmenu replacement.

**Installation**
```
$ pacman -S rofi
```

## Themes
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/gtk.gif" alt="GTK Gif" width="400" height="224" align="right">

[GTK](https://www.gtk.org/), or the GIMP Toolkit, is a multi-platform toolkit for creating graphical user interfaces. Offering a complete set of widgets, GTK is suitable for projects ranging from small one-off tools to complete application suites.

**Installation**
```
# GTK is probably installed, if not:
$ pacman -S gtk2 gtk3 gtk4
```
**Configuration**
```
$ ./config/themes/install
```
[Documentation](/config/themes)


## QBittorrent
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/qbittorrent.gif" alt="QBittorrent Gif" width="400" height="224" align="right">

[QBittorrent](https://www.qbittorrent.org) is an advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar.

**Installation**
```
$ pacman -S qbittorrent
```
**Theme Usage**
1. [Click Here to Download .qbtheme File](https://github.com/mahdymirzade/dotfiles/raw/main/config/qbittorrent/qbittorrent.qbtheme)
2. Enable theme selection from menu: → Tools → Options → Behavior → Interface → Use custom UI Theme
3. In 'UI Theme file' click on the file icon and select your '.qbtheme' file
4. Restart qbittorrent to apply theme

[Documentation](/config/qbittorrent)

## Donate
I put some time on this project and I really don't think it has any values but I would love some cryptocurrencies:
- **BTC:** `1H5YUVVif9u9JNBVaboCwsBvHAoDeAW5yc`
- **ETH:** `0x05A11A118eb3BDbD015c2fdd3F843dBe422C2955`
- **LTC:** `LiZRqXUrQYjs8TapBEpEngiSiZMvViaPhi`
- **ZEC:** `t1NRoc1a6nXxZT1c1dDCUaMTGGRcpfCBcXy`

Made with <3 by **Mahdy Mirzade**

Yell at me: [me@mahdy.fun](mailto:me@mahdy.fun)
