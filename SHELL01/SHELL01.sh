#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================   SHELL01  ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex01"

echo

echo -e "$MAGENTA==========================     ex01       =======================$RESET"
echo -e "$MAGENTA==========================  print_groups  =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/SHELL01-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA============================   ex02    ==========================$RESET"
echo -e "$MAGENTA============================  find_sh  ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/SHELL01-ex02.sh"
fi

src_dir="ex03"

echo

echo -e "$MAGENTA==========================     ex03      ========================$RESET"
echo -e "$MAGENTA==========================  count_files  ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/SHELL01-ex03.sh"
fi
