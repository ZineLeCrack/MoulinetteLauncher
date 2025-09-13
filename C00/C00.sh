#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE==========================     C00    ===========================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

# testing ex00...

src_dir="ex00"

echo
echo

echo -e "$MAGENTA==========================    ex00    ===========================$RESET"
echo -e "$MAGENTA========================== ft_putchar ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C00-ex00.sh"
fi

src_dir="ex01"

echo
echo

echo -e "$MAGENTA=======================       ex01        =======================$RESET"
echo -e "$MAGENTA======================= ft_print_alphabet =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C00-ex01.sh"
fi

src_dir="ex02"

echo
echo

echo -e "$MAGENTA===================           ex02            ===================$RESET"
echo -e "$MAGENTA=================== ft_print_reverse_alphabet ===================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C00-ex02.sh"
fi

src_dir="ex03"

echo
echo

echo -e "$MAGENTA=======================       ex03       ========================$RESET"
echo -e "$MAGENTA======================= ft_print_numbers ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/C00-ex03.sh"
fi

src_dir="ex04"

echo
echo

echo -e "$MAGENTA========================      ex04      =========================$RESET"
echo -e "$MAGENTA======================== ft_is_negative =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C00-ex04.sh"
fi

src_dir="ex05"

echo
echo -e "$MAGENTA=========================     ex05      =========================$RESET"
echo -e "$MAGENTA========================= ft_print_comb =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/C00-ex05.sh"
fi

src_dir="ex06"

echo
echo -e "$MAGENTA=========================     ex06       ========================$RESET"
echo -e "$MAGENTA========================= ft_print_comb2 ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex06/C00-ex06.sh"
fi

src_dir="ex07"

echo
echo -e "$MAGENTA===========================   ex07    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_putnbr ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex07/C00-ex07.sh"
fi

# src_dir="ex08"

# echo
# echo -e "$MAGENTA============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo
# 	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi
