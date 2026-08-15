## Dependencies for dwm (arch)
```bash
sudo pacman -Syu base-devel git libx11 libxft libxineriama xorg-server xorg-xinit ttf-jetbrains-mono-nerd kitty dmenu nvim maim
```

## Installation
```bash
cd ~
ln -s dotfiles/bashrc .bashrc
ln -s dotfiles/xinitrc .xinitrc
ln -s dotfiles/Xresources .Xresources
cd .config
ln -s dotfiles/config/kitty kitty
ln -s dotfiles/config/nvim nvim
```
