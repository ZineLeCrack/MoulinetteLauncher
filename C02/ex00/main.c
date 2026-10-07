#include "../../includes.h"

char	*ft_strcpy(char *dest, char *src);

int main(int ac, char **av)
{
	if (ac == 3) {
		char *rep = ft_strcpy(av[1], av[2]);
		printf("%s\n", av[1]);
		printf("%s\n", av[2]);
		printf("%p\n", (void*)(rep - *av));
	}
}
