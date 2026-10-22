#include "../../includes.h"
#include "libft.h"

char *ft_strchr(const char *s, int c);

int main(int ac, char **av) {
	if (ac == 3) {
		printf("%s", ft_strchr(av[1], atol(av[2])));
	}
}
