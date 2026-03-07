#!/usr/bin/env bash

# download yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -r yay

# terminal
sudo pacman -S kitty

# git
git config --global user.email "bheebsh.research@gmail.com" 
git config --global user.name "bheebsh"

# media codecs
sudo pacman -S exfat-utils fuse-exfat a52dec faac faad2 flac jasper lame \
			  libdca libdv gst-libav libmad libmpeg2 libtheora libvorbis \
			  libxv wavpack x264 xvidcore libdvdcss libdvdread \
			  libdvdnav gmtk dvd+rw-tools dvdauthor dvgrab 

# statistical stuff
sudo pacman -S r python-pipx
pipx ensurepath
pipx install uv
pipx install radian

# software 
yay -a 1password
yay zen-browser-bin
yay visual-studio-code-bin
yay discord
yay steam
yay spotify


# aesthetic stuff
sudo pacman -S ttf-fira-code ttf-cascadia-code

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# eza themes to go with fish
git clone https://github.com/eza-community/eza-themes.git ~/.config/eza-themes/
mkdir -p ~/.config/eza
ln -sf -T "~/.config/eza-themes/themes/catpuccin-mocha.yml" ~/.config/eza/theme.yml

# move configs to the right place
cp -r kitty/ ~/.config/
cp -r fish/ ~/.config/
