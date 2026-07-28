#include "../../includes.h"

int	ft_ultimate_range(int **range, int min, int max);

int main()
{
	int *tab;
	ft_ultimate_range(&tab, -2, 10);
	if (tab) free(tab);
}
