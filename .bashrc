#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

case $(uname) in 
Linux)
	alias ls='ls -lFt --color=always'
	;;
Darwin)
	alias ls='ls -lFtG'
	;;
esac

alias la='ls -A'
alias untar='tar -xvzf'
alias cp='cp -v'
alias mv='mv -v'

PS1='[\u@\h \W]\$ '
