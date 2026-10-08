#include "../../includes.h"

char	*ft_strcat(char *dest, char *src);

int	main(int ac, char **av)
{
	if (ac == 3) {
		char *ret = ft_strcat(av[1], av[2]);
		printf("%s\n", av[1]);
		printf("%s\n", av[2]);
		printf("%p\n", (void*)(ret - *av));
	}
}
