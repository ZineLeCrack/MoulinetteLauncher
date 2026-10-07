#include "../../includes.h"

int	ft_strcmp(char *s1, char *s2);

int	main(int ac, char **av)
{
	if (ac == 3) {
		int	cmp = ft_strcmp(av[1], av[2]);
		printf("%d", cmp > 0 ? 1 : (cmp < 0 ? -1 : 0));
	}
}
