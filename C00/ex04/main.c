#include "../../includes.h"

void	ft_is_negative(int n);

int	main(int ac, char **av)
{
	if (ac == 2) {
		ft_is_negative(atoi(av[1]));
	}
}
