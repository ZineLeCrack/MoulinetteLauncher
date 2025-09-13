#include "../../includes.h"

void	ft_ultimate_div_mod(int *a, int *b);

int	main()
{
	int	div = 42;
	int	mod = 5;

	ft_ultimate_div_mod(&div, &mod);

	printf("42 / 5 = %d\n42 %% 5 = %d\n", div, mod);
}
