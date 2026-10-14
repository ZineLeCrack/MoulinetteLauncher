#include "../../includes.h"

int	ft_fibonacci(int index);

int main(int ac, char **av)
{
	if (ac == 2) {
		printf("%d", ft_fibonacci(atoi(av[1])));
	}
}
