#include "../../includes.h"
#include "libft.h"

char *ft_strmapi(char const *s, char (*f)(unsigned int, char));

char	f(unsigned int index, char c)
{
	return c + (char)index;
}

int main(int ac, char **av) {
	if (ac == 2) {
		char *str = ft_strmapi(av[1], f);
		printf("%s", str);
		if (str) free(str);
	}
}
