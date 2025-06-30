# ArchRice

Turn a fresh Arch installation into a fully-configured system based on Hyprland by running a single command. Fork of [omarchy.org](https://omarchy.org) with a few differences:

- Fish shell replaces zsh
- Brave replaces Chromium
- Ghostty replaces alacritty
- Packages not needed for webdev removed.

## installation

Install a minimal profile of Arch Linux. Before exiting the chroot environment, run `pacman -S wget networkmanager`. Then, on first boot, run 
```
wget archrice.wanax.xyz
sh boot.sh
```


## License

ArchRice—like Omarchy—is released under the [MIT License](https://opensource.org/licenses/MIT).

