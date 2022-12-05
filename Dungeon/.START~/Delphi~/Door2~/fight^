#!/bin/bash

BoldY='\033[4;33m'
Yellow='\033[43m'
NC='\033[0m'
echo -e "


                          ${Yellow},/${NC}
                        ${Yellow},'/${NC}
                      ${Yellow},' /${NC}
                    ${Yellow},'  /${NC}
                  ${Yellow},'   /${NC}
                ${Yellow},'    /${NC}
              ${Yellow},'     /${NC}_____,
            ${Yellow},'           ,'${NC}
          ${Yellow}.'____       ,'${NC}
               ${Yellow}/     ,'${NC}
              ${Yellow}/    ,'${NC}
             ${Yellow}/   ,'${NC}
            ${Yellow}/  ,'${NC}
           ${Yellow}/ ,'${NC}
          ${Yellow}/,'${NC}
         ${Yellow}/'${NC}
${NC}"

echo -e "YOU HAVE DECIDED TO PICK A FIGHT WITH ${BoldY}ZEUS${NC}!!\nYOU CAN BACK DOWN OR RETURN TO THE DOOR!"
echo -e "DO YOU WANT TO FIGHT ZEUS?\n"
IFS= read -r -p "Yes or No? " fight

case $fight in
	Yes|yes)
	echo "YOU ARE VERY BRAVE, PREPARE TO FIGHT!"
	sleep 1	
;;
	No|no)
	echo "YOU CAN RETURN WHEN YOU ARE READY!"
	sleep 1
	exit 1	
;;
esac

echo -e "ZEUS THROWS A LIGHTNING BOLT TOWARDS YOU!\n"

IFS= read -r -p "DID YOU FIND ANYTHING THAT MIGHT HELP YOU OUT HERE? " weapon

case $weapon in
        Shield|shield)
        echo -e "YOU BLOCK THE LIGHTNING BOLT!\nZEUS LETS YOU OFF THIS TIME!"
        sleep 1
;;
        Knife|knife)
        echo -e "YOU THROW THE KNIFE AT ZEUS BUT IT DOESN'T REACH HIM\nYOU GET HIT BY THE BOLT"
	sleep 1
;;
	Sword|sword)
	echo -e "YOUR SWORD ATTRACTED THE LIGHTNING BOLT AND YOU GET HIT!"
	sleep 1
;;
esac
