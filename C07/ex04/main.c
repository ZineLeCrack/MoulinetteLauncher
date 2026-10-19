#include "../../includes.h"

char	*ft_convert_base(char *nbr, char *base_from, char *base_to);

int main(int ac, char **av)
{
	if (ac == 4) {
		char *str = ft_convert_base(av[1], av[2], av[3]);

		printf("%s", str);
		if (str) free(str);
	}
}
