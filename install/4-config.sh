# Copy over default configs
cp -R ~/.local/share/archrice/config/* ~/.config/

# Ensure application directory exists for update-desktop-database
mkdir -p ~/.local/share/applications

# Setup GPG configuration with multiple keyservers for better reliability
sudo mkdir -p /etc/gnupg
sudo cp ~/.local/share/archrice/default/gpg/dirmngr.conf /etc/gnupg/
sudo chmod 644 /etc/gnupg/dirmngr.conf
sudo gpgconf --kill dirmngr || true
sudo gpgconf --launch dirmngr || true

# Use default bashrc
echo "source ~/.local/share/archrice/default/bash/rc" >~/.bashrc

# Setup Oh My ZSH
sudo chsh -s $(which zsh) $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# Link zsh custom config to ohmyzsh
ln -nsf ~/.local/share/archrice/default/zsh/* ~/.oh-my-zsh/custom/

# Set common git aliases
# git config --global alias.co checkout
# git config --global alias.br branch
# git config --global alias.ci commit
# git config --global alias.st status
# git config --global pull.rebase true

# Set identification from install inputs
if [[ -n "${ARCHRICE_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$ARCHRICE_USER_NAME"
fi

if [[ -n "${ARCHRICE_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$ARCHRICE_USER_EMAIL"
fi

# Set nvimdiff as default merge tool
git config --global merge.tool "nvimdiff"

# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/.local/share/archrice/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ARCHRICE_USER_NAME"
<Multi_key> <space> <e> : "$ARCHRICE_USER_EMAIL"
EOF
