#include "../../includes.h"

int	ft_iterative_factorial(int nb);

int main()
{
	for (int i = -3; i < 15; i++) {
		printf("ft_iterative_factorial(%d) = %d\n", i, ft_iterative_factorial(i));
	}
}
