#!/bin/bash

mkdir config
mkdir share

cp -rf ~/.config/i3/ ./config/
cp -rf ~/.config/rofi/ ./config/
cp -rf ~/.config/dunst/ ./config/
cp -rf ~/.config/kitty/ ./config/
cp -rf ~/.config/neofetch/ ./config/
cp -rf ~/.config/picom/ ./config/

cp ~/.bashrc ./
cp ~/.zshrc ./
cp ~/.p10k.zsh ./

cp -rf ~/.local/share/icons/Simply_blue_circles/ ./share/
cp -rf /usr/share/rofi ./share/
