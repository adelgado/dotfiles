#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

case $(uname) in 
Linux)
	alias ls='ls -l --color=always'
	;;
Darwin)
	alias ls='ls -lG'
	;;
esac

alias la='ls -a'
alias untar='tar -xvzf'
PS1='[\u@\h \W]\$ '
