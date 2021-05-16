# Dotfiles
Dotfiles actually means hidden files and directories.<br/>
For example '.mahdy' is a **dotfile**, we name config files **dotfiles**,<br/>
Because they are mostly in '.config' directory.

## Installation
You can use these methods to setup.
- [Automatic Installation](#auto-install)
- [Manual Installation](#manual-install)

### Auto Install
One-line install command:
```
$ curl -Ls https://git.io/J3UPC | bash
```
> If you are using this as a non-root user,<br/>
please use 'sudo bash' instead of 'bash':<br/>
curl -Ls https://git.io/J3UPC | sudo bash

### Manual Install
These are the instructions for manual installation.

#### Step 1: Update databases
You should be sure that your package databases are up-to-date:
```
$ pacman -Sy
```

#### Step 2: Install requirements
This command is for installing all requirements in arch linux:
```
$ pacman -S git vim xorg lightdm lightdm-gtk-greeter \
i3-gaps dmenu scrot nitrogen rofi dunst sbxkb \
picom kitty zsh qutebrowser \
mpv mpd youtube-dl xarchiver \
thunar gvfs thunar-archive-plugin \
thunar-media-tags-plugin thunar-volman \
pulseaudio pavucontrol \
networkmanager network-manager-applet \
noto-fonts noto-fonts-cjk \
noto-fonts-emoji noto-fonts-extra pango \
ttf-dejavu ttf-liberation ttf-hack
```

#### Step 3: Clone this repository
Clone this repo and start setting up configurations:
```
$ git clone https://github.com/mahdymirzade/dotfiles.git
$ cd dotfiles
$ ./install
```

#### Step 4: Enable services using systemd
Enable NetworkManager, LightDM (GUI):
```
$ systemctl enable lightdm
$ systemctl enable NetworkManager
```

##### Step 4.1: Start services
Start GUI, NetworkManager - Without Reboot:
```
$ systemctl start lightdm
$ systemctl start NetworkManager
```

##### Step 4.2: Start audio-server daemon
Start Audio Server - Without Reboot:
```
$ pulseaudio --start
```

#### Step 5: You're Done
Now that you've finished take some rest.<br/>
I highly suggest you to take a moment and star this project It's so fun to do :)

## Details
[Wiki](/wiki/details)
| Name                  | Value                         	        | Name                  | Value                                             |
| --------------------- | --------------------------------------------- | --------------------- | ------------------------------------------------- |
| Graphical Server      | [Xorg](#xorg)                 	        | Terminal Emulater     | [Kitty](#kitty)               	            |
| Fonts Configuration   | [Fonts](#fonts)                               | File Manager          | [Thunar](#thunar)                      	    |
| Display Manager       | [LightDM](#lightdm)           	        | Internet Browser      | [QuteBrowser](#qute-browser)  	            |
| Window Manager        | [i3](#i3)                     	        | Program Launcher      | [Rofi](#rofi)                                     |
| Audio Server	      	| [PulseAudio](#pulse-audio)		        | GTK Themes            | [Dracula Theme](#themes)                          |
| Network Manager     	| [networkmanager](#network-manager)	        | BitTorrent Client     | [QBittorrent](#qbittorrent)                       |
| Compositor            | [Picom](#picom)                               | CLI Text Editor       | [Vim](#vim)                                       |
| Shell                 | [ZSH](#zsh)                                   | GUI Text Editor       | Soon                                              |
| Web Server            | [NGINX](#nginx)                               | Media Player          | [MPV](#mpv)                                       |

### Xorg
[Xorg](https://x.org) is the most popular display server.

**Installation**
```
$ pacman -S xorg
```

### Fonts
Install following packages if you are missing characters/fonts/monospace:
```
$ pacman -S noto-fonts noto-fonts-cjk \
noto-fonts-emoji noto-fonts-extra pango \
ttf-dejavu ttf-liberation ttf-hack
```
These packages contains chinese, japanese, korean (CJK) fonts as well.

### LightDM
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lightdm.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/lightdm.gif" alt="LightDM Gif" width="400" height="224" align="right"></a>
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

### i3
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/i3.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/i3.gif" alt="i3 Gif" width="400" height="224" align="right"></a>
[i3](https://i3wm.org) is a tiling window manager and I use it as my daily WM.

**Installation**
```
$ pacman -S i3 dmenu \
scrot nitrogen sbxkb \
dunst
```
**Configuration**
```
$ ./config/i3/install
```
[Documentation](/config/i3)

### Pulse Audio
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/pulseaudio.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/pulseaudio.gif" alt="PulseAudio Gif" width="400" height="246" align="right"></a>
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

### Network Manager
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/networkmanager.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/networkmanager.gif" width="400" height="224" align="right"></a>
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

### Picom
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/picom.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/picom.gif" width="400" height="224" align="right"></a>
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

### ZSH
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/zsh.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/zsh.gif" alt="ZSH Gif" width="400" height="262" align="right"></a>
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

### Kitty
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/kitty.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/kitty.gif" alt="Kitty Gif" width="400" height="266" align="right"></a>
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

### Thunar
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/thunar.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/thunar.gif" alt="Thunar Gif" width="400" height="213" align="right"></a>
[Thunar](https://docs.xfce.org/xfce/thunar/start) is a modern file manager for the Xfce Desktop Environment.

**Installation**
```
$ pacman -S thunar gvfs \
thunar-archive-plugin \
thunar-media-tags-plugin \
thunar-volman xarchiver
```

### Qute Browser
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/qutebrowser.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/qutebrowser.gif" alt="QuteBrowser Gif" width="400" height="224" align="right"></a>
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

### Rofi
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/rofi.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/rofi.gif" alt="Rofi Gif" width="400" height="144" align="right"></a>
[Rofi](https://github.com/DaveDavenport/rofi) is a window switcher, application launcher and dmenu replacement.

**Installation**
```
$ pacman -S rofi
```

### Themes
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/gtk.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/gtk.gif" alt="GTK Gif" width="400" height="224" align="right"></a>
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


### QBittorrent
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/qbittorrent.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/qbittorrent.gif" alt="QBittorrent Gif" width="400" height="224" align="right"></a>
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

### Vim
[Vim](https://www.vim.org) is a highly configurable text editor built to make creating and changing any kind of text very efficient.

**Installation**
```
pacman -S vim
```
**Configuration**
```
$ ./config/vim/install
```
[Documentation](/config/vim)

### Nginx
[Nginx](https://nginx.com) is a web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache.

**Installation**
```
pacman -S nginx
```
**Configuration - Not ready**
I am currently working on [Xgine](https://github.com/mahdymirzade/Xgine) as an Nginx-Control-Panel.<br/>
This idea takes a lot of time and effort and is currently under developement.<br/>
But when it's released, I plan to take it and use it as a part of this section to config local webserver.<br/>
So stay tuned on [Xgine Github Page](https://github.com/mahdymirzade/Xgine) to get updates about it.<br/>
Simply to do that just "watch" and "star" the repository and wait for magic to happen, Also starring and watching this repository makes you be up-to-date.

### MPV
[MPV](https://mpv.io) is a free, open source, and cross-platform media player.

**Installation**
```
pacman -S mpv mpd
```
**Configuration**
```
$ ./config/mpv/install
```
[Documentation](/config/mpv)


## Donate
<a href="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/heart.gif"><img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/lq/heart.gif" alt="Donation Gif" width="200" height="193" align="right"></a>
I put some time on this project and I really don't think it has any values but I would love some cryptocurrencies:
- **BTC:** `1H5YUVVif9u9JNBVaboCwsBvHAoDeAW5yc`
- **ETH:** `0x05A11A118eb3BDbD015c2fdd3F843dBe422C2955`
- **LTC:** `LiZRqXUrQYjs8TapBEpEngiSiZMvViaPhi`
- **ZEC:** `t1NRoc1a6nXxZT1c1dDCUaMTGGRcpfCBcXy`

Made with <3 by **Mahdy Mirzade**

Yell at me: [me@mahdy.fun](mailto:me@mahdy.fun)
