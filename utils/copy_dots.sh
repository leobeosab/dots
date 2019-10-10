echo "Copying dots from $HOME to $HOME/dots"

cp -r $HOME/.zshrc $HOME/.vimrc $HOME/dots/base/
cp -r $HOME/.config/rofi $HOME/dots/base/.config/
rm $HOME/dots/base/.config/rofi/config.rasi

cp -r $HOME/.config/i3 $HOME/.config/rofi $HOME/.config/polybar $HOME/.config/termite $HOME/.config/compton $HOME/dots/themes/$1/.config
