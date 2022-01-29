#!/bin/bash

function setting() {
	mv $DIR/vim_settings $HOME/vimrc
	git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
	git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
	git clone --depth 1 https://github.com/lifepillar/vim-mucomplete.git ~/.vim/pack/plugins/start/vim-mucomplete
}

DIR=$PWD
cd $HOME

if [ $PWD = $HOME ] 
then
	setting
fi

rm -rf $DIR
