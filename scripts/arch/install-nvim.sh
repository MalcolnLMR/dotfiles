#! /bin/bash

echo "Install dependencies"
sudo pacman -S git make unzip gcc ripgrep xclip

echo "Install Departure Mono Fonts"
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DepartureMono.zip \
&& cd ~/.local/share/fonts \
&& unzip DepartureMono.zip \
&& rm DepartureMono.zip \
&& fc-cache -fv

echo "Installing nvim"
git clone https://github.com/malcolnlmr/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
