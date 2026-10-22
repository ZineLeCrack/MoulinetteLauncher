#include "../../includes.h"
#include "libft.h"

int ft_memcmp(const void *s1, const void *s2, size_t n);

int main(int ac, char **av) {
	if (ac == 4) {
		int cmp = ft_memcmp(av[1], av[2], strtoul(av[3], NULL, 0));
		printf("%d", cmp > 0 ? 1 : (cmp < 0 ? -1 : 0));
	}
}
