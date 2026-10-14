#include "../../includes.h"

int	ft_is_prime(int nb);

int main(int ac, char **av)
{
	if (ac == 2) {
		printf("%d", ft_is_prime(atoi(av[1])));
	}
}
