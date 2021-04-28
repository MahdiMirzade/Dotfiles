# i3 Docs
[i3](https://i3wm.org) is a tiling window manager which I use everyday.<br/>
[Main Documentation](https://i3wm.org/docs/userguide.html)

## Headers
- [Install + Config](#installation)
- [i3 ScreenShots](#screenshots)
- [i3 CheatSheet](#cheatsheet)
- [.config/i3/config](#configi3config)
- [.config/i3status/config](#configi3statusconfig)

## Installation
```
$ pacman -S i3-gaps dmenu scrot nitrogen
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/i3/install
```

## ScreenShots
> Clean Interface without any opened windows. *[only i3status & nm-applet]*
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/i3.clean.png" alt="Clean i3wm without any opened windows" width="512" height="288">

> Beautiful, Fast & Powerful *[apps: pfetch,cmatrix,gtop,pipes.sh,cava]*
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/i3.png" alt="Perfect i3" width="512" height="288">

> Launching apps with dmenu
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/i3.dmenu.png" alt="i3 with dmenu launcher" width="512" height="111">

> Using [i3status](https://github.com/mahdymirzade/dotfiles/tree/main/config/i3status) as panel
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/i3.status.png" alt="i3 status bar" width="512" height="200">



## CheatSheet
> Window Management Keybinds

| Key                       | Functionality                                 |
| ------------------------- | --------------------------------------------- |
| Super                     | The Main Controller                           |
| Super + Enter             | Run Terminal                                  |
| Super + Q                 | Lock Screen (i3lock)                          |
| Super + Shift + Q         | Close Windows                                 |
| Super + Z                 | Simple Launcher                               |
| Super + Shift + Z         | Rofi Launcher                                 |
| Super + *j/k/l/,*         | Change Focus                                  |
| Super + Arrows            | Change Focus (Curser Keys)                    |
| Super + Shift + *j/k/l/,* | Move Focused Window                           |
| Super + Shift + Arrows    | Move Focused Window (Curser Keys)             |
| Super + F                 | Full Screen the Focused Window                |
| Super + R                 | Enter the Resize Mode                         |
| Super + *H/V*             | Change Split Direction (horizontal/vertical)  |
| Super + Shift + A         | Show Window on Active Workspace               |
| Super + Shift + Space     | Toggle Floating/Tiling Mode on a Window       |
| Super + Space             | Change Focus between Floating/Tiling windows  |
| Super + 1-9               | Switch to Workspace 1-9                       |
| Super + Shift + 1-9       | Move Focused Window to Workspace 1-9          |
| Super + Shift + R         | Restart i3 Window Manager                     |
| Super + Shift + E         | Exit i3 Window Manager                        |

> Custom Keybinds

| Key               | Functionality                         |
| ----------------- | ------------------------------------- |
| PrtSc             | Capturing Screen Shot *Using scrot*   |
| Super + PrtSc     | Capturing Focused Window's Screen     |



## .config/i3/config
I have done some extra configuration on my keyboard:

**Adjust Volume** : I use pactl[(PulseAudio)](https://en.wikipedia.org/wiki/PulseAudio) to change my volume.
```
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status
```
**Adjust Brightness** : I use [light](github.com/haikarainen/light) for changing brightness.
```
bindsym XF86MonBrightnessUp exec --no-startup-id light -A 10%
bindsym XF86MonBrightnessDown exec --no-startup-id light -U 10%
```
**Control Music** : I use [mpc](https://wiki.archlinux.org/index.php/Music_Player_Daemon) to take control:
```
bindsym XF86AudioPlay exec --no-startup-id "mpc toggle"
bindsym XF86AudioNext exec --no-startup-id "mpc next"
bindsym XF86AudioPrev exec --no-startup-id "mpc prev"
```



## .config/i3status/config
**Default settings:**
```
#order += "load"
order += "disk /"
#order += "disk /home"
#order += "wireless _first_"
#order += "ethernet _first_"
order += "battery all"
order += "volume all"
order += "tztime local"
```
**Commenting modules will disable them:**
```
order += "disk /"
->
#order += "disk /"

@ Disabled 'remaining available disk' module
```
**Commenting modules will enable them:**
```
#order += "load"
->
order += "load"

@ Enabled 'load average' module
```



### Short Links
- [Main Menu](./../../../../)
- [Back to Config Dir](./../)
