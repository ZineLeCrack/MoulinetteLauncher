#include "../../includes.h"

int	ft_is_prime(int nb);

int main()
{
	for (int i = -3; i < 250; i++) {
		printf("ft_is_prime(%d) = %d\n", i, ft_is_prime(i));
	}
}
