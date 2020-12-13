# raspidownloads
This is a script that you can use with a controller to download roms.
It downloads what it needs, moves and cleans up all the remains for you. 
You can install it by

1. ssh into the pi
2. enter the following commands

sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/install.sh

sudo chmod +x install.sh 

sudo ./install.sh

3. reboot and enter the configuration and youll see it there c:



things i need to edit:
i need to change wget to something with simultaneous downloads since the place im downloading from works best with multiple parts downloading at once
