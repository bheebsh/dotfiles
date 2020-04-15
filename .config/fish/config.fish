
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

set -x winhome /mnt/c/Users/benja
set -x dropbox $winhome/Dropbox
set -x documents $dropbox/Documents
set -x research $documents/research
set -x website $documents/website
set -x music $dropbox/Music
set -x photos $dropbox/Pictures
set -x programming $documents/programming
set -x st3 ~/.config/sublime-text-3/Packages/User

alias r 'radian'

if test -e /usr/local/stata
  set PATH $PATH /usr/local/stata
end