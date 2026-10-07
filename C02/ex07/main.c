#include "../../includes.h"

char	*ft_strupcase(char *str);

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%s", ft_strupcase(av[1]));
	}
}
