ascii_art='
 _______   __    ______     _______  _______ .__   __.  _______     _______.
|       \ |  |  /  __  \   /  _____||   ____||  \ |  | |   ____|   /       |
|  .--.  ||  | |  |  |  | |  |  __  |  |__   |   \|  | |  |__     |   (----`
|  |  |  ||  | |  |  |  | |  | |_ | |   __|  |  . `  | |   __|     \   \    
|  '--'  ||  | |  `--'  | |  |__| | |  |____ |  |\   | |  |____.----)   |   
|_______/ |__|  \______/   \______| |_______||__| \__| |_______|_______/    
                                                                            
'

echo -e "\n$ascii_art\n"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Omarchy..."
rm -rf ~/.local/share/archrice/
git clone https://github.com/lawagetas/archrice.git ~/.local/share/archrice >/dev/null

echo -e "\nInstalling network manager (nm-tui and nm-applet)"
sudoo pacman -Sy --noconfirm network manager

echo -e "\nInstallation starting..."
source ~/.local/share/archrice/install.sh
