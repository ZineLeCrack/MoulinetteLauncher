#include "../../includes.h"

char	*ft_strcapitalize(char *str);

int	main()
{
	char	str1[] = "hello world !";

	putstr("\"");
	putstr(str1);
	putstr("\" --> \"");
	char *return_value = ft_strcapitalize(str1);
	putstr(str1);
	putstr("\", returned value = ");
	putstr(return_value == str1 ? "OK\n" : "KO\n");

	char	str2[] = "";

	putstr("\"");
	putstr(str2);
	putstr("\" --> \"");
	return_value = ft_strcapitalize(str2);
	putstr(str2);
	putstr("\", returned value = ");
	putstr(return_value == str2 ? "OK\n" : "KO\n");

	char	str3[] = "hi, how are you? 42words forty-two; fifty+and+one";

	putstr("\"");
	putstr(str3);
	putstr("\" --> \"");
	return_value = ft_strcapitalize(str3);
	putstr(str3);
	putstr("\", returned value = ");
	putstr(return_value == str3 ? "OK\n" : "KO\n");

	char	str4[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

	putstr("\"");
	putstr(str4);
	putstr("\" --> \"");
	return_value = ft_strcapitalize(str4);
	putstr(str4);
	putstr("\", returned value = ");
	putstr(return_value == str4 ? "OK\n" : "KO\n");

	char	str5[] = "😁ok";

	putstr("\"");
	putstr(str5);
	putstr("\" --> \"");
	return_value = ft_strcapitalize(str5);
	putstr(str5);
	putstr("\", returned value = ");
	putstr(return_value == str5 ? "OK\n" : "KO\n");
}
