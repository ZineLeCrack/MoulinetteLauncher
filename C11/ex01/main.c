#include "../../includes.h"

int	*ft_map(int *tab, int length, int(*f)(int));

int	ft_add(int n)
{
	return n + 1;
}

int	ft_double(int n)
{
	return n * 2;
}

void	ft_putnbr(int nb)
{
	if (nb < 0) {
		write(1, "-", 1);
		nb = -nb;
	}
	if (nb < 10) {
		char c = nb + '0';
		write(1, &c, 1);
	} else {
		ft_putnbr(nb / 10);
		ft_putnbr(nb % 10);
	}
}

void	print_tab(int *tab, int size)
{
	write(1, "[", 1);
	for (int i = 0; i < size; i++) {
		ft_putnbr(tab[i]);
		if (i < size - 1)
			write(1, ", ", 2);
		else
			write(1, "]", 1);
	}
	write(1, "\n", 1);
}

int main()
{
	putstr(">>>>>>>>>>> tab = [1, 2, 3, 4] : ft_add <<<<<<<<<<<\n");
	int	tab1[] = { 1, 2, 3, 4 };
	int *res = ft_map(tab1, 4, ft_add);
	print_tab(res, 4);
	free(res);

	putstr(">>>>>>>>> tab = [1, 2, 3, 4] : ft_double <<<<<<<<<<\n");
	res = ft_map(tab1, 4, ft_double);
	print_tab(res, 4);
	free(res);

	putstr(">>>>> tab = [-42, 12, 89, -1, 42] : ft_double <<<<<\n");
	int	tab2[] = { -42, 12, 89, -1, 42 };
	res = ft_map(tab2, 5, ft_double);
	print_tab(res, 5);
	free(res);
}
