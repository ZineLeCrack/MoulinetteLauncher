#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE==========================     C02    ===========================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo
echo

echo -e "$MAGENTA===========================   ex00    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_strcpy ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C02-ex00.sh"
fi

src_dir="ex01"

echo
echo

echo -e "$MAGENTA==========================    ex01    ===========================$RESET"
echo -e "$MAGENTA========================== ft_strncpy ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C02-ex01.sh"
fi

src_dir="ex02"

echo
echo

echo -e "$MAGENTA========================      ex02       ========================$RESET"
echo -e "$MAGENTA======================== ft_str_is_alpha ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C02-ex02.sh"
fi

src_dir="ex03"

echo
echo

echo -e "$MAGENTA=======================       ex03        =======================$RESET"
echo -e "$MAGENTA======================= ft_str_is_numeric =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/C02-ex03.sh"
fi

src_dir="ex04"

echo
echo

echo -e "$MAGENTA======================        ex04         ======================$RESET"
echo -e "$MAGENTA====================== ft_str_is_lowercase ======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C02-ex04.sh"
fi

src_dir="ex05"

echo
echo -e "$MAGENTA======================        ex05         ======================$RESET"
echo -e "$MAGENTA====================== ft_str_is_uppercase ======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/C02-ex05.sh"
fi

src_dir="ex06"

echo
echo -e "$MAGENTA======================        ex06         =======================$RESET"
echo -e "$MAGENTA====================== ft_str_is_printable =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex06/C02-ex06.sh"
fi

src_dir="ex07"

echo
echo -e "$MAGENTA=========================     ex07     ==========================$RESET"
echo -e "$MAGENTA========================= ft_strupcase ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex07/C02-ex07.sh"
fi

src_dir="ex08"

echo
echo -e "$MAGENTA=========================     ex08      =========================$RESET"
echo -e "$MAGENTA========================= ft_strlowcase ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex08/C02-ex08.sh"
fi

src_dir="ex09"

echo
echo -e "$MAGENTA=======================       ex09       ========================$RESET"
echo -e "$MAGENTA======================= ft_strcapitalize ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex09/C02-ex09.sh"
fi

src_dir="ex10"

echo
echo -e "$MAGENTA==========================    ex10    ===========================$RESET"
echo -e "$MAGENTA========================== ft_strlcpy ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex10/C02-ex10.sh"
fi

src_dir="ex11"

echo
echo -e "$MAGENTA====================          ex11           ====================$RESET"
echo -e "$MAGENTA==================== ft_putstr_non_printable ====================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Nothing turn in <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex11/C02-ex11.sh"
fi
