#include "../../includes.h"

int	*ft_range(int min, int max);

int main()
{
	int *tab = ft_range(-2, 10);
	if (tab) free(tab);
}
