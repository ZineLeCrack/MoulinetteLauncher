#include "../../includes.h"

char	*ft_strdup(char *src);

int main(int ac, char **av)
{
	if (ac == 2) {
		char	*str = ft_strdup(av[1]);
		if (str) {
			printf("%s", str);
			free(str);
		} else {
			printf("Memory allocation failed");
		}
	}
}
