#include "../../includes.h"

void	ft_putstr_non_printable(char *str);

int	main()
{
	ft_putstr_non_printable("Hello\nHow are you?");
	write(1, "\n", 1);
	ft_putstr_non_printable("");
	write(1, "\n", 1);
	ft_putstr_non_printable("\t\n\v\f\r");
	write(1, "\n", 1);

	char str[128];
	for (int i = 0; i < 127; i++) {
		str[i] = (char)(i + 1);
	}
	str[127] = '\0';
	ft_putstr_non_printable(str);
	write(1, "\n", 1);
}
