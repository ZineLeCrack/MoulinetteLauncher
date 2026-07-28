#include "../../includes.h"

char	*ft_strjoin(int size, char **strs, char *sep);

int main()
{
	char *strs[] = { "Hello", "World", "!" };
	char *str = ft_strjoin(3, strs, " ");
	printf("%s\n", str);
	if (str) free(str);
}
