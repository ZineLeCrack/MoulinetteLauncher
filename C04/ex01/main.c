#include "../../includes.h"

void	ft_putstr(char *str);

int	main()
{
	ft_putstr("");
	ft_putstr("\n");
	ft_putstr("42\n");
	ft_putstr("\t\v\r\0\n");
	ft_putstr("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n");
}
