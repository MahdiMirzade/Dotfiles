# Dotfiles
These files are optimized for me (as a desktop user), if you did enjoy,<br/>
help me improve this repository by pull requests or maybe [donating](#donate).



## Full Installation
**Installing all requirements in arch linux for GUI**
```
$ pacman -S xorg lightdm lightdm-gtk-greeter \
i3 dmenu scrot nitrogen \
kitty zsh thunar qutebrowser \
pulseaudio pavucontrol \
networkmanager network-manager-applet \
noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
ttf-dejavu ttf-liberation ttf-hack
```
**Clone this repo and do configuration**
```
$ git clone https://github.com/mahdymirzade/dotfiles.git
$ cd dotfiles
$ ./install
```
**Enable GUI**:
```
$ systemctl enable lightdm
$ systemctl start lightdm - if lightdm didn't start
```
**Enable Audio Server**:
```
$ pulseaudio --start
```



## Details
| Name                  | Value                         	      |
| --------------------- | ------------------------------------- |
| Graphical Server      | [Xorg](#xorg)                 	      |
| Fonts Configuration   | [Fonts](#fonts)                       |
| Desktop Environment   | *None*                        	      |
| Window Manager        | [i3](#i3)                     	      |
| Terminal              | [Kitty](#kitty)               	      |
| Shell                 | [ZSH](#zsh)                   	      |
| File Manager          | [Thunar](#thunar)             	      |
| Internet Browser      | [QuteBrowser](#qute-browser)  	      |
| Display Manager       | [LightDM](#lightdm)           	      |
| Network Manager     	| [networkmanager](#network-manager)	  |
| Audio Server	      	| [PulseAudio](#pulse-audio)		        |



## Xorg
[Xorg](https://x.org) is the most popular display server.

**Installation**
```
$ pacman -S xorg
```



## Fonts
Install following packages if you are missing characters/fonts/monospace:
```
$ pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
ttf-dejavu ttf-liberation ttf-hack
```
These packages contains chinese, japanese, korean (CJK) fonts as well.



## i3
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/i3.png" alt="i3 Pic" width="512" height="288">

[i3](https://i3wm.org) is a tiling window manager and I use it as my daily WM.

**Installation**
```
$ pacman -S i3 dmenu scrot nitrogen
```
**Configuration**
```
$ ./config/i3/install
```
[Documentation](/config/i3)



## Kitty
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/kitty.png" alt="Kitty Pic" width="512" height="277">

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



## ZSH
[Zsh](https://www.zsh.org) is a shell designed for interactive use, although it is also a powerful scripting language.

**Installation**
```
$ pacman -S zsh
```
**Configuration**
```
# Change your default shell:
$ chsh -s /bin/zsh
```

```
# I use oh-my-zsh as well: (No Configuration On Oh-My-Zsh)
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```



## Thunar
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/thunar.png" alt="Thunar Pic" width="512" height="325">

[Thunar](https://docs.xfce.org/xfce/thunar/start) is a modern file manager for the Xfce Desktop Environment.

**Installation**
```
$ pacman -S thunar
```
**Theme Installation**
```
$ ./config/themes/install
```
[More About This Repo's Themes & Icons](/config/themes)



## Qute Browser
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/qutebrowser.gif" alt="QuteBrowser Icon" width="512" height="288">

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



## LightDM
<img src="assets/lightdm.gif" alt="LightDM Login" width="512" height="320">

[LightDM](https://github.com/canonical/lightdm) is a cross-desktop display manager.

I use *lightdm-gtk-greeter* as my greeter.

**Installation**
```
$ pacman -S lightdm lightdm-gtk-greeter
```
**Configuration**
```
$ sed -i "s/#greeter-session=example-gtk-gnome/\
greeter-session=lightdm-gtk-greeter/g" \
/etc/lightdm/lightdm.conf
```



## Network Manager

[networkmanager](https://wiki.gnome.org/Projects/NetworkManager) is a network connection manager and user applications.

**Installation**
```
$ pacman -S networkmanager network-manager-applet
```



## Pulse Audio

[PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) is a featureful, general-purpose sound server.

[pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) is the PulseAudio Volume Control.

**Installation**
```
$ pacman -S pulseaudio pavucontrol
```
**Starting Daemon**
```
$ pulseaudio --start
```



## ToDO
- [x] Writing docs for configs.
- [ ] Change GIFs and JPGs of docs.
- [ ] Make introduction video about this repo.
- [ ] Threaten people to star this page on github.

## Donate
I put some time on this project and I really don't think it has any values but I would love some cryptocurrencies:
- **BTC:** `1H5YUVVif9u9JNBVaboCwsBvHAoDeAW5yc`
- **ETH:** `0x05A11A118eb3BDbD015c2fdd3F843dBe422C2955`
- **LTC:** `LiZRqXUrQYjs8TapBEpEngiSiZMvViaPhi`
- **ZEC:** `t1NRoc1a6nXxZT1c1dDCUaMTGGRcpfCBcXy`

Made with <3 by **Mahdy Mirzade**

Yell at me: [me@mahdy.fun](mailto:me@mahdy.fun)
