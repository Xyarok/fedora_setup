# flatpak packages
FLATPAK_PACKAGE_INSTALL_LIST=(
        floorp
        obsidian
        onlyoffice
        protonvpn
        vscodium
)

sudo flatpak update

# Install flatpak packages
for flatpak_package_name in ${FLATPAK_PACKAGE_INSTALL_LIST[@]}; do
        if ! flatpak list | grep -q $flatpak_package_name; then
                flatpak install "$flatpak_package_name"
        else
                echo "$flatpak_package_name already installed"
        fi
done
       
