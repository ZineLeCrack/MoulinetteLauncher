#include "../../includes.h"

int	ft_iterative_power(int nb, int power);

int main(int ac, char **av)
{
	if (ac == 3) {
		printf("%d", ft_iterative_power(atoi(av[1]), atoi(av[2])));
	}
}
