#include "../../includes.h"

char	*ft_strjoin(int size, char **strs, char *sep);

int main(int ac, char **av)
{
	if (ac > 1) {
		char **strs = malloc(sizeof(char*) * (ac - 2));

		for (int i = 0; i < ac - 2; i++) {
			strs[i] = av[i + 1];
		}

		char *str = ft_strjoin(ac - 2, strs, av[ac - 1]);

		free(strs);

		if (str) {
			printf("%s", str);
			free(str);
		} else {
			printf("Memory allocation failed");
		}
	}
}
