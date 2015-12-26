#!/bin/sh

#if [ ! -d "$HOME/.zmesh" ]; then
#    echo "Installing zmesh for the first time"
#    git clone --depth=1 https://github.com/git4sroy/zmesh.git $HOME/.zmesh
#    cd "$HOME/.zmesh"
#    [ "$1" = "ask" ] && export ASK="true"
##    rake install
##else
#    echo "zmesh is already installed"
#fi
cp -r ~/zmesh ~/.zmesh
cd ${HOME}/.zmesh
rake install
