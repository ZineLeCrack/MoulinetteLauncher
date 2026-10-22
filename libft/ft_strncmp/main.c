#include "../../includes.h"

int ft_strncmp(const char *s1, const char *s2, size_t n);

int	main(int ac, char **av)
{
	if (ac == 4) {
		int	cmp = ft_strncmp(av[1], av[2], atoi(av[3]));
		printf("%d", cmp > 0 ? 1 : (cmp < 0 ? -1 : 0));
	}
}
