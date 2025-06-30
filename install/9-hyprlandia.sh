yay -S --noconfirm --needed \
  hyprland hyprshot hyprpicker hyprlock hypridle hyprpolkitagent hyprland-qtutils \
  wofi waybar mako swaybg \
  xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# Start Hyprland on first session
echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.bash_profile
echo -e "if status --is-login\n\tif test (tty) = /dev/tty1\n\t\texec Hyprland\n\tend\nend" >~/.config/fish/config.fish
