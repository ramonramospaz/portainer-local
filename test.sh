#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)

if [ ! -d ~/.local ]; then
	mkdir .local
	mkdir .local/share
	mkdir .local/share/applications
fi

if [ ! -d ~/.local/share ]; then
        mkdir .local/share
        mkdir .local/share/applications
fi

if [ ! -d ~/.local/share/applications ]; then
	mkdir .local/share/applications
fi

if [ -d ~/.local/share/applications ]; then
	if [ ! -f ~/.local/share/applications/portainer-local.desktop ]; then
		echo "[Desktop Entry]" >> ~/.local/share/applications/portainer-local.desktop
		echo "Version=1.0" >> ~/.local/share/applications/portainer-local.desktop
		echo "Type=Application" >> ~/.local/share/applications/portainer-local.desktop
		echo "Name=Portainer" >> ~/.local/share/applications/portainer-local.desktop
		echo "Icon=$DIRECTORY/portainer.png" >> ~/.local/share/applications/portainer-local.desktop 
		echo "Exec=$DIRECTORY/portainer-run.sh" >> ~/.local/share/applications/portainer-local.desktop
		echo "Comment=Docker Client" >> ~/.local/share/applications/portainer-local.desktop
		echo "Categories=Development;Docker;Containers" >> ~/.local/share/applications/portainer-local.desktop
		echo "Terminal=false" >> ~/.local/share/applications/portainer-local.desktop
	fi
fi

