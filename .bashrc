#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias la='ls -a'
alias untar='tar -xvzf'

PS1='[\u@\h \W]\$ '
