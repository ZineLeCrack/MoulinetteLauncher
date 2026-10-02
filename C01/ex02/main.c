#include "../../includes.h"

void	ft_swap(int *a,int *b);

int main(int ac, char **av)
{
	if (ac == 3) {
		int	a = atoi(av[1]);
		int	b = atoi(av[2]);

		ft_swap(&a, &b);

		printf("%d\n", a);
		printf("%d\n", b);
	}
}
