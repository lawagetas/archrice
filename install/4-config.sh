# Copy over default configs
cp -R ~/.local/share/archrice/config/* ~/.config/

# Use default bashrc
echo "source ~/.local/share/archrice/default/bash/rc" >~/.bashrc

# Setup Oh My ZSH
sudo chsh -s $(which zsh) $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Login directly as user, rely on disk encryption + hyprlock for security
# sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
# sudo tee /etc/systemd/system/getty@tty1.service.d/override.conf >/dev/null <<EOF
# [Service]
# ExecStart=
# ExecStart=-/usr/bin/agetty --autologin $USER --noclear %I \$TERM
# EOF

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

# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/.local/share/archrice/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ARCHRICE_USER_NAME"
<Multi_key> <space> <e> : "$ARCHRICE_USER_EMAIL"
EOF
