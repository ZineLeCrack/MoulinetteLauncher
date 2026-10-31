#!/bin/bash

final_grade=0
end_grade=0

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

format="default"
args=()

for arg in "$@"; do
    case "$arg" in
        --format=*)
            format="${arg#*=}"
            ;;
		*)
			args+=("$arg")
			;;
    esac
done

set -- "${args[@]}"

if [[ "$format" != "default" && "$format" != "moulinette" ]]; then
    echo -e "\nInvalid format: '$format'" >&2
    exit 1
fi

case "$format" in
	moulinette)
		echo "= Host-specific information ===================================================="
		echo "\$> hostname; uname -msr"
		hostname
		uname -msr
		echo "\$> date"
		date

		echo -e "\n= Collected files =========================================="
		echo "\$> ls -lAR $PWD"
		ls -lAR $PWD

		echo -e "\n= Compiling =========================================="
		echo "\$> make"
		make -j
		if [[ $? -ne 0 ]]; then
			echo "Does not compile"
			echo -e "= Final grade: $final_grade =============================================================="
			exit
		fi
		;;
	default)
		echo -ne "\nCompiling...\r"
		make -j &> /dev/null
		if [[ $? -ne 0 ]]; then
			echo -e "\033[31;1mCompilation failed\033[0m\033[K"
			exit
		else
			echo -e "\033[32;1mCompilation complete\033[0m\033[K"
		fi
		;;
esac

echo

function test_ex() {
	case $format in
		moulinette)
			echo "= $1 ========================================================================="

			bash "$script_dir/$1/libft-$1.sh" "$1" "$format"

			grade=$?

			if [[ $grade -eq 214 ]]; then 
				echo -e "Grade: -42\n"
			else
				echo -e "Grade: $grade\n"
			fi

			if [[ $grade -eq 0 ]]; then
				end_grade=1
			else if [[ $grade -eq 214 ]]; then
				end_grade=1
				final_grade=-42
			fi fi

			if [[ $end_grade -ne 1 ]]; then
				final_grade=$((final_grade + grade))
			fi
			;;
		default)
			echo -ne "\033[35;1m"
			printf "%-17s" "$1:"
			bash "$script_dir/$1/libft-$1.sh" "$1" "$format"

			grade=$?

			if [[ $grade -eq 0 ]]; then
				end_grade=1
			else if [[ $grade -eq 214 ]]; then
				end_grade=1
				final_grade=-42
			fi fi

			if [[ $end_grade -ne 1 ]]; then
				final_grade=$((final_grade + grade))
			fi
			;;
	esac
}

if [[ -n "$1" ]]; then
	for i in "$@"; do
		if [[ -f "$1" ]]; then
			test_ex "${i%.c}"
			echo
		fi
	done
else
	while IFS= read -r line; do
		if [[ -f "$line.c" ]]; then
			test_ex "$line"
			echo
		fi
	done < "$script_dir/functions.txt"
fi

make fclean &> /dev/null

case $format in
	moulinette)
		echo -e "= Final grade: $final_grade =============================================================="
		;;
	default)
		echo -e "\n\033[36;1mFinale grade: $final_grade\033[0m"
		;;
esac
