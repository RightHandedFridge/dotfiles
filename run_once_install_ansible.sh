#!/bin/bash

install_arch() {
    sudo pacman -S --noconfirm ansible
}


if [ -f /etc/arch-release ]; then
    install_arch
else
    echo "Unsupported Distro"
    exit 1
fi

ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass
