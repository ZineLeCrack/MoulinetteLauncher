#include "../../includes.h"

int	ft_iterative_power(int nb, int power);

int main()
{
	for (int i = -3; i < 7; i++) {
		for (int j = -3; j < 7; j++) {
			printf("ft_iterative_power(%d, %d) = %d\n", i, j, ft_iterative_power(i, j));
		}
	}
}
