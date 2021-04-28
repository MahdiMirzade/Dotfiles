# VIM Docs
[VIM](https://www.vim.org) is a highly configurable text editor built to make creating and changing any kind of text very efficient. It is included as "vi" with most UNIX systems and with Apple OS X.<br/>
[Main Documentation](https://www.vim.org/docs.php)

## Headers
- [Install + Config](#installation)
- [VIM ScreenShots](#screenshots)
- [~/.vimrc](#vimrc)

## Installation
```
$ pacman -S vim
$ git clone https://github.com/mahdymirzade/dotfiles.git && cd dotfiles
$ ./config/vim/install
```

## ScreenShots
> Vim is just Vim.

<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/vim.png" alt="VIM Pic" width="512" height="280">

## ~/.vimrc
**Main configuration of VIM**
**Syntax coloring:**
```
syntax on
```
**Show line numbers:**
```
set number
highlight LineNr ctermfq=white
```
**Show matching brackets:**
```
set showmatch
```
**Search settings:**
```
set hlsearch
set smartcase
set ignorecase
set incsearch
```
**Tab indentation:**
```
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
```
**Display 5 lines above/below while scrolling:**
```
set scrolloff=5
```
**Fix common backspace problems:**
```
set backspace=indent,eol,start
```
**Set encoding:**
```
set encoding=utf-8
```
**Status line:**
```
set laststatus=2
hi StatusLine ctermfg=NONE ctermbg=red cterm=NONE
hi StatusLineNC ctermfg=black ctermbg=red cterm=NONE
hi User1 ctermfg=black ctermbg=magenta
hi User2 ctermfg=NONE ctermbg=NONE
hi User3 ctermfg=black ctermbg=blue
hi User4 ctermfg=black ctermbg=cyan
set statusline=\                    " Padding
set statusline+=%f                  " Path to the file
set statusline+=\ %1*\              " Padding & switch colour
set statusline+=%y                  " File type
set statusline+=\ %2*\              " Padding & switch colour
set statusline+=%=                  " Switch to right-side
set statusline+=\ %3*\              " Padding & switch colour
set statusline+=line                " of Text
set statusline+=\                   " Padding
set statusline+=%l                  " Current line
set statusline+=\ %4*\              " Padding & switch colour
set statusline+=of                  " of Text
set statusline+=\                   " Padding
set statusline+=%L                  " Total line
set statusline+=\                   " Padding
```
