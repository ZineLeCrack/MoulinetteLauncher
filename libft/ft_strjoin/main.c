#include "../../includes.h"
#include "libft.h"

char *ft_strjoin(char const *s1, char const *s2);

int main(int ac, char **av) {
	if (ac == 3) {
		char *str = ft_strjoin(av[1], av[2]);
		printf("%s", str);
		if (str) free(str);
	}
}
