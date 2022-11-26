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
             |  When you suspect   |
             |     there is a      |
             |     hidden file,    |
             |   What command is   |
             |   used to find it?  |
             |                     |
             |__    ___   __    ___|KCK
           =(_______________________)=

${NC}\n"

i=1

while [ $i -le 3 ]
do
IFS= read -r -p "Guess $i: " guess
	if [[ $guess != "ls -a" ]]
		then
		echo -e "Incorrect!\n"
		let i=i+1
	else
	echo -e "Correct!\nPiece 1 of the key is \"${Blue}Linux${NC}\""
	break
	fi
done

if [[ $i == 4 ]]
then
	echo -e "\nYou have run out of guesses\nThe answer was ${bold}ls -a${norm}\nPiece 1 of the key is \"${Blue}Linux${NC}\"\n"
fi
sleep 2


echo -e "${Orange}
             _______________________
           =(__    ___      __     _)=
             |                     |
             |    Second Riddle    |
             |   ^^^^^^^^^^^^^^^   |
             |   What command is   |
             |    used to output   |
             |     the contents    |
             |      of a file?     |
             |__    ___   __    ___|KCK
           =(_______________________)=

${NC}\n"

i=1

while [ $i -le 3 ]
do
IFS= read -r -p "Guess $i: " guess
        if [[ $guess != "cat" ]]
                then
                echo -e "Incorrect!\n"
                let i=i+1
        else
        echo -e "Correct!\nPiece 2 of the key is \"${Orange}is${NC}\""
        break
        fi
done

if [[ $i == 4 ]]
then
        echo -e "\nYou have run out of guesses\nThe answer was ${bold}cat${norm}\nPiece 2 of the key is \"${Orange}is${NC}\"\n"
fi
sleep 2

echo -e "${Purple}
             _______________________
           =(__    ___      __     _)=
             |                     |
             |    Third Riddle     |
             |   ^^^^^^^^^^^^^^    |
             |  When you want to   |
             |     return to a     |
             | previous directory, |
             |   What command is   |
             |   used to do so?    |
             |                     |
             |__    ___   __    ___|KCK
           =(_______________________)=

${NC}\n"

i=1

while [ $i -le 3 ]
do
IFS= read -r -p "Guess $i: " guess
        if [[ $guess != "cd -" ]]
                then
                echo -e "Incorrect!\n"
                let i=i+1
        else
        echo -e "Correct!\nPiece 3 of the key is \"${Purple}cool!${NC}\""
        break
        fi
done

if [[ $i == 4 ]]
then
        echo -e "\nYou have run out of guesses\nThe answer was ${bold}cd -${norm}\nPiece 3 of the key is \"${Purple}cool!${NC}\"\n"
fi
sleep 2
echo -e "\nNow put all the pieces together (with no spaces)\nTo open the Secret door!\n"



