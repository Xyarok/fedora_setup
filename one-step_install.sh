# Update to latest system
sudo dnf upgrade

# Install core dnf packages
sudo dnf install kitty torbrowser-launcher waybar wofi zoxide zsh

# Install non core dnf packages
sudo dnf install gimp

# Upgrade flatpak
sudo flatpak upgrade

# Install flatpak packages
sudo flatpak install floorp onlyoffice steam

if "sudo flatpak install floorp" == true {} (
  sudo dnf remove firefox
)

# Install Oh My Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
