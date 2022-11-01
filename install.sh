#!/bin/bash
git submodule init .vim/
git submodule update --init --recursive .vim/

git submodule init .oh-my-zsh/
git submodule update --init --recursive .oh-my-zsh/

for dotfile in $(ls -1Ap | grep -v "\.git" | grep "^\.[^\.]*$")
do
    ln -sF "$(pwd)"/"${dotfile}" "$HOME"/"${dotfile//\//}"
done
