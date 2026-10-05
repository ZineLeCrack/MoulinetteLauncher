#include "../../includes.h"

void	ft_div_mod(int a, int b, int *div,int *mod);

int	main(int ac, char **av)
{
	if (ac == 3) {
		int	a = atoi(av[1]);
		int	b = atoi(av[2]);

		int	div;
		int	mod;

		ft_div_mod(a, b, &div, &mod);

		printf("%d\n", a);
		printf("%d\n", b);
		printf("%d\n", div);
		printf("%d\n", mod);
	}
}
