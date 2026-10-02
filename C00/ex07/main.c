#include "../../includes.h"

void	ft_putnbr(int nb);

int	main(int ac, char **av)
{
	if (ac == 2) {
		ft_putnbr(atoi(av[1]));
	}
}
