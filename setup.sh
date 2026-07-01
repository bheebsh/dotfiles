#!/usr/bin/env bash

## Add RPM Fusion repositories
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# terminal
sudo dnf install kitty

# git
git config --global user.email "bheebsh.research@gmail.com" 
git config --global user.name "bheebsh"

# media codecs
sudo dnf install libavcodec-freeworld intel-media-driver

# statistical stuff
sudo dnf install R-core pipx
pipx ensurepath
pipx install uv
pipx install radian

# VS code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update &&
sudo dnf install code # or code-insiders

# positron
# download from: https://positron.posit.co/download.html

### software 

# 1password
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password

# brave browser
sudo dnf install dnf-plugins-core

sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo dnf install brave-browser


sudo dnf install discord
sudo dnf install steam
sudo dnf install lpf-spotify-client
sudo dnf install dropbox


# aesthetic stuff
sudo dnf install fira-code-fonts cascadia-code-fonts


curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# eza themes to go with fish
git clone https://github.com/eza-community/eza-themes.git ~/.config/eza-themes/
mkdir -p ~/.config/eza
ln -sf -T "~/.config/eza-themes/themes/catpuccin-mocha.yml" ~/.config/eza/theme.yml

