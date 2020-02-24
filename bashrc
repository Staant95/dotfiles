#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export PS1="\[\033[38;5;196m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;226m\]\h\[$(tput sgr0)\]\[\033[38;5;121m\]@\[$(tput sgr0)\]\[\033[38;5;45m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;171m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;196m\]]\[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias update="sudo pacman -Syu"
alias search="pacman -Ss"


alias confi3="vim ~/.config/i3/config"
alias confpoly="vim ~/.config/polybar/config"

