#! /bin/bash

sudo pacman -S zsh wget

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

chsh -s $(which zsh)
