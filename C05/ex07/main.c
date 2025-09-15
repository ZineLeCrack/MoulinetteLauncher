#include "../../includes.h"

int	ft_find_next_prime(int nb);

int main()
{
	for (int i = -3; i < 250; i++) {
		printf("ft_find_next_prime(%d) = %d\n", i, ft_find_next_prime(i));
	}
}
