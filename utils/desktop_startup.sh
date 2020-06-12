display=`xrandr | grep "connected primary" | awk {'print $1'}`
xrandr --output $display --mode 5120x1440
hsetroot -cover ~/.background
