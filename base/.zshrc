# Zsh and Term setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
export LC_CTYPE=en_US.UTF-8
source $ZSH/oh-my-zsh.sh

# Alias
function bgSet {
	cp "$1" ~/.background
	hsetroot -cover ~/.background
}
function crtsh {
        curl -s https://crt.sh/?q=%.$1 | sed ‘s/<\/\?[^>]\+>//g’ | grep $1
}
function viewmd {
	pandoc "$1" -o tmp.html
	firefox tmp.html
	rm tmp.html
}

# Note Stuff
function leadingCaps {
	awk '{for(i=0;++i<=NF;){OFS=(i==NF)?RS:FS;printf toupper(substr($i,0,1)) substr($i,2) OFS }}' <<< "$1"
}

function newNote {
	d=`date +%Y-%m-%d`
	cd $HOME/devnotes/_posts
	cp template $d-$1.md
	
	formattedTitle="${1//-/ }"
	formattedTitle="$(leadingCaps $formattedTitle)"

	sed -i 's/title:/title: '"$formattedTitle"'/g' $d-$1.md
	sed -i 's/date:/date: '"$d"'/g' $d-$1.md

	vim $d-$1.md
}

alias workerserver="ssh ryan@192.168.1.120 -i $HOME/Keys/workerserver"
alias list="vim $HOME/.list"
alias c="clear"

# Path bullshit
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ryan/.vimpkg/bin"
export PATH="$PATH:/root/.gem/ruby/2.6.0/bin"
export PATH="$PATH:$HOME/go/bin"
