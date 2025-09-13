#include "../../includes.h"

void	ft_putnbr(int nb);

int	main(void)
{
	ft_putnbr(0);
	write(1, "\n", 1);
	ft_putnbr(1);
	write(1, "\n", 1);
	ft_putnbr(-1);
	write(1, "\n", 1);
	ft_putnbr(10);
	write(1, "\n", 1);
	ft_putnbr(42);
	write(1, "\n", 1);
	ft_putnbr(-10);
	write(1, "\n", 1);
	ft_putnbr(-42);
	write(1, "\n", 1);
	ft_putnbr(INT_MAX);
	write(1, "\n", 1);
	ft_putnbr(INT_MIN);
	write(1, "\n", 1);
}
