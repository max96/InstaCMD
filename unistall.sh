# Unistall InstaCMD and EVERYTHING
echo -e "Unistaller for InstaCMD"
read -p "[Enter] to continue..."
clear
echo -e "You can do a backup during the unistallation!"
read -p "If you are sure you want to unistall everything press [Enter]..."
clear
read -p "ARE YOU SURE??? Then press [Enter]..."
clear
echo -e "Unistalling"
rm -rf appcache
rm -rf ClientRegistry.blob
rm -rf config
rm -rf depotcache
rm -rf linux32
rm -rf SteamApps
rm -rf steamcmd_linux.tar.gz
rm -rf steamcmd.sh
rm -rf steam.log
rm -rf steam.sh
rm -rf update_cs-go.txt
rm -rf update_gmod.txt
rm -rf update_hlds.txt
rm -rf update_hl-gearbox.txt
rm -rf update_rust.txt
rm -rf update_sdk2006mp.txt
rm -rf update_sdk2013mp.txt
rm -rf update_tf2.txt
rm -rf update_all.txt
rm -rf userdata
read -p "Step 2/3 Comlete!  [Enter] to continue..."
clear
echo -e "Do you wish to do a backup of your 'server' directory?"
echo -e "This is where all your gameserver data is stored!"
select yn in "Yes" "No"; do
case $yn in
Yes ) cp -a server backup; rm -rf server; read -p "[Enter] to finish unistalling in safe mode..."; exit;;
No ) read -p "Say goodbye to your server files!   [Enter] to continue..."; rm -rf server; exit;;
esac
done
