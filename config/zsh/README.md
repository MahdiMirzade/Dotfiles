# ZSH Docs
[ZSH](https://www.zsh.org) is a shell designed for interactive use, although it is also a powerful scripting language.<br/>
[Main Documentation](https://wiki.archlinux.org/index.php/Zsh)

## Headers
- [Install + Config](#installation)
- [ZSH ScreenShots](#screenshots)
- [ZSH CheatSheet](#cheatsheet)
- [~/.zshrc](#zshrc)

## Installation
```
$ pacman -S zsh
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/zsh/install
```

## ScreenShots
> Oh-my-zsh is feauterful.

<img src="https://camo.githubusercontent.com/3ec75cb1c3278cce3c661d3bcf72a4eca75db241a6ace648ea014b02f3f44458/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6f686d797a73682f6f682d6d792d7a73682d6c6f676f2e706e67" alt="OH-MY-ZSH Pic" width="512" height="316">

> Fwalch is the theme I use.

<img src="https://user-images.githubusercontent.com/49100982/108254824-85cad000-716c-11eb-9b7a-fe9e24131df7.jpg" alt="fwalch" width="512" height="345">

## CheatSheet
> Fast Aliases

| Key                       | Functionality                                 |
| ------------------------- | --------------------------------------------- |
| $ e [file]                | $ vim [file]                                  |
| $ sue [file]              | $ sudo vim [file]                             |
| $ pacman                  | $ sudo pacman                                 |
| $ p [options]             | $ pacman [options]                            |
| $ t [options]             | $ trizen [options]                            |
| $ myip                    | $ curl http://ipecho.net/plain; echo          |

## ~/.zshrc
**Main configuration of ZSH**
**Fix useful commands colorizing:**
```
alias pacman='sudo pacman --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias diff='diff --color=auto'
```
**Set useful aliases:**
```
alias e="vim"
alias sue="sudo vim"
alias p="pacman"
alias t="trizen"
alias myip="curl http://ipecho.net/plain; echo"
```
**Set favorite theme:**
```
ZSH_THEME="fwalch"
```
**Set terminal editor, language:**
```
export LANG=en_US.UTF-8
export EDITOR='vim'
```
