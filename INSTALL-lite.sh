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
STR9=$" - InstaCMD Tools"
echo -e $STR1$NEWLINE$STR2$NEWLINE$STR3$NEWLINE$STR4$NEWLINE$STR5$NEWLINE$STR6$NEWLINE$STR7$NEWLINE$STR8$NEWLINE$STR9
read -p "Press [ENTER] key to continue..."
clear
echo -e "Last Question!"
echo -e "Do you want to use InstaCMD to install all before listed serverapps?"
echo -e "$NEWLINE(TIP: you need to type 1 or 2 to use the menu!)"
select yn in "Yes" "No"; do
case $yn in
Yes ) echo -e "OK, InstaCMD will start when you..."; read -p "...press [ENTER] key"; echo -e $NEWLINE$NEWLINE; wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz; tar -xvzf steamcmd_linux.tar.gz; apt-get install lib32gcc1; wget https://dl.dropboxusercontent.com/s/loeas07zemejbco/insta.sh; wget https://dl.dropboxusercontent.com/s/1dcaci0y25znk2d/readme; wget https://dl.dropboxusercontent.com/s/6dzwmu07z1e2os4/unistall.sh; wget https://dl.dropboxusercontent.com/s/tw8m77dd3bpqc2i/update_all.txt; wget https://dl.dropboxusercontent.com/s/6qt3h1jqeu8vuyt/update_cs-go.txt; wget https://dl.dropboxusercontent.com/s/oq60l5tj9237how/update_gmod.txt; wget https://dl.dropboxusercontent.com/s/81qe8gi64kx95xh/update_hl-gearbox.txt; wget https://dl.dropboxusercontent.com/s/pwj97tbdqoarb1b/update_hlds.txt; wget https://dl.dropboxusercontent.com/s/hsrxkvsdcoeerp6/update_rust.txt; wget https://dl.dropboxusercontent.com/s/07pq956le1uj3nr/update_sdk2006mp.txt; wget https://dl.dropboxusercontent.com/s/222qruhwkox78rf/update_sdk2013mp.txt; wget https://dl.dropboxusercontent.com/s/gn8egk9n3irkzj5/update_tf2.txt; rm -rf steamcmd_linux.tar.gz; echo -e "FINISHED!!!"; echo -e "you have successfully installed InstaCMD"; read -p "To close the installer press [Enter]"; exit;;
No ) read -p "Press [Enter] key to quit InstaCMD Installer"; exit;;
esac
done
