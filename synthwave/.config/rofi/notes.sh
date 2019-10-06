ssh ryan@192.168.1.120 -i $HOME/Keys/workerserver "cd devnotes && ./launch.sh > /dev/null &" 
chromium --app=http://192.168.1.120:4000
