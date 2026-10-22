#include "../../includes.h"
#include "libft.h"

char *ft_strtrim(char const *s1, char const *set);

int main(int ac, char **av) {
	if (ac == 3) {
		char *str = ft_strtrim(av[1], av[2]);
		printf("%s", str);
		if (str) free(str);
	}
}
