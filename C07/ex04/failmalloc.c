#include "../../includes.h"

char	*ft_convert_base(char *nbr, char *base_from, char *base_to);

int main()
{
	char *str = ft_convert_base("101010", "01", "0123456789");
	printf("%s\n", str);
	if (str) free(str);
}
