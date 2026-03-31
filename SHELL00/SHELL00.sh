#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================   SHELL00  ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo

echo -e "$MAGENTA============================== ex00 =============================$RESET"
echo -e "$MAGENTA==============================  Z   =============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/SHELL00-ex00.sh"
fi

src_dir="ex01"

echo

echo -e "$MAGENTA==========================     ex01      ========================$RESET"
echo -e "$MAGENTA==========================  testShell00  ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/SHELL00-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA======================         ex02         =====================$RESET"
echo -e "$MAGENTA======================  Oh yeah, mooore...  =====================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/SHELL00-ex02.sh"
fi

src_dir="ex03"

echo

echo -e "$MAGENTA==========================     ex03     =========================$RESET"
echo -e "$MAGENTA==========================  id_rsa_pub  =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/SHELL00-ex03.sh"
fi

src_dir="ex04"

echo

echo -e "$MAGENTA=============================  ex04   ===========================$RESET"
echo -e "$MAGENTA=============================  midLS  ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/SHELL00-ex04.sh"
fi

src_dir="ex05"

echo

echo -e "$MAGENTA=========================      ex05       =======================$RESET"
echo -e "$MAGENTA=========================  git_commit.sh  =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/SHELL00-ex05.sh"
fi

src_dir="ex06"

echo

echo -e "$MAGENTA=========================      ex06       =======================$RESET"
echo -e "$MAGENTA=========================  git_ignore.sh  =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex06/SHELL00-ex06.sh"
fi

src_dir="ex07"

echo

echo -e "$MAGENTA=============================  ex07  ============================$RESET"
echo -e "$MAGENTA=============================  diff  ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex07/SHELL00-ex07.sh"
fi

src_dir="ex08"

echo

echo -e "$MAGENTA============================   ex08  ============================$RESET"
echo -e "$MAGENTA============================  clean  ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex08/SHELL00-ex08.sh"
fi

src_dir="ex09"

echo

echo -e "$MAGENTA===========================    ex09    ==========================$RESET"
echo -e "$MAGENTA===========================  ft_magic  ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex09/SHELL00-ex09.sh"
fi
