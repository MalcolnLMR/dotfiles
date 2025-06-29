# My dotfiles and ricing

## Installation (WIP)

Dependencies:

```bash
sudo pacman -S hyprland hyprpaper waybar wofi stow
```

as for waybar temperature module, you will need python, pip and python-requests. The dependency is installed system-wide bcz I think was easier than creating a venv to setup.

```bash
sudo pacman -S python python-pip python-requests
```

Then, clone this repo into your home folder, to be smt like `~/dotfiles`

### Usage

Just use `stow _package_` in the needed packages, the default one is from my laptop, and the `-desktop` is from my, well, desktop.
