ascii_art='

██████  ██  ██████   ██████  ███████ ███    ██ ███████ ███████ 
██   ██ ██ ██    ██ ██       ██      ████   ██ ██      ██      
██   ██ ██ ██    ██ ██   ███ █████   ██ ██  ██ █████   ███████ 
██   ██ ██ ██    ██ ██    ██ ██      ██  ██ ██ ██           ██ 
██████  ██  ██████   ██████  ███████ ██   ████ ███████ ███████ 
                                                               
                                                               
 █████  ██████   ██████ ██   ██ ██████  ██  ██████ ███████     
██   ██ ██   ██ ██      ██   ██ ██   ██ ██ ██      ██          
███████ ██████  ██      ███████ ██████  ██ ██      █████       
██   ██ ██   ██ ██      ██   ██ ██   ██ ██ ██      ██          
██   ██ ██   ██  ██████ ██   ██ ██   ██ ██  ██████ ███████     
                                                               
'

echo -e "\n$ascii_art\n"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

pacman -Sy --noconfirm gum

echo -e "\nCloning ArchRice..."
rm -rf ~/.local/share/archrice/
git clone https://github.com/lawagetas/archrice.git ~/.local/share/archrice >/dev/null

echo -e "\nInstallation starting..."
source ~/.local/share/archrice/install.sh
