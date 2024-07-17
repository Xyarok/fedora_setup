DNF_USER_PACKAGE_INSTALL_LIST=(
        gimp
        obs-studio
        torbrowser-launcher
        fontawesome-fonts
)

for dnf_user_package_name in ${DNF_USER_PACKAGE_INSTALL_LIST[@]}; do
        if ! sudo dnf list --installed | grep -q "^\<$dnf_user_package_name\>"; then
                echo "installed $dnf_user_package_name..."
                sleep .5
                sudo dnf install "$dnf_user_package_name" -yq
                echo "$dnf_user_package_name installed"
                # Install oh my zsh
                if ! sudo dnf list --installed | grep -q ${DNF_CORE_PACKAGE_INSTALL_LIST[@zsh]}; then
                        sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
                        echo "oh my zsh successfully installed"
                else
                        echo "oh my zsh failed to install"
                fi
        else
                echo "$dnf_user_package_name already installed"
        fi
done
