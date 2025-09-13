#include "../../includes.h"

void	ft_is_negative(int n);

int	main(void)
{
	write(1, "1: ", 3);
	ft_is_negative(1);
	write(1, "\n-1: ", 5);
	ft_is_negative(-1);
	write(1, "\n0: ", 4);
	ft_is_negative(0);
	write(1, "\n2147483647: ", 13);
	ft_is_negative(INT_MAX);
	write(1, "\n-2147483648: ", 14);
	ft_is_negative(INT_MIN);
	write(1, "\n4242424242424242: ", 19);
	ft_is_negative((int)4242424242424242);
	write(1, "\n-4242424242424242: ", 20);
	ft_is_negative((int)-4242424242424242);
	write(1, "\n", 1);
}
