#include "../../includes.h"

int	ft_atoi_base(char *str, char *base);

int	main(void)
{
	printf("base = \"0\" --> \"%d\"\n", ft_atoi_base("1", "0"));

	printf("base = \"01233456789\" --> \"%d\"\n", ft_atoi_base("1", "01233456789"));

	printf("base = \"\" --> \"%d\"\n", ft_atoi_base("1", ""));

	printf("base = \"01234+56789\" --> \"%d\"\n", ft_atoi_base("1", "01234+56789"));

	printf("base = \"01234-56789\" --> \"%d\"\n", ft_atoi_base("1", "01234-56789"));

	printf("base = \"01234\\t56789\" --> \"%d\"\n", ft_atoi_base("1", "01234\t56789"));

	printf("str = \"1\", base = \"0123456789\" --> \"%d\"\n", ft_atoi_base("1", "0123456789"));

	printf("str = \"42\", base = \"0123456789\" --> \"%d\"\n", ft_atoi_base("42", "0123456789"));

	printf("str = \"-42\", base = \"0123456789\" --> \"%d\"\n", ft_atoi_base("-42", "0123456789"));

	printf("str = \"2147483647\", base = \"0123456789\" --> \"%d\"\n", ft_atoi_base("2147483647", "0123456789"));

	printf("str = \"-2147483648\", base = \"0123456789\" --> \"%d\"\n", ft_atoi_base("-2147483648", "0123456789"));

	printf("str = \"101010\", base = \"01\" --> \"%d\"\n", ft_atoi_base("101010", "01"));

	printf("str = \"---100000000000000000000000000000002\", base = \"01\" --> \"%d\"\n", ft_atoi_base("---100000000000000000000000000000002", "01"));

	printf("str = \"11111111111111111111111111111112111111111111\", base = \"01\" --> \"%d\"\n", ft_atoi_base("11111111111111111111111111111112111111111111", "01"));

	printf("str = \" -- ---100\", base = \"01\" --> \"%d\"\n", ft_atoi_base(" -- ---100", "01"));

	printf("str = \"0\", base = \"0123456789abcdef\" --> \"%d\"\n", ft_atoi_base("0", "0123456789abcdef"));

	printf("str = \"   ffgo\", base = \"0123456789abcdef\" --> \"%d\"\n", ft_atoi_base("   ffgo", "0123456789abcdef"));

	printf("str = \"\\t\\t++---++++--400vivi400\", base = \"0123456789abcdef\" --> \"%d\"\n", ft_atoi_base("\t\t++---++++--400vivi400", "0123456789abcdef"));

	printf("str = \"nvy\", base = \"pneyvif\" --> \"%d\"\n", ft_atoi_base("nvy", "pneyvif"));

	printf("str = \"   \\t\\r+++-oneyvif\", base = \"poneyvif\" --> \"%d\"\n", ft_atoi_base("   \t\r+++-oneyvif", "poneyvif"));
}
