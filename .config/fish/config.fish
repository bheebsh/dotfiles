
# This changes caps lock key to ctrl - ctrl key remains 
setxkbmap -option ctrl:nocaps

# Helpful aliases for git

# This one is for keeping up with config files
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME/'

alias gc 'git commit'
alias gcm 'git commit -m '
alias gca 'git commit -a -m '
alias ga 'git add'
alias gp 'git push'
alias gs 'git status'

# Add other helpful aliases
alias la 'ls -a'
alias ll 'ls -l'
alias lla 'ls -la'

# Copy file to clipboard
alias clip-file 'xclip -sel clip < '

# Connect to Duke VPN and VM 
alias dukevpn 'sudo openconnect portal.duke.edu'
alias ssri-vm 'read -s -p "NetID:" user ; echo ; read -s -p "Password:" password; xfreerdp /f /v:ssri-share-pap3.oit.duke.edu /d:WIN /u:$user /g:oit-srdsgw-pap1.win.duke.edu /p:$password </dev/null &>/dev/null &'

# Set peripherals for laptop
alias set-trackpad 'xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" 0.6'
alias set-mx2s 'xinput set-prop "MX Master 2S Mouse" "libinput Accel Speed" 1.0'

# Open LoL
alias league 'nohup lutris lutris:rungame/league-of-legends &>/dev/null &'
# alias lol-fix "sudo bash -c 'echo "abi.vsyscall = 0" >> /etc/sysctl.config && sysctl -p'"

export PATH=/usr/local/stata16:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games


# useful replacements for common filepaths
set -x dropbox ~/Dropbox
set -x documents $dropbox/Documents
set -x research $documents/research
set -x website $documents/website
set -x music $dropbox/Music
set -x photos $dropbox/Pictures
set -x st3 ~/.config/sublime-text-3/Packages/User
