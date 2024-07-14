#!/bin/bash

./applications/core_dnf_packages.sh
./applications/user_dnf_packages.sh
./applications/flatpak_packages.sh

cp -R ./settings/.config/* ~/.config
cp -R ./settings/.*rc ~
