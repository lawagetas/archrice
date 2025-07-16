echo "Add new matte black theme"

BACKGROUNDS_DIR=~/.config/archrice/backgrounds/
download_background_image() {
  local url="$1"
  local path="$2"
  gum spin --title "Downloading $url as $path..." -- curl -sL -o "$BACKGROUNDS_DIR/$path" "$url"
}

if [[ ! -L "~/.config/archrice/themes/matte-black" ]]; then
  ln -snf ~/.local/share/archrice/themes/matte-black ~/.config/archrice/themes/
  source ~/.local/share/archrice/themes/matte-black/backgrounds.sh
fi
