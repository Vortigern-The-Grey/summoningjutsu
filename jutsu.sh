#!/usr/bin/env bash
# Assuming script is running on Fedora

cd ~/

# Ensure git is installed
sudo dnf update -y && sudo dnf upgrade -y

# System essentials from hyprland wiki (https://wiki.hypr.land/Useful-Utilities/Must-have/)
sudo dnf install swaync && pipewire && wireplumber && qt5-wayland && qt6-wayland -y

# Hyprland things
sudo dnf install hyprland && hyprlock && hyprpaper && hyprshot && kitty && waybar && wofi -y

# nvim things
sudo dnf copr enable dejan/lazygit
sudo dnf install git && nvim && ripgrep && lazygit -y

# Install preferred Nerd Font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaCode.zip
unzip CascadiaCode.zip
rm CascadiaCode.zip
cp CascadiaCode ~/.local/fonts/CaskaydiaCove
rm -rf CascadiaCode


# Install wizdots
git clone https://github.com/Vortigern-The-Grey/wizdots ~/.config
git clone https://github.com/Vortigern-The-Grey/nvim ~/.config/nvim
git clone https://github.com/quantumfate/wofi ~/.config/wofi

# Theme symlinks
ln -s ~/.config/themes/WhiteSur/ .icons/whitesur-icon-config
ln -s ~/.config/themes/Catppuccin-Blue-Dark/ .themes/mocha-theme-config
