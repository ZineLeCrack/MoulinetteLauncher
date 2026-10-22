#include "../../includes.h"

char *ft_strnstr(const char *big, const char *little, size_t len);

int	main(int ac, char **av)
{
	if (ac == 4) {
		printf("%s", ft_strnstr(av[1], av[2], strtoul(av[3], NULL, 0)));
	}
}
