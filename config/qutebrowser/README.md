# Qutebrowser Docs
[Qute Browser](https://qutebrowser.org/) is a Vim-style Web Browser.<br/>
[Main Documentation](https://qutebrowser.org/doc/help/configuring.html)

## Headers
- [Install + Config](#installation)
- [QuteBrowser ScreenShots](#screenshots)
- [QuteBrowser CheatSheet](#cheatsheet)
- [.config/qutebrowser/config.py](#configqutebrowserconfigpy)

## Installation
```
$ pacman -S qutebrowser
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/qutebrowser/install
```

## ScreenShots
> Qute Browser is clean, fast and AWESOME!
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/qutebrowser.clean.png" alt="Clean Interface" width="512" height="288">

> Forcing Dark Mode Everywhere :D
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/qutebrowser.darkmode.png" alt="Auto Dark Mode" width="512" height="288">

> Power in your hands with awesome keyboard shortcuts
<img src="https://raw.githubusercontent.com/mahdymirzade/assets/main/dotfiles/qutebrowser.keyboard.png" alt="Keyboard Shortcuts" width="512" height="288">

## CheatSheet
> Basic keybindings

| Key         | Functionality               |
| ----------- | --------------------------- |
| :           | Enter command line          |
| /           | Search (n: forth, N: back)  |
| Arrows/hjkl | Move around a webpage       |
| O           | Open URL / Search           |
| GO          | Edit Current URL            |
| D           | Close current tab           |
| U           | Restore the closed tab      |
| L           | Next history record (forth) |
| H           | Prev history record (back)  |
| F           | Click on sth without mouse  |
| Shift + O   | Open URL in a new tab       |
| Shift + J   | Next Tab                    |
| Shift + K   | Prev Tab                    |
| Alt + 1-9   | Switch between tabs 1-9     |

Original help page and [training course](https://www.shortcutfoo.com/app/dojos/qutebrowser) are your best friends.<br/>
You can get to qutebrowser's help page by ':help'.

## .config/qutebrowser/config.py
**Load Autoconfig + Dark reader + Auto Save + 75% Zoom + Open Url's in MPV**:
```
config.load_autoconfig()
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.preferred_color_scheme","dark")
config.set("auto_save.session", True)
config.set("zoom.default", "75%")
config.bind('B', 'hint links spawn mpv {hint-url}')
```
**JS, cookies, encoding, headers, fonts, status-bar**:
```
c.content.autoplay = False
c.content.cookies.accept = "all"
c.content.default_encoding = "utf-8"
c.content.headers.user_agent = (
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)"
    " Chrome/80.0.3987.163 Safari/537.36"
)
c.statusbar.widgets = ["keypress", "progress", "url", "scroll"]
```
**Basic Colors**:
```
palette = {
    'background': '#282a36',
    'background-alt': '#282a36',
    'background-attention': '#181920',
    'border': '#282a36',
    'current-line': '#44475a',
    'selection': '#44475a',
    'foreground': '#f8f8f2',
    'foreground-alt': '#e0e0e0',
    'foreground-attention': '#ffffff',
    'comment': '#6272a4',
    'cyan': '#8be9fd',
    'green': '#50fa7b',
    'orange': '#ffb86c',
    'pink': '#ff79c6',
    'purple': '#bd93f9',
    'red': '#ff5555',
    'yellow': '#f1fa8c'
}
```
**Padding**:
```
spacing = {
    'vertical': 2,
    'horizontal': 2
}
padding = {
    'top': spacing['vertical'],
    'right': spacing['horizontal'],
    'bottom': spacing['vertical'],
    'left': spacing['horizontal']
}
```
**Set Colors & Padding**:
```
c.colors.completion.category.bg = palette['background']
c.colors.completion.category.border.bottom = palette['border']
c.colors.completion.category.border.top = palette['border']
c.colors.completion.category.fg = palette['foreground']
c.colors.completion.even.bg = palette['background']
c.colors.completion.odd.bg = palette['background-alt']
c.colors.completion.fg = palette['foreground']
c.colors.completion.item.selected.bg = palette['selection']
c.colors.completion.item.selected.border.bottom = palette['selection']
c.colors.completion.item.selected.border.top = palette['selection']
c.colors.completion.item.selected.fg = palette['foreground']
c.colors.completion.match.fg = palette['orange']
c.colors.completion.scrollbar.bg = palette['background']
c.colors.completion.scrollbar.fg = palette['foreground']
c.colors.downloads.bar.bg = palette['background']
c.colors.downloads.error.bg = palette['background']
c.colors.downloads.error.fg = palette['red']
c.colors.downloads.stop.bg = palette['background']
c.colors.downloads.system.bg = 'none'
c.colors.hints.bg = palette['background']
c.colors.hints.fg = palette['purple']
c.hints.border = '1px solid ' + palette['background-alt']
c.colors.hints.match.fg = palette['foreground-alt']
c.colors.keyhint.bg = palette['background']
c.colors.keyhint.fg = palette['purple']
c.colors.keyhint.suffix.fg = palette['selection']
c.colors.messages.error.bg = palette['background']
c.colors.messages.error.border = palette['background-alt']
c.colors.messages.error.fg = palette['red']
c.colors.messages.info.bg = palette['background']
c.colors.messages.info.border = palette['background-alt']
c.colors.messages.info.fg = palette['comment']
c.colors.messages.warning.bg = palette['background']
c.colors.messages.warning.border = palette['background-alt']
c.colors.messages.warning.fg = palette['red']
c.colors.prompts.bg = palette['background']
c.colors.prompts.border = '1px solid ' + palette['background-alt']
c.colors.prompts.fg = palette['cyan']
c.colors.prompts.selected.bg = palette['selection']
c.colors.statusbar.caret.bg = palette['background']
c.colors.statusbar.caret.fg = palette['orange']
c.colors.statusbar.caret.selection.bg = palette['background']
c.colors.statusbar.caret.selection.fg = palette['orange']
c.colors.statusbar.command.bg = palette['background']
c.colors.statusbar.command.fg = palette['pink']
c.colors.statusbar.command.private.bg = palette['background']
c.colors.statusbar.command.private.fg = palette['foreground-alt']
c.colors.statusbar.insert.bg = palette['background-attention']
c.colors.statusbar.insert.fg = palette['foreground-attention']
c.colors.statusbar.normal.bg = palette['background']
c.colors.statusbar.normal.fg = palette['foreground']
c.colors.statusbar.passthrough.bg = palette['background']
c.colors.statusbar.passthrough.fg = palette['orange']
c.colors.statusbar.private.bg = palette['background-alt']
c.colors.statusbar.private.fg = palette['foreground-alt']
c.colors.statusbar.progress.bg = palette['background']
c.colors.statusbar.url.error.fg = palette['red']
c.colors.statusbar.url.fg = palette['foreground']
c.colors.statusbar.url.hover.fg = palette['cyan']
c.colors.statusbar.url.success.http.fg = palette['green']
c.colors.statusbar.url.success.https.fg = palette['green']
c.colors.statusbar.url.warn.fg = palette['yellow']
c.statusbar.padding = padding
c.colors.tabs.bar.bg = palette['selection']
c.colors.tabs.even.bg = palette['selection']
c.colors.tabs.even.fg = palette['foreground']
c.colors.tabs.indicator.error = palette['red']
c.colors.tabs.indicator.start = palette['orange']
c.colors.tabs.indicator.stop = palette['green']
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.odd.bg = palette['selection']
c.colors.tabs.odd.fg = palette['foreground']
c.colors.tabs.selected.even.bg = palette['background']
c.colors.tabs.selected.even.fg = palette['foreground']
c.colors.tabs.selected.odd.bg = palette['background']
c.colors.tabs.selected.odd.fg = palette['foreground']
c.tabs.padding = padding
c.tabs.indicator.width = 1
c.tabs.favicons.scale = 1
```

**Short Links**
- [Main Menu](./../../../../)
- [Back to Config Dir](./../)
