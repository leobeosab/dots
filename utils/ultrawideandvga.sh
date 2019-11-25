xrandr --newmode "2560x1080_60.00"  230.00  2560 2720 2992 3424  1080 1083 1093 1120 -hsync +vsync || true
xrandr --addmode HDMI1 2560x1080_60.00 || true
xrandr --output DP2 --mode 1920x1080
xrandr --auto --output HDMI1 --mode 2560x1080_60.00 --primary --right-of DP2
xrandr --output eDP1 --off

hsetroot -cover ~/.background

$HOME/.config/polybar/launch.sh &> /dev/null

killall synergys
synergys --config $HOME/.config/synergy/config
