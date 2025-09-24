#include "../../includes.h"

int ft_is_sort(int *tab, int length, int(*f)(int, int));

int	cmp(int a, int b)
{
	return a - b;
}

int main()
{
	int	returned_value;

	putstr(">>>>>>>>>> tab = [-2, -1, 0, 1, 2, 3] <<<<<<<<<<\n");
	int	tab1[] = { -2, -1, 0, 1, 2, 3 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab1, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [2, 1, 0, -1, -2, -3] <<<<<<<<<\n");
	int	tab2[] = { 2, 1, 0, -1, -2, -3 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab2, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>>>>>>>>>>> tab = [0] <<<<<<<<<<<<<<<<<<\n");
	int	tab3[] = { 0 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab3, 1, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>>>>>>>>>>> tab = [] <<<<<<<<<<<<<<<<<<<\n");
	int	tab4[] = { };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab4, 0, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [2, 1, 0, -1, 2, -3] <<<<<<<<<<\n");
	int	tab5[] = { 2, 1, 0, -1, 2, -3 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab5, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [2, 1, 0, -1, -2, 3] <<<<<<<<<<\n");
	int	tab6[] = { 2, 1, 0, -1, -2, 3 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab6, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>> tab = [-2, 1, 0, -1, -2, -3] <<<<<<<<<\n");
	int	tab7[] = { -2, 1, 0, -1, 2, -3 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab7, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [1, -6, 3, -8, 0, 1] <<<<<<<<<<\n");
	int	tab8[] = { 1, -6, 3, -8, 0, 1 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab8, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");
}
