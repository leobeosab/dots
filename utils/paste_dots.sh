echo "Pasting dots from $HOME/dots/themes/$1 to $HOME/"

cp -r $HOME/dots/base/.zshrc $HOME/dots/base/.vimrc $HOME/
cp -r $HOME/dots/base/.config/rofi $HOME/.config/

THEME=$HOME/dots/themes/$1/.config

cp -r $THEME/i3 $THEME/rofi $THEME/polybar $THEME/termite $THEME/compton $HOME/.config
cp $HOME/dots/themes/$1/.background $HOME/.background
