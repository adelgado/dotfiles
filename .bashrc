case $(uname) in 
Linux)
	# If not running interactively, don't do anything
	if [ -z "$PS1" ]; then
		return
	fi

	if [ -e $(which pacman) ]
	then
		alias i='sudo pacman -Syu'
		alias s='sudo pacman -Ss'
	fi



	alias ls='ls -lF --color=always'
	;;
Darwin)
	# If not running interactively, don't do anything
	[[ $- != *i* ]] && return

	alias ls='ls -lFGh'
	;;
esac

alias la='ls -A'
alias untar='tar -xvzf'
alias cp='cp -v'
alias mv='mv -v'

export EDITOR="vim"

parse_git_branch() {
	echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'`
}

PS1="\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] $(parse_git_branch) \n \[\e[1;32m\]$\[\e[0m\] "

# Make bash check its window size after a process completes
shopt -s checkwinsize

# Set editing mode to vi
set -o emacs
