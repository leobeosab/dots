#! /bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

touch $SCRIPTPATH/vimplugins

for d in $HOME/.vim/bundle/*/; do
    (cd $d; git config --get remote.origin.url) | tee -a $SCRIPTPATH/vimplugins
done
