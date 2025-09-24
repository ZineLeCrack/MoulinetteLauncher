#include "../../includes.h"

void	ft_advanced_sort_string_tab(char **tab, int(*cmp)(char *, char *));

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

int	ft_strcmp(char *s1, char *s2)
{
	int	n;

	n = 0;
	while (s1[n] == s2[n] && s1[n] != '\0' && s2[n] != '\0')
		n++;
	return (s1[n] - s2[n]);
}

int	ft_strcmp_starting_with_second_char(char *s1, char *s2)
{
	int	n;

	if (!s1[0] || !s2[0])
		return (s1[0] - s2[0]);
	n = 1;
	while (s1[n] == s2[n] && s1[n] != '\0' && s2[n] != '\0')
		n++;
	return (s1[n] - s2[n]);
}

int	main(void)
{
	char	*strs1[] = { "42", " ", "Le", " ", "Havre", " ", "!", "", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs1);
	ft_advanced_sort_string_tab(strs1, ft_strcmp);
	putstr("After:\ttab = ");
	print_tab(strs1);

	char	*strs2[] = { "Hello", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs2);
	ft_advanced_sort_string_tab(strs2, ft_strcmp);
	putstr("After:\ttab = ");
	print_tab(strs2);

	char	*strs3[] = { "a", "z", "t", "w", "s", "g", "j", "c", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs3);
	ft_advanced_sort_string_tab(strs3, ft_strcmp);
	putstr("After:\ttab = ");
	print_tab(strs3);

	char	*strs4[] = { "42", " ", "Le", " ", "Havre", " ", "!", "", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs4);
	ft_advanced_sort_string_tab(strs4, ft_strcmp_starting_with_second_char);
	putstr("After:\ttab = ");
	print_tab(strs4);

	char	*strs5[] = { "Hello", NULL };
	putstr("Before:\ttab = ");
	print_tab(strs5);
	ft_advanced_sort_string_tab(strs5, ft_strcmp_starting_with_second_char);
	putstr("After:\ttab = ");
	print_tab(strs5);
}
