#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
RESET="\033[0m"

echo -e "$YELLOW============================   C00   ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

# testing ex00...

src_dir="ex00"

echo
echo -e "$YELLOW============================   ex00  ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo -e "$RED========================= Nothing turn in =======================$RESET"
	echo
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C00-ex00.sh"
fi

src_dir="ex01"

echo
echo -e "$YELLOW============================   ex01  ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo -e "$RED========================= Nothing turn in =======================$RESET"
	echo
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C00-ex01.sh"
fi

src_dir="ex02"

echo
echo -e "$YELLOW============================   ex02  ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo -e "$RED========================= Nothing turn in =======================$RESET"
	echo
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C00-ex02.sh"
fi

# src_dir="ex03"

# echo
# echo -e "$YELLOW============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo -e "$RED========================= Nothing turn in =======================$RESET"
# 	echo
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi

# src_dir="ex04"

# echo
# echo -e "$YELLOW============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo -e "$RED========================= Nothing turn in =======================$RESET"
# 	echo
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi

# src_dir="ex05"

# echo
# echo -e "$YELLOW============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo -e "$RED========================= Nothing turn in =======================$RESET"
# 	echo
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi

# src_dir="ex06"

# echo
# echo -e "$YELLOW============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo -e "$RED========================= Nothing turn in =======================$RESET"
# 	echo
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi

# src_dir="ex07"

# echo
# echo -e "$YELLOW============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo -e "$RED========================= Nothing turn in =======================$RESET"
# 	echo
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi

# src_dir="ex08"

# echo
# echo -e "$YELLOW============================   ex00  ============================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo -e "$RED========================= Nothing turn in =======================$RESET"
# 	echo
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex00/C00-ex00.sh"
# fi
