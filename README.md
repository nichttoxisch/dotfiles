## Dependencies for dwm (arch)
```bash
sudo pacman -Syu libx11 libxft libxinerama xorg-server xorg-xinit ttf-jetbrains-mono-nerd kitty dmenu nvim maim eza picom
```

## Installation
```bash
cd ~
ln -s dotfiles/bashrc .bashrc
ln -s dotfiles/xinitrc .xinitrc
ln -s dotfiles/Xresources .Xresources
cd .config
ln -s ../dotfiles/config/kitty kitty
ln -s ../dotfiles/config/nvim nvim
ln -s ../dotfiles/config/picom picom
```
