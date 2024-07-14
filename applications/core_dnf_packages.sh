DNF_CORE_PACKAGE_INSTALL_LIST=(
        kitty
        vim
        waybar
        wofi
        zoxide
        zsh
)

sudo dnf update

for dnf_core_package_name in ${DNF_CORE_PACKAGE_INSTALL_LIST[@]}; do
        if ! sudo dnf list --installed | grep -q "^\<$dnf_core_package_name\>"; then
                echo "installed $dnf_core_package_name..."
                sleep .5
                sudo dnf install "$dnf_core_package_name" -yq
                echo "$dnf_core_package_name installed"
        else
                echo "$dnf_core_package_name already installed"
        fi
done
