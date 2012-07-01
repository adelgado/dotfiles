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
PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[0m\] '
