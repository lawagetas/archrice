# Use dark mode for QT apps too (like VLC and kdenlive)
sudo pacman -S --noconfirm kvantum-qt5

# Prefer dark mode everything
sudo pacman -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Setup theme links
mkdir -p ~/.config/archrice/themes
for f in ~/.local/share/archrice/themes/*; do ln -s "$f" ~/.config/archrice/themes/; done

# Set initial theme
mkdir -p ~/.config/archrice/current
ln -snf ~/.config/archrice/themes/tokyo-night ~/.config/archrice/current/theme
source ~/.local/share/archrice/themes/tokyo-night/backgrounds.sh
ln -snf ~/.config/archrice/backgrounds/tokyo-night ~/.config/archrice/current/backgrounds
ln -snf ~/.config/archrice/current/backgrounds/1-Pawel-Czerwinski-Abstract-Purple-Blue.jpg ~/.config/archrice/current/background

# Set specific app links for current theme
ln -snf ~/.config/archrice/current/theme/hyprlock.conf ~/.config/hypr/hyprlock.conf
ln -snf ~/.config/archrice/current/theme/wofi.css ~/.config/wofi/style.css
ln -snf ~/.config/archrice/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/archrice/current/theme/btop.theme ~/.config/btop/themes/current.theme
mkdir -p ~/.config/mako
ln -snf ~/.config/archrice/current/theme/mako.ini ~/.config/mako/config
