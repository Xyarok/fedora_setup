# Update to latest system
sudo dnf upgrade

# Install core dnf packages
sudo dnf install kitty
sudo dnf install waybar
sudo dnf install wofi
sudo dnf install zoxide
sudo dnf install zsh
sudo dnf install git

# Install non core dnf packages
sudo dnf install gimp

# Upgrade flatpak
sudo flatpak upgrade

# Install flatpak packages
sudo flatpak install floorp
sudo flatpak install onlyoffice
sudo flatpak install steam

# Install Oh My Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
