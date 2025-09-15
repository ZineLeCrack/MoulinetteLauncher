#include "../../includes.h"

int	ft_atoi(char *str);

int	main(void)
{
	char	str1[] = "0";
	printf("str = \"0\" --> %d\n", ft_atoi(str1));

	char	str2[] = " \r 42 \t ";
	printf("str = \" \\r 42 \\t \" --> %d\n", ft_atoi(str2));

	char	str3[] = "42LeHavre42";
	printf("str = \"42LeHavre42\" --> %d\n", ft_atoi(str3));

	char	str4[] = "++--+-42";
	printf("str = \"++--+-42\" --> %d\n", ft_atoi(str4));

	char	str5[] = "\t\v  \f\n \n  +++--+-1234$_24\t\t.";
	printf("str = \"\\t\\v  \\f\\n \\n  +++--+-1234$_24\\t\\t.\" --> %d\n", ft_atoi(str5));

	char	str6[] = "";
	printf("str = \"\" --> %d\n", ft_atoi(str6));

	char	str7[] = " + -42";
	printf("str = \" + -42\" --> %d\n", ft_atoi(str7));

	char	str8[] = " ---+--+1234ab567";
	printf("str = \" ---+--+1234ab567\" --> %d\n", ft_atoi(str8));

	char	str9[] = "+-+-+-2147483649";
	printf("str = \"+-+-+-2147483649\" (overflow) --> %d\n", ft_atoi(str9));
}
