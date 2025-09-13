#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo -e "$YELLOW====================== Moulinette Launcher ======================$RESET"
echo -e "$YELLOW========================== by rlebaill ==========================$RESET"


dir=$(basename $PWD)

if [[ "$dir" == "C00" ]]; then

	script_dir="$(dirname "${BASH_SOURCE[0]}")"
	bash "$script_dir/C00/C00.sh"

	echo
	echo -e "$MAGENTA=================================================================$RESET"
	echo
	echo -e "${BLUE}Don't forget to check the NORMINETTE and FORBIDDEN FUNCTIONS !!!${RESET}"
	echo -e "${BLUE}This moulinette doesn't check all possibilities.${RESET}"
	echo -e "${BLUE}Do your own tests !${RESET}"
	echo
	echo -e "${MAGENTA}Thank you <3${RESET}"

else if [[ "$dir" == "C01" ]]; then

	script_dir="$(dirname "${BASH_SOURCE[0]}")"
	bash "$script_dir/C01/C01.sh"

	echo
	echo -e "$MAGENTA=================================================================$RESET"
	echo
	echo -e "${BLUE}Don't forget to check the NORMINETTE and FORBIDDEN FUNCTIONS !!!${RESET}"
	echo -e "${BLUE}This moulinette doesn't check all possibilities.${RESET}"
	echo -e "${BLUE}Do your own tests !${RESET}"
	echo
	echo -e "${MAGENTA}Thank you <3${RESET}"

else

	echo
	echo -e "$RED================== Not in a project directory. ==================$RESET"

fi

fi
