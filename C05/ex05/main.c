#include "../../includes.h"

int	ft_sqrt(int nb);

int main(int ac, char **av)
{
	if (ac == 2) {
		printf("%d", ft_sqrt(atoi(av[1])));
	}
}
