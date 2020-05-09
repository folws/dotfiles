
# Dotfiles
```
    ██████           ████                          ███         █████           █████
   ███▒▒███         ▒▒███                         ▒███        ▒▒███           ▒▒███
  ▒███ ▒▒▒   ██████  ▒███  █████ ███ █████  █████ ▒███      ███████   ██████  ███████    █████
 ███████    ███▒▒███ ▒███ ▒▒███ ▒███▒▒███  ███▒▒  ▒███     ███▒▒███  ███▒▒███▒▒▒███▒    ███▒▒
▒▒▒███▒    ▒███ ▒███ ▒███  ▒███ ▒███ ▒███ ▒▒█████ ▒███    ▒███ ▒███ ▒███ ▒███  ▒███    ▒▒█████
  ▒███     ▒███ ▒███ ▒███  ▒▒███████████   ▒▒▒▒███▒▒▒     ▒███ ▒███ ▒███ ▒███  ▒███ ███ ▒▒▒▒███
  █████    ▒▒██████  █████  ▒▒████▒████    ██████  ███    ▒▒████████▒▒██████   ▒▒█████  ██████
 ▒▒▒▒▒      ▒▒▒▒▒▒  ▒▒▒▒▒    ▒▒▒▒ ▒▒▒▒    ▒▒▒▒▒▒  ▒▒▒      ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒     ▒▒▒▒▒  ▒▒▒▒▒▒
```
This repository consists of configuration for any tools I use within my [Arch Linux][arch] and [neovim][] development environment.
I use a *lot* of tools which culminate in a sort of Unix IDE,
I use [stow][] to link all of the required configuration into my home directory.

## Overview
- [Requirements](#requirements)
- [Quick Start](#quick-start)
- [Dots](#dots)
- [Screenshots](#screenshots)
- [License](#unlicense)
## Requirements

### GNU/stow
> If planning to use stow to manage the (symlinked) dots

Your distribution repositories is very likely to contain `stow`, for example in Arch Linux, all you have to do to install it is:
`sudo pacman -S stow`
or on Ubuntu/Debian you can install stow by executing:
`apt install stow`

## Rice-insallation

### Install & Update Script
To **install** or **update** configs on your system, you should run the [install_script][]. To do that, you may either download and run the script manually, or use the following cURL or Wget command:
```sh
curl -sL https://raw.githubusercontent.com/folws/dotfiles/master/bootstrap | bash
```

```sh
wget -qO- https://raw.githubusercontent.com/folws/dotfiles/master/bootstrap | bash
```

## Dots (WIP)

### Anne Pro 2
Holds the light and keymap profiles for my anne pro keyboard

### Bin
Holds global and useful helper scripts required by most dots.

### Firefox
##### userChrome
Based upon [mut-ex]'s minimal-functional-firefox but cleaned up and aware of colors generated by pywal in `.Xresources`. Also added is an auto hiding tabbar with reduced tab sizes to have a more minimal UI.

##### Startpage
Modified version of KorySchneider's tab [Github][tab].

#### Polybar

My config is a modified Polybar-4 by adi1090x. - [GitHub][adi1090x]

## Screenshots
![screenshot](demo.png)
+ wm: i3-gaps
+ terminal: kitty
+ shell: fish
+ font: Fira Code Nerd Font Patch
+ bar: polybar
##
![screenshot2](demokde.png)
+ wm: kde-plasma
+ terminal: konsole
+ shell: fish
+ font: Source Code Pro
+ bar/dock: latte-dock

## Unlicensed

This are my personal dots so do what you want.
Find the full [unlicense][] in the `UNLICENSE` file, but here's a snippet.

>This is free and unencumbered software released into the public domain.
>
>Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

Do what you want. Learn as much as you can. Unlicense more software.

[install_script]: https://raw.githubusercontent.com/folws/dotfiles/master/install
[unlicense]: http://unlicense.org/
[arch]: https://www.archlinux.org/
[stow]: http://www.gnu.org/software/stow/
[yay]: https://github.com/Jguer/yay
[aur]: https://aur.archlinux.org/
[picom]: https://wiki.archlinux.org/index.php/Picom
[fish]: http://fishshell.com/
[neovim]: https://neovim.io/
[mut-ex]: https://github.com/mut-ex/minimal-functional-fox
[tab]: https://github.com/KorySchneider/tab
[adi1090x]: https://github.com/adi1090x/polybar-themes
