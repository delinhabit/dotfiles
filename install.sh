#!/bin/bash
git submodule init .vim/
git submodule update --init --recursive .vim/
ln -sFf "$(pwd)"/.vim "$HOME"/

git submodule init .oh-my-zsh/
git submodule update --init --recursive .oh-my-zsh/
ln -sFf "$(pwd)"/.oh-my-zsh "$HOME"/

for dotfile in $(ls -1Ap | grep -v "\.git" | grep "^\.[^\.]*$")
do
    ln -sF "$(pwd)"/"${dotfile}" "$HOME"/
done
