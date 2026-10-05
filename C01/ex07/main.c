#include "../../includes.h"

int	ft_rev_int_tab(int *tab, int size);

int main(int ac, char **av)
{
	int *tab = malloc(sizeof(int) * (ac - 1));

	for (int i = 0; i + 1 < ac; i++) {
		tab[i] = atoi(av[i + 1]);
	}

	ft_rev_int_tab(tab, ac - 1);

	for (int i = 0; i + 1 < ac; i++) {
		printf("%d\n", tab[i]);
	}

	free(tab);
}
