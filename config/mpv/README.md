# MPV Docs
[MPV](https://mpv.io) is a free, open source, and cross-platform media player.<br/>
[Main Documentation](https://mpv.io/manual/master/)

## Headers
- [Install + Config](#installation)
- [MPV ScreenShots](#screenshots)
- [MPV CheatSheet](#cheatsheet)
- [.config/mpv/mpv.conf](#configmpvmpvconf)
- [.config/mpv/input.conf](#configmpvinputconf)

## Installation
```
$ pacman -S mpv
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/mpv/install
```

## ScreenShots
> MPV is a simple media player.

<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/mpv.png" alt="MPV Pic" width="512" height="341">

## CheatSheet
| Key                       | Functionality                     |
| ------------------------- | --------------------------------- |
| UP                        | +5 volume                         |
| DOWN                      | -5 volume                         |
| RIGHT                     | Seek video +5s                    |
| LEFT                      | Seek video -5s                    |
| Shift + UP                | Seek video +10s                   |
| Shift + DOWN              | Seek video -10s                   |
| Shift + RIGHT             | Rotate 90degrees to the right     |
| Shift + LEFT              | Rotate 90degrees to the left      |
| Scroll-UP                 | +5 volume                         |
| Scroll-DOWN               | -5 volume                         |
| Scroll-RIGHT/LEFT         | Change video position             |
| Shift + Scroll-UP         | Seek +5s video                    |
| Shift + Scroll-DOWN       | Seek -5s video                    |
| Alt + =                   | Zoom in                           |
| Alt + -                   | Zoom out                          |
| Alt + Backspace           | Reset zooming                     |

## .config/mpv/mpv.conf
### Main Configuration of MPV Media Player.
**Max Volume**:
```
volume-max=200
```
**Auto-Save Video Position**:
```
save-position-on-quit
```
**Youtube-dl Configuration - Default quality to 480p + get subtitles**:
```
ytdl-format=bestvideo[height<=480]+bestaudio/best[height<=480]
ytdl-all-subs
```

## .config/mpv/input.conf
### Interface Configuration of MPV Media Player.
**Set UP/DN to change volume**:
```
UP                  add volume  5
DOWN                add volume -5
```
**Set Shift+UP/DN to change position +/-10s**:
```
Shift+UP            seek  10
Shift+DOWN          seek -10
```
**Set Shift+RT/LT to rotate video**:
```
Shift+RIGHT         add video-rotate  90
Shift+LEFT          add video-rotate -90
```
**Set Scroll-UP/DN to change volume**:
```
WHEEL_UP            add volume  5
WHEEL_DOWN          add volume -5
```
**Set Shift+Scroll-UP/DN to change position +/-5s**:
```
Shift+WHEEL_UP      seek  5
Shift+WHEEL_DOWN    seek -5
```
**Set Alt+=/- to zoom in/out**:
```
Alt+=               add video-zoom  0.25
Alt+-               add video-zoom -0.25
```
**Set Alt+Backspace to reset zooming**:
```
Alt+BS              set video-zoom 0; set video-pan-x 0; set video-pan-y 0
```
