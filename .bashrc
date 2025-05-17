# colors
darkgrey="$(tput bold ; tput setaf 0)"
white="$(tput bold ; tput setaf 7)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
nc="$(tput sgr0)"

# exports
export PATH="${HOME}/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:"
export PATH="${PATH}/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:"
if [[ $(tty) == /dev/tty* ]]; then
    PS1='\[\e[38;5;196m\]┌──[\[\e[38;5;45m\]🥷fsociety♡ \[\e[38;5;201m\]dejavolfッ\[\e[38;5;196m\]]─[\[\e[38;5;201m\]\w\[\e[38;5;196m\]]\n└──╼\[\e[38;5;208m\]\$ \[\e[0m\]'
else
    PS1='\[\e[38;5;196m\]┌──[\[\e[38;5;45m\]🥷fsociety♡ \[\e[38;5;201m\]dejavolfッ\[\e[38;5;196m\]]─[\[\e[38;5;201m\]\w\[\e[38;5;196m\]]\n└──╼\[\e[38;5;208m\]\$ \[\e[0m\]'
fi
export LD_PRELOAD=""
export EDITOR="nvim"

# alias
alias ls="lsd --color auto"
alias vi="vim"
alias shred="shred -zf"
#alias python="python2"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"

#alias cat='bat --paging=never'

alias unlock="sudo rm /var/lib/pacman/db.lck"
alias cleanup="sudo sh ~/scripts/sysclean.sh"
alias mkdir="mkdir -p"

# System
alias update="sudo pacman -Syu"

clear

# source files
[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*
