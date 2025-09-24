#include "../../includes.h"

void	ft_foreach(int *tab, int length, void(*f)(int));

void	put_digit(int n)
{
	char c = n + '0';
	write(1, &c, 1);
	write(1, "\n", 1);
}

void	ft_putchar(int c)
{
	write(1, &c, 1);
}

int main()
{
	putstr(">>>>>>>>>> tab = (1, 2, 3, 4) : ft_putnbr <<<<<<<<<<\n");
	int	tab1[] = { 1, 2, 3, 4 };
	ft_foreach(tab1, 4, put_digit);
	putstr(">>>>>>>>> tab = \"42 Le Havre\" : ft_putchar <<<<<<<<<\n");
	int	tab2[] = { '4', '2', ' ', 'L', 'e', ' ', 'H', 'a', 'v', 'r', 'e', '\n' };
	ft_foreach(tab2, 12, ft_putchar);
}
