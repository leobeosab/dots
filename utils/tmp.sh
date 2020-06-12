display= xrandr | grep "connected primary" | awk {'print $1'}
echo $display
