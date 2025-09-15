#include "../../includes.h"

void	ft_putnbr(int nb);

int	main(void)
{
	putstr("Testing 0: ");
	ft_putnbr(0);
	write(1, "\n", 1);
	putstr("Testing 1: ");
	ft_putnbr(1);
	write(1, "\n", 1);
	putstr("Testing -1: ");
	ft_putnbr(-1);
	write(1, "\n", 1);
	putstr("Testing 10: ");
	ft_putnbr(10);
	write(1, "\n", 1);
	putstr("Testing 42: ");
	ft_putnbr(42);
	write(1, "\n", 1);
	putstr("Testing -10: ");
	ft_putnbr(-10);
	write(1, "\n", 1);
	putstr("Testing -42: ");
	ft_putnbr(-42);
	write(1, "\n", 1);
	putstr("Testing 2147483647: ");
	ft_putnbr(INT_MAX);
	write(1, "\n", 1);
	putstr("Testing -2147483648: ");
	ft_putnbr(INT_MIN);
	write(1, "\n", 1);
}
