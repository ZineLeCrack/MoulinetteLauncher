#include "../../includes.h"

char	**ft_split(char *str, char *charset);

int main(int ac, char **av)
{
	if (ac == 3) {
		char	**split = ft_split(av[1], av[2]);

		if (split) {
			for (int i = 0; split[i]; i++) {
				printf("%s\n", split[i]);
				free(split[i]);
			}
			free(split);
		} else {
			printf("%p", split);
		}
	}
}
