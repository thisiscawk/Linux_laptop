#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias opdate='sudo pacman -Syyu && yay -Syyu'

PS1='[\u@\h \W]\$ '
