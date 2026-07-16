#include "../../includes.h"

void	ft_putstr_non_printable(char *str);

int	main()
{
	char	str[256] = {0};

	for (unsigned int i = 0; i < 255; i++)
		str[i] = (char)(i + 1);

	ft_putstr_non_printable(str);
}
