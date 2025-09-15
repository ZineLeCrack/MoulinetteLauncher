#include "../../includes.h"

int	ft_ultimate_range(int **range, int min, int max);

int main()
{
	int	n;
	int	*tab;

	n = ft_ultimate_range(&tab, 0, 0);
	printf("min = max -> %s, returned value = %d\n", tab == NULL ? "OK" : "KO", n);

	n = ft_ultimate_range(&tab, 1, 0);
	printf("min > max -> %s, returned value = %d\n", tab == NULL ? "OK" : "KO", n);

	n = ft_ultimate_range(&tab, 2, 9);
	for (int i = 0; i < 7; i++) {
		printf("%d ", tab[i]);
	}
	free(tab);
	printf(", returned value = %d\n", n);

	n = ft_ultimate_range(&tab, -10, -4);
	for (int i = 0; i < 6; i++) {
		printf("%d ", tab[i]);
	}
	free(tab);
	printf(", returned value = %d\n", n);

	n = ft_ultimate_range(&tab, -1, 3);
	for (int i = 0; i < 4; i++) {
		printf("%d ", tab[i]);
	}
	free(tab);
	printf(", returned value = %d\n", n);

	n = ft_ultimate_range(&tab, -14, 24);
	for (int i = 0; i < 38; i++) {
		printf("%d ", tab[i]);
	}
	free(tab);
	printf(", returned value = %d\n", n);
}
