yay -S --noconfirm --needed \
  signal-desktop spotify dropbox libappindicator-gtk3 \
  obsidian typora libreoffice obs-studio kdenlive \
  pinta xournalpp

# Copy over Omarchy applications
source ~/.local/share/archrice/bin/archrice-sync-applications || true
