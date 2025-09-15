#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE==========================     C04    ===========================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo
echo

echo -e "$MAGENTA===========================   ex00    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_strlen ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C04-ex00.sh"
fi

src_dir="ex01"

echo
echo

echo -e "$MAGENTA===========================   ex01    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_putstr ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C04-ex01.sh"
fi

src_dir="ex02"

echo
echo

echo -e "$MAGENTA===========================   ex02    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_putnbr ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C04-ex02.sh"
fi

src_dir="ex03"

echo
echo

echo -e "$MAGENTA============================  ex03   ============================$RESET"
echo -e "$MAGENTA============================ ft_atoi ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/C04-ex03.sh"
fi

src_dir="ex04"

echo
echo

echo -e "$MAGENTA=========================     ex04       ========================$RESET"
echo -e "$MAGENTA========================= ft_putnbr_base ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C04-ex04.sh"
fi

# src_dir="ex05"

# echo
# echo -e "$MAGENTA==========================    ex05    ===========================$RESET"
# echo -e "$MAGENTA========================== ft_strlcat ======================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo
# 	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex05/C03-ex05.sh"
# fi
