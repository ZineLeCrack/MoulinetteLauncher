#include "../../includes.h"

char	*ft_strlowcase(char *str);

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%s", ft_strlowcase(av[1]));
	}
}
