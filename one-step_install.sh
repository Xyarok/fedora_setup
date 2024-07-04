#!/bin/bash

DNF_PACKAGE_INSTALL_LIST=(
	kitty
	torbrowser-launcher
	vim
	waybar
	wofi
	zoxide
	zsh
)

FLATPAK_PACKAGE_INSTALL_LIST=(
	floorp
	onlyoffice
	steam
)

# Update Fedora
sudo dnf upgrade -y

# Update flatpak
sudo flatpak update

# Install dnf package
for dnf_package_name in ${DNF_PACKAGE_INSTALL_LIST[@]}; do
	if ! sudo dnf list --installed | grep -q "^\<$dnf_package_name\>"; then
		echo "installed $dnf_package_name..."
		sleep .5
		sudo dnf install "$dnf_package_name" -yq
		echo "$dnf_package_name installed"
	else
		echo "$dnf_package_name already installed"
	fi
done

# Install flatpak packages
for flatpak_package_name in ${FLATPAK_PACKAGE_INSTALL_LIST[@]}; do
	if ! flatpak list | grep -q $flatpak_package_name; then
		flatpak install "$flatpak_package_name" -yq
	else
		echo "$flatpak_package_name already installed"
	fi
done

# Install Oh My Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
