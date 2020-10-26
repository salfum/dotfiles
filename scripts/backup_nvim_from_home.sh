#!/bin/sh

newPath="/home/salfum/work/dotfiles_backup/nvim_"
dateVar="$(date '+%Y_%m_%d')"

rm -rf $newPath$dateVar
mkdir $newPath$dateVar
cp -r ~/.config/nvim "$newPath$dateVar"
