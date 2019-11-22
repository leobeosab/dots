echo "Creating symlinks to dot files old files moved to /tmp/olddots"

OLDDOTS=/tmp/olddots
rm -rf $OLDDOTS
mkdir $OLDDOTS

mkdir -p $HOME/.config

archive_and_link() {
    IN_DIR=$1
    OUT_DIR=$2
    PRE=$3 # inserts characters before filename

    for file in $IN_DIR; do
        NAME=$(basename $file)
        NEW_FILE=$OUT_DIR/$PRE$NAME

        if [ -f -a "$NEW_FILE" ] && [ ! -L "$NEW_FILE"  ]
            then
            mv "$NEW_FILE" "$OLDDOTS/$NAME"
        fi
        ln -s -f $file $OUT_DIR/$PRE$NAME
    done
}

echo "--------- BASE DOTS ---------"

echo "Moving home dots"
echo $HOME/dots/base/home/*
archive_and_link "$HOME/dots/base/home/*" "$HOME" "." 

printf "\n"

echo "Moving .config dots"
echo $HOME/dots/base/config/*
archive_and_link "$HOME/dots/base/config/*" "$HOME/.config/"

THEMEFOLDER=$HOME/dots/themes/$1

if [ "$1" != "" ] && [ -d "$THEMEFOLDER" ]
    then
    
    echo "--------- THEME DOTS ---------"

    echo "Moving $1 home dots"
    echo $THEMEFOLDER/home/*
    archive_and_link "$THEMEFOLDER/home/*" "$HOME" "."

    printf "\n"

    echo "Moving $1 .config dots"
    echo $THEMEFOLDER/config/*
    archive_and_link "$THEMEFOLDER/config/*" "$HOME/.config"
fi

echo "Done! Enjoy your config!"
