#include "../../includes.h"

int	ft_sqrt(int nb);

int main()
{
	for (int i = -3; i < 101; i++) {
		printf("ft_sqrt(%d) = %d\n", i, ft_sqrt(i));
	}
}
