#include "../../includes.h"

int	ft_ultimate_range(int **range, int min, int max);

int main(int ac, char **av)
{
	if (ac == 3) {
		int	*tab;
		int min = atoi(av[1]);
		int max = atoi(av[2]);

		int size = ft_ultimate_range(&tab, min, max);

		if (size >= 0) {
			for (int i = 0; i < size; i++)
				printf("%d\n", tab[i]);
			free(tab);
		}
	}
}
