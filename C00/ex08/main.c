#include "../../includes.h"

void	ft_print_combn(int nb);

int	main(void)
{
	for (int i = 1; i < 11; i++)
	{
		printf("nb = %d:\n", i);
		ft_print_combn(i);
		printf("\n\n");
	}
}
