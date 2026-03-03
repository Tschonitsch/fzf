# FZF Package & Utility Scripts for Arch Linux

A collection of `fzf`-powered helper scripts for Arch Linux to
simplify:

-   Repository package installation
-   AUR package installation
-   Package removal
-   Manpage browsing
-   Wallpaper switching (via swww)
-   Central launcher menu

------------------------------------------------------------------------

## Requirements

Make sure the following packages are installed:

-   fzf
-   pacman
-   yay (for AUR support)
-   swww (for wallpaper script)

------------------------------------------------------------------------

# Included Scripts

## 1. Repo Install (install.sh)

-   Lists all official repository packages
-   Uses fzf with preview (`pacman -Sii`)
-   Multi-select enabled
-   Installs selected packages via:

``` bash
sudo pacman -S --noconfirm
```

------------------------------------------------------------------------

## 2. AUR Install (aur-install.sh)

-   Lists AUR packages
-   Preview includes:
    -   Package info
    -   PKGBUILD view
-   Multi-select enabled
-   Installs via:

``` bash
yay -S --noconfirm
```

------------------------------------------------------------------------

## 3. Remove Package (remove.sh)

-   Lists installed packages
-   Preview shows `pacman -Qi` info
-   Multi-select enabled
-   Removes with dependencies:

``` bash
sudo pacman -Rns --noconfirm
```

------------------------------------------------------------------------

## 4. Manpage Viewer (man.sh)

-   Select package name from repo list
-   Preview shows:

``` bash
man <package>
```

-   Opens selected manpage directly

------------------------------------------------------------------------

## 5. Wallpaper Switcher (wallpaper.sh)

-   Changes directory to:

``` bash
~/Pictures/Wallpaper
```

-   Select file via fzf
-   Applies wallpaper using:

``` bash
swww img <file> --transition-type none
```

Requires Wayland and swww running.

------------------------------------------------------------------------

## Main Launcher Script

Provides an fzf menu to launch:

-   Repo Install
-   AUR Install
-   Remove Package
-   Manpage Viewer
-   Wallpaper (swww)

Example:

``` bash
~/.config/scripts/menu.sh
```

------------------------------------------------------------------------

## Keybindings Inside FZF

  Key         Action
  ----------- ----------------------------
  Tab         Multi-select
  Alt + P     Toggle preview
  Alt + J/K   Scroll preview
  Alt + D/U   Half-page scroll
  Alt + B     Toggle PKGBUILD (AUR only)

------------------------------------------------------------------------

## Suggested Directory Structure

``` bash
~/.config/scripts/
├── install.sh
├── aur-install.sh
├── remove.sh
├── man.sh
├── wallpaper.sh
└── menu.sh
```

Make executable:

``` bash
chmod +x ~/.config/scripts/*.sh
```

------------------------------------------------------------------------