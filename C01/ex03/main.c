#include "../../includes.h"

void	ft_div_mod(int a, int b, int *div,int *mod);

int	main()
{
	int	a = 42;
	int	b = 5;
	int	div;
	int	mod;

	ft_div_mod(a, b, &div, &mod);

	printf("%d / %d = %d\n%d %% %d = %d\n", a, b, div, a, b, mod);
}
