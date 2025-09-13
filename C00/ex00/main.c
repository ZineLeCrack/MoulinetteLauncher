#include "../../includes.h"

void	ft_putchar(char c);

int main()
{
	putstr("Testing ' ': ");
	ft_putchar(' ');
	ft_putchar('\n');
	putstr("Testing '4': ");
	ft_putchar('4');
	ft_putchar('\n');
	putstr("Testing '2': ");
	ft_putchar('2');
	ft_putchar('\n');
	putstr("Testing '~': ");
	ft_putchar('~');
	ft_putchar('\n');
	putstr("Testing DEL: ");
	ft_putchar(127);
	ft_putchar('\n');
	putstr("Testing NON ASCII CHAR: ");
	ft_putchar(-128);
	ft_putchar('\n');
}
