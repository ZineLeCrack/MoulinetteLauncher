#include "../../includes.h"

int	ft_fibonacci(int index);

int main()
{
	for (int i = -3; i < 15; i++) {
		printf("ft_fibonacci(%d) = %d\n", i, ft_fibonacci(i));
	}
}
