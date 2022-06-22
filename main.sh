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
    mv config/{.vim,.vimrc}  $HOME/
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
    else
        move
    fi
}

clear
main
