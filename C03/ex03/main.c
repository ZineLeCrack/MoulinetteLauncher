#include "../../includes.h"

char	*ft_strncat(char *dest, char *src, unsigned int nb);

int	main(int ac, char **av)
{
	if (ac == 4) {
		char *ret = ft_strncat(av[1], av[2], atoi(av[3]));
		printf("%s\n", av[1]);
		printf("%s\n", av[2]);
		printf("%p\n", (void*)(ret - *av));
	}
}
