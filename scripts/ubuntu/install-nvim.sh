#! /bin/bash

echo "Installing Dependencies"
sudo apt install git make unzip gcc ripgrep xclip -y

echo "Installing Departure Mono Font"
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DepartureMono.zip \
&& cd ~/.local/share/fonts \
&& unzip DepartureMono.zip \
&& rm DepartureMono.zip \
&& fc-cache -fv

echo "Install nvim"
git clone https://github.com/malcolnlmr/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
