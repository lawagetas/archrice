if ! command -v nvim &>/dev/null; then
  yay -S --noconfirm --needed nvim luarocks tree-sitter-cli

  # Install LazyVim
  rm -rf ~/.config/nvim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cp -R ~/.local/share/archrice/config/nvim/* ~/.config/nvim/
  rm -rf ~/.config/nvim/.git
  echo "vim.o.wrap = true" >>~/.config/nvim/lua/config/options.lua
  echo "vim.o.linebreak = true" >>~/.config/nvim/lua/config/options.lua
fi
