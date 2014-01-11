# Script: by playMAXIME
# InstaCMD 1.1
clear
# --! SETTINGS BASIC !--
# If there is the error "ERROR! Failed to install app 'xxxxxx' (No subscription)"
# change "anonymous" to your STEAM username
# and password (leave a space after your password) to fix this error 
username=$"anonymous"
password=$""
# --! END OF SETTINGS BASIC !--
echo " Welcome to InstaCMD!"
read -p "Press [ENTER] key to continue..."
clear
echo "   This script will install..."
echo " - SteamCMD (Newest Version from Valve)"
echo " - Counter-Strike: Global Offensive"
echo " - Garry's Mod (Newest, NOT GMod 9)"
echo " - Half-Life: Deathmatch: Source"
echo " - Half-Life: Opposing Force (Gearbox)"
echo " - Rust"
echo " - Source SDK Base 2006 Multiplayer"
echo " - Source SDK Base 2013 Multiplayer"
echo " - Team Fortress 2 (Newest)"
echo " - InstaCMD Tools"
read -p "Press [ENTER] key to continue..."
clear
NEWLINE=$"\n"
STR1=$"Welcome to InstaCMD for Steam"
STR2=$"Thanks for downloading my little automated Script which i wrote because i was getting sick of updating thoses servers myself"
STR3=$"So i began to write this script."
STR4=$"Let's do not talk to much,"
STR5=$"WARNING: Please only use this installation script only ONCE!!"
STR6=$"Using it more than once will crash your SteamCMD and delete existing data!"
STR7=$"If you missed it, this script will install:"
STR8=$" - SteamCMD (Newest Version from Valve)"
STR9=$" - Counter-Strike: Global Offensive"
STR10=$" - Garry's Mod (Newest, NOT GMod 9)"
STR11=$" - Half-Life: Deathmatch: Source"
STR12=$" - Half-Life: Opposing Force (Gearbox)"
STR13=$" - Rust"
STR14=$" - Source SDK Base 2006 Multiplayer"
STR15=$" - Source SDK Base 2013 Multiplayer"
STR16=$" - Team Fortress 2 (Newest)"
STR17=$" - InstaCMD Tools"
echo -e $STR1$NEWLINE$STR2$NEWLINE$STR3$NEWLINE$STR4$NEWLINE$STR5$NEWLINE$STR6$NEWLINE$STR7$NEWLINE$STR8$NEWLINE$STR9$NEWLINE$STR10$NEWLINE$STR11$NEWLINE$STR12$NEWLINE$STR13$NEWLINE$STR14$NEWLINE$STR15$NEWLINE$STR16$NEWLINE$STR17
read -p "Press [ENTER] key to continue..."
clear
echo -e "Last Question!"
echo -e "Do you want to use InstaCMD to install all before listed serverapps?"
echo -e "$NEWLINE(TIP: you need to type 1 or 2 to use the menu!)"
select yn in "Yes" "No"; do
case $yn in
Yes ) echo -e "OK, InstaCMD will start when you..."; read -p "...press [ENTER] key"; echo -e $NEWLINE$NEWLINE; wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz; tar -xvzf steamcmd_linux.tar.gz; mkdir server; mkdir server/cs_go; mkdir server/gmod; mkdir server/hlds; mkdir server/hl_gearbox; mkdir server/rust; mkdir server/sdk2006mp; mkdir server/sdk2013mp; mkdir server/tf2; echo -e "Maybe you have to enter the ROOT password"; sudo ./steamcmd.sh +quit; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/cs_go +app_update 740 validate +quit; echo -e "Counter-Strike: Global Offensive has been installed"; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/gmod/ +app_update 4020 validate +quit; echo -e "Garry's Mod has been installed"; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/hlds/ +app_update 90 validate +quit; echo -e "Half-Life: Deathmatch: Source has been installed"; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/hl_gearbox/ +app_update 90 validate +app_set_config "90 mod gearbox" +quit; echo -e "Half-Life: Opposing Force (Gearbox) has been installed"; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/rust/ +app_update 258550 validate +quit; echo -e "Rust has been installed"; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/sdk2006mp/ +app_update 205 validate +quit; echo -e "Source SDK Base 2006 Multiplayer has been installed"; ./steamcmd.sh @ShutdownOnFailedCommand 0 +login $username $password+force_install_dir ./server/sdk2013mp/ +app_update 244310 validate +quit; echo -e "Source SDK Base 2013 Multiplayer has been installed"; echo -e "InstaCMD Tools will be installed"; apt-get install lib32gcc1; wget https://dl.dropboxusercontent.com/s/loeas07zemejbco/insta.sh; wget https://dl.dropboxusercontent.com/s/1dcaci0y25znk2d/readme; wget https://dl.dropboxusercontent.com/s/6dzwmu07z1e2os4/unistall.sh; wget https://dl.dropboxusercontent.com/s/tw8m77dd3bpqc2i/update_all.txt; wget https://dl.dropboxusercontent.com/s/6qt3h1jqeu8vuyt/update_cs-go.txt; wget https://dl.dropboxusercontent.com/s/oq60l5tj9237how/update_gmod.txt; wget https://dl.dropboxusercontent.com/s/81qe8gi64kx95xh/update_hl-gearbox.txt; wget https://dl.dropboxusercontent.com/s/pwj97tbdqoarb1b/update_hlds.txt; wget https://dl.dropboxusercontent.com/s/hsrxkvsdcoeerp6/update_rust.txt; wget https://dl.dropboxusercontent.com/s/07pq956le1uj3nr/update_sdk2006mp.txt; wget https://dl.dropboxusercontent.com/s/222qruhwkox78rf/update_sdk2013mp.txt; wget https://dl.dropboxusercontent.com/s/gn8egk9n3irkzj5/update_tf2.txt; rm -rf steamcmd_linux.tar.gz; echo -e "FINISHED!!!"; echo -e "you have successfully installed InstaCMD"; read -p "To close the installer press [Enter]"; exit;;
No ) read -p "Press [Enter] key to quit InstaCMD Installer"; exit;;
esac
done
