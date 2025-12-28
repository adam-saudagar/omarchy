yay -S --noconfirm --needed - < $OMARCHY_INSTALL/packaging/personal_yay.txt
mapfile -t packages < <(grep -v '^#' "$OMARCHY_INSTALL/packaging/personal_pacman.txt" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
