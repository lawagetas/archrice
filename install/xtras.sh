if [ -z "$OMARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator gnome-keyring signal-desktop \
    obsidian-bin libreoffice obs-studio kdenlive \
    pinta xournalpp localsend-bin

  yay -S --noconfirm --needed typora ||
    echo -e "\e[31mFailed to install Typora. Continuing without!\e[0m"

  yay -S --noconfirm --needed spotify dropbox keepassxc ||
    echo -e "\e[31mFailed to install Spotify, Dropbox, and/or Keepassxc because of a keyserver problem. Continuing without!\e[0m"
fi

# Copy over Omarchy applications
source ~/.local/share/archrice/bin/archrice-refresh-applications || true
