#include "../../includes.h"

int	ft_str_is_lowercase(char *str);

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%d", ft_str_is_lowercase(av[1]));
	}
}
