if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

clear

UpdatePterodactylPanel(){
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/Pterodactyl-Panel-Update-Script/main/updatepanel.sh)
}
FreeTheMemory(){
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/free-the-memory-script/main/free.sh)
}

echo "Copyright (c) 2023 SHD Cloud | owen0924"
echo "Choose an option down below to execute specify action."
echo ""
echo "Discord: owen0924#9262"
echo "Website: https://shdhost.xyz/"
echo ""
echo "[1] Free The Memory"
echo "[2] Update Pterodactyl Panel"
echo "[3] Exit"

read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    FreeTheMemory
fi
if [ $choice == "2" ]
    then
    UpdatePterodactylPanel
fi
if [ $choice == "3" ]
    then
    exit
fi
