# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

source ~/.bash_aliases
# useful replacements for common filepaths

export dropbox=${HOME}/Dropbox
export documents=${dropbox}/Documents
export research=${documents}/research

# This changes caps lock key to ctrl - ctrl key remains 
setxkbmap -option ctrl:nocaps

