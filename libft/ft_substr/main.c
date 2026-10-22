#include "../../includes.h"
#include "libft.h"

char *ft_substr(char const *s, unsigned int start, size_t len);

int main(int ac, char **av) {
	if (ac == 4) {
		char *str = ft_substr(av[1], strtoul(av[2], NULL, 0), strtoul(av[3], NULL, 0));
		printf("%s", str);
		if (str) free(str);
	}
}
