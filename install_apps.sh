#!/usr/bin/env bash
# update packages
sudo pacman -Syu
# install vlc and video drivers
sudo pacman -Sy --noconfirm vlc
# install atom text-editor
sudo pacman -Sy --noconfirm atom
# install neofetch (system info)
sudo pacman -Sy --noconfirm neofetch
# directory view in tree-style
sudo pacman -Sy --noconfirm tree
# output coloring
sudo pacman -Sy --noconfirm lolcat
# install C compiler
sudo pacman -Sy --noconfirm gcc
# install java runtime enviroment
sudo pacman -Syu --noconfirm jre-openjdk
# install java compiler
sudo pacman -Syu --noconfirm jdk-openjdk
# python package manager
sudo pacman -Syu --noconfirm python-pip

sudo pacman -Syu --noconfirm fortune-mod

sudo pacman -Syu --noconfirm discord

sudo pacman -Syu --noconfirm cowsay

# update everything
sudo pacman -Syu --noconfirm

# install and set Snap
sudo pamac install snapd
sudo systemctl enable --now snapd.socket
# create symbolic link
sudo ln -s /var/lib/snapd/snap /snap

# install spotify
sudo snap install spotify
