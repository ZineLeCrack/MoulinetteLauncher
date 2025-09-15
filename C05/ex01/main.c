#include "../../includes.h"

int	ft_recursive_factorial(int nb);

int main()
{
	for (int i = -3; i < 15; i++) {
		printf("ft_recursive_factorial(%d) = %d\n", i, ft_recursive_factorial(i));
	}
}
