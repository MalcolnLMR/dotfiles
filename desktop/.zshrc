# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=~/.config/composer/vendor/bin:$PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino"

plugins=(git)

# Secrets
source secrets_zshrc/alias_connections

source $ZSH/oh-my-zsh.sh
alias hsc="~/git/HeadsetControl/build/headsetcontrol"
alias s="kitten ssh"
alias pyvactivate="source ./venv/bin/activate"
alias pyvinit="python -m venv venv"
alias mount-android="aft-mtp-mount ~/mnt"
alias open="nautilus ."
