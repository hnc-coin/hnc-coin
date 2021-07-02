
Debian
====================
This directory contains files used to package helleniccoind/helleniccoin-qt
for Debian-based Linux systems. If you compile helleniccoind/helleniccoin-qt yourself, there are some useful files here.

## helleniccoin: URI support ##


helleniccoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install helleniccoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your helleniccoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/helleniccoin128.png` to `/usr/share/pixmaps`

helleniccoin-qt.protocol (KDE)

