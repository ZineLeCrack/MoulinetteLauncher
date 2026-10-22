#include "../../includes.h"
#include "libft.h"

char *ft_strdup(const char *s);

int main(int ac, char **av) {
	if (ac == 2) {
		char *str = ft_strdup(av[1]);
		printf("%s", str);
		if (str) free(str);
	}
}
