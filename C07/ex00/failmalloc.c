#include "../../includes.h"

char	*ft_strdup(char *src);

int main()
{
	char *str = ft_strdup("Abracadabra");
	if (str) free(str);
}
