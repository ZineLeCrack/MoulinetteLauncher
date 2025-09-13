#include "../../includes.h"

void	ft_putchar(char c);

int main()
{
	ft_putstr("Testing ' ': ");
	ft_putchar(' ');
	ft_putchar('\n');
	ft_putstr("Testing '4': ");
	ft_putchar('4');
	ft_putchar('\n');
	ft_putstr("Testing '2': ");
	ft_putchar('2');
	ft_putchar('\n');
	ft_putstr("Testing '~': ");
	ft_putchar('~');
	ft_putchar('\n');
	ft_putstr("Testing DEL: ");
	ft_putchar(127);
	ft_putchar('\n');
	ft_putstr("Testing NON ASCII CHAR: ");
	ft_putchar(-128);
	ft_putchar('\n');
}
