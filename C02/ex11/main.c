#include "../../includes.h"

void	ft_putstr_non_printable(char *str);

int	main(int ac, char **av)
{
	if (ac == 2) {
		ft_putstr_non_printable(av[1]);
	}
}
