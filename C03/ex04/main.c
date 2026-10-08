#include "../../includes.h"

char	*ft_strstr(char *str, char *to_find);

int	main(int ac, char **av)
{
	if (ac == 3) {
		printf("%s", ft_strstr(av[1], av[2]));
	}
}
