#include "../../includes.h"
#include "libft.h"

char *ft_strrchr(const char *s, int c);

int main(int ac, char **av) {
	if (ac == 3) {
		printf("%s", ft_strrchr(av[1], atol(av[2])));
	}
}
