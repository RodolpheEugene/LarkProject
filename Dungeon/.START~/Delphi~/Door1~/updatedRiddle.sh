#!/bin/bash

bold=$(tput bold)
norm=$(tput sgr0)
Blue='\033[0;34m'
Purple='\033[0;35m'
Orange='\033[0;33m'
NC='\033[0m'

echo -e "\nAnswer each of these riddles to get a piece of the key\n"
echo -e "You have ${bold}3${norm} guesses per riddle\n"
echo -e "${Blue}
             _______________________
           =(__    ___      __     _)=
             |                     |
             |    First Riddle     |
             |   ^^^^^^^^^^^^^^    |
             |     I was once      |
             |  a beautiful girl.  |
             | I made the mistake  |
             | of angering Athena  |
             |   and now I am an   |
             |     ugly monster.   |
             |      Who am I?      |
             |__    ___   __    ___|KCK
           =(_______________________)=

${NC}\n"

i=1

while [ $i -le 3 ]
do
IFS= read -r -p "Guess $i: " guess

	if [[ $guess != "Medusa" ]] 
		then
		echo -e "Incorrect!\n"
		let i=i+1
		
		if [[ $i == 3 ]]
		then
		echo -e "Do you want a hint?\n"
		IFS= read -r -p "Yes or No? " hint
		fi
			case $hint in
			Yes|yes)
			echo -e "Hint: Snakes\n"
			;;
			No|no)
			continue
			;;
			esac 
 	else	
	echo -e "Correct!\nPiece 1 of the key is \"${Blue}Oracle${NC}\""
	break
	fi
done

if [[ $i == 4 ]]
then
	echo -e "\nYou have run out of guesses\nThe answer was ${bold}Medusa${norm}\nPiece 1 of the key is \"${Blue}Oracle${NC}\"\n"
fi
sleep 2


echo -e "${Orange}
             _______________________
           =(__    ___      __     _)=
             |                     |
             |    Second Riddle    |
             |   ^^^^^^^^^^^^^^^   |
             |   I gave horses to  |
             |    men, I control   |
             |     earthquakes,    |
             | I am god of the sea.| 
             |      Who am I?      |
             |__    ___   __    ___|KCK
           =(_______________________)=

${NC}\n"

i=1

while [ $i -le 3 ]
do
IFS= read -r -p "Guess $i: " guess
        if [[ $guess != "Poseiden" ]]
                then
                echo -e "Incorrect!\n"
                let i=i+1
		
		if [[ $i == 3 ]]
                then
                echo -e "Do you want a hint?\n"
                IFS= read -r -p "Yes or No? " hint
                fi
                        case $hint in
                        Yes|yes)
                        echo -e "Hint: A brother of Zeus\n"
                        ;;
                        No|no)
			continue
                        ;;
                        esac
        else
        echo -e "Correct!\nPiece 2 of the key is \"${Orange}of${NC}\""
        break
        fi
done

if [[ $i == 4 ]]
then
        echo -e "\nYou have run out of guesses\nThe answer was ${bold}Poseiden${norm}\nPiece 2 of the key is \"${Orange}of${NC}\"\n"
fi
sleep 2

echo -e "${Purple}
             __________________________
           =(__    ___      __        _)=
             |                        |
             |      Third Riddle      |
             |     ^^^^^^^^^^^^^^     |
             |     My father and I    |
             |   were banished to a   |
             | labyrinth. He freed me |
             | by making me beautiful |
             |  wings. I only wish I  |
             |   would have listend   |
             |     to his warning.    |
             |        Who am I?       |
             |__    ___      __    ___|KCK
           =(__________________________)=

${NC}\n"

i=1

while [ $i -le 3 ]
do
IFS= read -r -p "Guess $i: " guess
        if [[ $guess != "Icarus" ]]
                then
                echo -e "Incorrect!\n"
                let i=i+1

		if [[ $i == 3 ]]
                then
                echo -e "Do you want a hint?\n"
                IFS= read -r -p "Yes or No? " hint
                fi
                        case $hint in
                        Yes|yes)
                        echo -e "Hint: Too close to the sun\n"
                        ;;
                        No|no)
                        continue
                        ;;
                        esac
        else
        echo -e "Correct!\nPiece 3 of the key is \"${Purple}Delphi${NC}\""
        break
        fi
done

if [[ $i == 4 ]]
then
        echo -e "\nYou have run out of guesses\nThe answer was ${bold}Icarus${norm}\nPiece 3 of the key is \"${Purple}Delphi${NC}\"\n"
fi
sleep 2
echo -e "\nNow put all the pieces together (with no spaces)\n And use the key to open the Secret door!\n"



