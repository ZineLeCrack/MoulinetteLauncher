#include "../../includes.h"

void	ft_ultimate_div_mod(int *a, int *b);

int	main(int ac, char **av)
{
	if (ac == 3) {
		int	a = atoi(av[1]);
		int	b = atoi(av[2]);

		printf("%d\n", a);
		printf("%d\n", b);

		ft_ultimate_div_mod(&a, &b);

		printf("%d\n", a);
		printf("%d\n", b);
	}
}
