#!/bin/bash

# --- --- --- --- --- --- --- ---
#
# date:        2022-21-22
# name:        Andres J.
# autor:       and0.0bna
# version:     0.0
#
# --- --- --- --- --- --- --- ---

RECOVERY=recovery_vim

function move() {
    mv ./src/{vim,vimrc}  $HOME/
}

function rename() {
    mv $HOME/vim $HOME/.vim 
    mv $HOME/vimrc $HOME/.vimrc

}

function recovery() {
    mkdir $HOME/$RECOVERY
    mv $HOME/{.vim,.vimrc} $HOME/$RECOVERY
}

function main() {
    if [[ -f $HOME/.vimrc && -d $HOME/.vim ]] 
    then
        recovery
        move
        rename
    else
        move
        rename
    fi
}

clear
main
