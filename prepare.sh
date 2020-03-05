#!/bin/bash

mkdir config
mkdir share
mkdir mozilla

cp -rf ~/.config/i3/ ./config/
cp -rf ~/.config/rofi/ ./config/
cp -rf ~/.config/dunst/ ./config/
cp -rf ~/.config/kitty/ ./config/
cp -rf ~/.config/neofetch/ ./config/
cp -rf ~/.config/picom/ ./config/

cp ~/.config/.bashrc ./config/

cp ~/.mozilla/firefox/SalfumProfile/prefs.js ./mozilla/
cp ~/.mozilla/firefox/SalfumProfile/user.js ./mozilla/
cp ~/.mozilla/firefox/SalfumProfile/chrome/userChrome.css ./mozilla/
cp ~/.mozilla/firefox/SalfumProfile/chrome/userContent.css ./mozilla/

cp -rf ~/.local/share/icons/Simply_blue_circles/ ./share/
cp -rf ~/.local/share/rofi ./share/

# etc
