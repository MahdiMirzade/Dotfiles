# Kitty Docs
[Kitty](https://sw.kovidgoyal.net/kitty) is highly customizable, everything from keyboard shortcuts, to painting frames-per-second.<br/>
[Main Documentation](https://sw.kovidgoyal.net/kitty/conf.html)

## Headers
- [Install + Config](#installation)
- [Kitty ScreenShots](#screenshots)
- [Kitty CheatSheet](#cheatsheet)
- [.config/kitty/kitty.conf](#configkittykittyconf)

## Installation
```
$ pacman -S kitty
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/kitty/install
```

## ScreenShots
> Kitty is an awesome Terminal Emulater :)

<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/kitty.png" alt="Kitty Pic" width="512" height="341">

## CheatSheet
> Clipboard

| Key                       | Functionality                     |
| ------------------------- | --------------------------------- |
| Ctrl + Shift + C          | Copy to Clipboard                 |
| Ctrl + Shift + V          | Paste from Clipboard              |
| Ctrl + Shift + S          | Paste from Selection              |

> Scrolling

| Key                       | Functionality                     |
| ------------------------- | --------------------------------- |
| Ctrl + Shift + up/k       | Scroll a Line Up                  |
| Ctrl + Shift + dn/j       | Scroll a Line Down                |
| Ctrl + Shift + Home       | Scroll to Top                     |
| Ctrl + Shift + End        | Scroll to Bottom                  |
| Ctrl + Shift + H          | Browse scrollback buffer in less  |

> Window Management

| Key                       | Functionality                     |
| ------------------------- | --------------------------------- |
| Ctrl + Shift + Enter      | New in-app Window                 |
| Ctrl + Shift + N          | New Window                        |
| Ctrl + Shift + W          | Close Window                      |
| Ctrl + Shift + ]          | Next Window                       |
| Ctrl + Shift + [          | Prev Window                       |
| Ctrl + Shift + F          | Move Window - Forward             |
| Ctrl + Shift + B          | Move Window - Backward            |
| Ctrl + Shift + R          | Resizing Mode                     |
| Ctrl + Shift + 1-9        | Switch to Window 1-9              |

> Tab Management

| Key                       | Functionality                     |
| ------------------------- | --------------------------------- |
| Ctrl + Shift + T          | New Tab                           |
| Ctrl + Shift + Q          | Close Tab                         |
| Ctrl + Shift + Right      | Next Tab                          |
| Ctrl + Shift + Left       | Prev Tab                          |
| Ctrl + Shift + .          | Move Tab - Forward                |
| Ctrl + Shift + ,          | Move Tab - Backward               |
| Ctrl + Alt + 1-9          | Switch to Tab 1-9                 |

> Font sizes

| Key                       | Functionality                     |
| ------------------------- | --------------------------------- |
| Ctrl + Shift + [+]        | Increase font size                |
| Ctrl + Shift + [-]        | Decrease font size                |
| Ctrl + Shift + BackSpace  | Reset font size                   |



## .config/kitty/kitty.conf
### Main Configuration of Kitty Terminal.
**Appearance - Background Opacity & Padding**:
```
background_opacity 0.85
window_padding_width 4
```
**Font Settings**:
```
font_family      Hack
bold_font        Hack Bold
italic_font      Hack Italic
font_size 8.0
```
**Extra - Max history lines & Bell tone**:
```
scrollback_lines 4096
enable_audio_bell no
```
**Extra - Remove spaces at the end of lines while copying to clipboard**:
```
strip_trailing_spaces smart
```
### Color settings:
**Selected Text Color - Foreground & Background**:
```
selection_foreground #161520
selection_background #ebece6
```
**Main Text Colors - Foreground & Background**:
```
foreground #ebece6
background #161520
```
**Black Colors**:
```
color0 #29282f
color8 #63626a
```
**Red Colors**:
```
color1 #bf3032
color9 #fa3e48
```
**Green Colors**:
```
color2  #30bf54
color10 #50fa7b
```
**Yellow Colors**:
```
color3  #b1bf30
color11 #d7e267
```
**Blue Colors**:
```
color4  #303ebf
color12 #4665da
```
**Magneta Colors**:
```
color5  #aa30bf
color13 #bc43d2
```
**Cyan Colors**:
```
color6  #30a7bf
color14 #67c6da
```
**White Colors**:
```
color7  #bfbfb8
color15 #ebece6
```
