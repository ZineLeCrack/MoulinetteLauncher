#include "../../includes.h"

int	ft_str_is_lowercase(char *str);

int	main()
{
	printf("\"%s\" --> %d\n", "azerty", ft_str_is_lowercase("azerty"));
	printf("\"%s\" --> %d\n", "", ft_str_is_lowercase(""));
	printf("\"%s\" --> %d\n", "`test`", ft_str_is_lowercase("`test`"));
	printf("\"%s\" --> %d\n", "{uwu}", ft_str_is_lowercase("{uwu}"));
	printf("\"%s\" --> %d\n", "KO", ft_str_is_lowercase("KO"));
	printf("\"%s\" --> %d\n", "😁", ft_str_is_lowercase("😁"));
	printf("\"%s\" --> %d\n", "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz", ft_str_is_lowercase("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"));
}
