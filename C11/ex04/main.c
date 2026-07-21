#include "../../includes.h"

int ft_is_sort(int *tab, int length, int(*f)(int, int));

int	cmp(int a, int b)
{
	return a - b;
}

int main()
{
	int	returned_value;

	putstr(">>>>>>>>>> tab = [1, 2, 3] <<<<<<<<<<\n");
	int	tab9[] = { 1, 2, 3 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab9, 3, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [3, 2, 1] <<<<<<<<<<\n");
	int	tab10[] = { 3, 2, 1 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab10, 3, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [-42, -21, 0, 6, 12, 18] <<<<<<<<<<\n");
	int	tab1[] = { -2, -1, 0, 1, 2, 42 };
	putstr("returned value: ");
	returned_value = ft_is_sort(tab1, 6, cmp) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>> tab = [2, 2, 0, 0, -3, -3] <<<<<<<<<\n");
	int	tab2[] = { 42, 1, 0, -1, -2, -3 };
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

	putstr(">>>>>>>>>> tab = [4, 1, 0, -1, 2, -4] <<<<<<<<<<\n");
	int	tab5[] = { 4, 1, 0, -1, 2, -4 };
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

	putstr(">>>>>>>>> tab = [-2, 1, 0, -1, -1, -3] <<<<<<<<<\n");
	int	tab7[] = { 1, 1, 0, -1, -1, -3 };
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
