#include "../../includes.h"
#include "libft.h"

int ft_atoi(const char *nptr);

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%d", ft_atoi(av[1]));
	}
}
