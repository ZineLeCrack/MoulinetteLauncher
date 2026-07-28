#include "../../includes.h"

char	**ft_split(char *str, char *charset);

int main()
{
	char	str[] = "Hello World !";
	char	charset[] = " o";

	char	**split = ft_split(str, charset);
	if (split) {
		for (int i = 0; split[i]; i++)
			free(split[i]);
		free(split);
	}
}
