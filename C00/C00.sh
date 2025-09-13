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