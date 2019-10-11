# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(git)

# Golang
export PATH="$PATH:$HOME/go/bin"

source $ZSH/oh-my-zsh.sh

function bgSet {
	cp "$1" ~/.background
	hsetroot -cover ~/.background
}

alias workerserver="ssh ryan@192.168.1.120 -i $HOME/Keys/workerserver"

function crtsh {
        curl -s https://crt.sh/?q=%.$1 | sed ‘s/<\/\?[^>]\+>//g’ | grep $1
}

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ryan/go/bin:/home/ryan/.vimpkg/bin"
