#include "../../includes.h"

char	*ft_strcapitalize(char *str);

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%s", ft_strcapitalize(av[1]));
	}
}
