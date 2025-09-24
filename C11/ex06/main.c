#include "../../includes.h"

void	ft_sort_string_tab(char **tab);

void	print_tab(char **tab)
{
	putstr("[");
	for (int i = 0; tab[i]; i++) {
		putstr("\"");
		putstr(tab[i]);
		putstr("\"");
		if (tab[i + 1])
			putstr(", ");
		else
			putstr("]\n");
	}
}

int	main(void)
{
	char	*strs1[] = { "42", " ", "Le", " ", "Havre", " ", "!", "", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs1);
	ft_sort_string_tab(strs1);
	putstr("After:\ttab = ");
	print_tab(strs1);

	char	*strs2[] = { "Hello", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs2);
	ft_sort_string_tab(strs2);
	putstr("After:\ttab = ");
	print_tab(strs2);

	char	*strs3[] = { "a", "z", "t", "w", "s", "g", "j", "c", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs3);
	ft_sort_string_tab(strs3);
	putstr("After:\ttab = ");
	print_tab(strs3);
}
