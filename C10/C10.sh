#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================     C10    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo

echo -e "$MAGENTA========================     ex00     ===========================$RESET"
echo -e "$MAGENTA======================== display_file ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C10-ex00.sh"
fi

src_dir="ex01"

echo

echo -e "$MAGENTA===========================  ex01  ==============================$RESET"
echo -e "$MAGENTA=========================== ft_cat ==============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C10-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA============================  ex02   ============================$RESET"
echo -e "$MAGENTA============================ ft_tail ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C10-ex02.sh"
fi
