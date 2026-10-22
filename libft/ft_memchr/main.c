#include "../../includes.h"
#include "libft.h"

void *ft_memchr(const void *s, int c, size_t n);

int main(int ac, char **av) {
	if (ac == 4) {
		printf("%s", (char *)ft_memchr(av[1], (int)atol(av[2]), strtoul(av[3], NULL, 0)));
	}
}
