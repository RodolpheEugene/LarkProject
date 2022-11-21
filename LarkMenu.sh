#!/bin/bash
# set color variables
BG_RED="$(tput setab 1)"
BG_BLACK="$(tput setab 0)"
FG_MAGENTA="$(tput setaf 5)"
FG_BLUE="$(tput setaf 4)"

function resetVar()
{
	echo "Resseting the Dungeon, $userName "
	sleep 1
	# This is where you could reset variables for new game play
	unset userName
}

# save screen
tput smcup

#Diplay menu until selction == 0
while [[ $REPLY != 0 ]]; do
	echo -n ${BG_RED} ${FG_BLUE}
	clear

#cat uses input of a here document
cat <<EOF
	please Select:

	1. Log in Information
	2. Tutorial
	4. Instructioons
	5. Start Dungeon Game
	0. Quit

EOF

read -p "Enter selection [0-5] > " selection
	# Clear area beneat menu
tput cup 10 0 # positions the cursot
echo -n ${BG_BLACK}${FG_BLUE}
tput ed # Clears cursor to end of line
tput cup 11 0

# Act on selection 
case $selection in
	1) read -p "What is your name? " userName
		if [[ $(gawk "{ print $1 }" ./currentPlayer.dat)=$userName ]]
		then
		   echo "Welcome back $userName"
		   sleep 2
		else
		   echo $userName >> ./currentPlayer.dat
		   new=true
		fi
		;;
	2) echo "Press 1 for easy or 2 for hard "
	   read -n 1 difficulty
	   echo "diff=$difficulty" >> ./currentPlayer.dat # source script for this to work
	   if [ $difficulty -eq 1 ]
	   	then echo "     You selected easy"
	   	sleep 2
	   elif [ $difficulty -eq 2 ]
	   	then echo "     You selected hard"
	   	sleep 2
	   else echo " 		Your selection doesn't match "
	   sleep 2
	   fi
;;

# for new player
	3) if [ new ]
		then resetVar # resets game variable and settinfs
		echo "Welcome to Lark"; sleep 1
	   fi

		# run start up script	
		echo "Lark is starting now $userName"; sleep 1
		# source ./someLarkScript.sh (place it here)
	   break
	   ;;	
	0) break
	   ;;
	*) echo "Invalid entry."
	   ;;
esac

printf "\n\nPress any key to continue. "
read -n 1
done

# Restore saved screen
tput rmcup
echo "Program temminated."


