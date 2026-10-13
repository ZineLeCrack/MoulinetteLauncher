#include "../../includes.h"

void	ft_putnbr_base(int nbr, char *base);

int	main(int ac, char **av)
{
	if (ac == 3) {
		ft_putnbr_base(atoi(av[1]), av[2]);
	}
}
