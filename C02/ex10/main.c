#include "../../includes.h"

unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size);

int	main(int ac, char **av)
{
	if (ac == 4) {
		unsigned int value = ft_strlcpy(av[1], av[2], atoi(av[3]));
		printf("%s\n", av[1]);
		printf("%s\n", av[2]);
		printf("%u\n", value);
	}
}
