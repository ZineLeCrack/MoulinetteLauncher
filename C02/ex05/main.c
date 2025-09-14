#include "../../includes.h"

int	ft_str_is_uppercase(char *str);

int	main()
{
	printf("\"%s\" --> %d\n", "AZERTY", ft_str_is_uppercase("AZERTY"));
	printf("\"%s\" --> %d\n", "", ft_str_is_uppercase(""));
	printf("\"%s\" --> %d\n", "@TEST", ft_str_is_uppercase("@TEST"));
	printf("\"%s\" --> %d\n", "[UWU]", ft_str_is_uppercase("[UWU]"));
	printf("\"%s\" --> %d\n", "ko", ft_str_is_uppercase("ko"));
	printf("\"%s\" --> %d\n", "😁", ft_str_is_uppercase("😁"));
	printf("\"%s\" --> %d\n", "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ", ft_str_is_uppercase("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"));
}
