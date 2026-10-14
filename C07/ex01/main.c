#include "../../includes.h"

int	*ft_range(int min, int max);

int main(int ac, char **av)
{
	if (ac == 3) {
		int min = atoi(av[1]);
		int max = atoi(av[2]);

		int	*tab = ft_range(min, max);

		if (tab) {
			for (int i = 0; i < max - min; i++)
				printf("%d\n", tab[i]);
			free(tab);
		}
	}
}
