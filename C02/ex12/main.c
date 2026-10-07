#include "../../includes.h"

void	*ft_print_memory(void *addr, unsigned int size);

int	main(int ac, char **av)
{
	if (ac == 2) {
		ft_print_memory(av[1], strlen(av[1]) + 1);
	}
}
