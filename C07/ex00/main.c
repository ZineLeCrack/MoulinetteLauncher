#include "../../includes.h"

char	*ft_strdup(char *src);

int main()
{
	char *str = ft_strdup("");
	if (str) {
		putstr(str);
		free(str);
	} else {
		putstr("Memory allocation failed.");
	}

	str = ft_strdup("\n");
	if (str) {
		putstr(str);
		free(str);
	} else {
		putstr("Memory allocation failed.");
	}

	str = ft_strdup("Hello World !\n");
	if (str) {
		putstr(str);
		free(str);
	} else {
		putstr("Memory allocation failed.");
	}

	str = ft_strdup("0123456789\n");
	if (str) {
		putstr(str);
		free(str);
	} else {
		putstr("Memory allocation failed.");
	}

	str = ft_strdup("z\ty\tx\n");
	if (str) {
		putstr(str);
		free(str);
	} else {
		putstr("Memory allocation failed.");
	}

	str = ft_strdup("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n");
	if (str) {
		putstr(str);
		free(str);
	} else {
		putstr("Memory allocation failed.");
	}
}
