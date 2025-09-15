#include "../../includes.h"

int	ft_sort_int_tab(int *tab, int size);

int	main()
{
	int	tab1[5] = { 4, -9, -1, 2, 0 };
	int	tab2[0] = {};
	int	tab3[1] = { 42 };
	int tab4[420];

	for (int i = 0; i < 420; i++) {
		tab4[i] = 209 - i;
	}

	for (int i = 0; i < 5; i++) {
		printf("%d\n", tab1[i]);
	}
	printf("---\n");

	ft_sort_int_tab(tab1, 5);

	for (int i = 0; i < 5; i++) {
		printf("%d\n", tab1[i]);
	}

	printf("\n\n");

	ft_sort_int_tab(tab2, 0);
	
	printf("[ %d ]  -->  ", tab3[0]);
	ft_sort_int_tab(tab3, 1);
	printf("[ %d ]\n", tab3[0]);

	printf("\n\n");

	for (int i = 0; i < 420; i++) {
		printf("%d\n", tab4[i]);
	}

	printf("---\n");
	ft_sort_int_tab(tab4, 420);

	for (int i = 0; i < 420; i++) {
		printf("%d\n", tab4[i]);
	}
}
