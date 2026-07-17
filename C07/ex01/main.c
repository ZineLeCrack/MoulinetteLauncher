#include "../../includes.h"

int	*ft_range(int min, int max);

int main()
{
	int	*tab;

	tab = ft_range(0, 0);
	printf("min = max -> %s\n", tab == NULL ? "OK" : "KO");
	if (tab) free(tab);

	tab = ft_range(1, 0);
	printf("min > max -> %s\n", tab == NULL ? "OK" : "KO");
	if (tab) free(tab);

	tab = ft_range(2, 9);
	if (tab)
	{
		for (int i = 0; i < 7; i++) {
			printf("%d ", tab[i]);
		}
		free(tab);
		printf("\n");
	} else {
		putstr("Memory allocation failed.");
	}

	tab = ft_range(-10, -4);
	if (tab)
	{
		for (int i = 0; i < 6; i++) {
			printf("%d ", tab[i]);
		}
		free(tab);
		printf("\n");
	} else {
		putstr("Memory allocation failed.");
	}

	tab = ft_range(-1, 3);
	if (tab)
	{
		for (int i = 0; i < 4; i++) {
			printf("%d ", tab[i]);
		}
		free(tab);
		printf("\n");
	} else {
		putstr("Memory allocation failed.");
	}

	tab = ft_range(-14, 24);
	if (tab)
	{
		for (int i = 0; i < 38; i++) {
			printf("%d ", tab[i]);
		}
		free(tab);
		printf("\n");
	} else {
		putstr("Memory allocation failed.");
	}
}
