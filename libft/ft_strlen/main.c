#include "../../includes.h"

size_t ft_strlen(const char *s);

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%zu", ft_strlen(av[1]));
	}
}
