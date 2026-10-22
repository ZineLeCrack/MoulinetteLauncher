#include "../../includes.h"
#include "libft.h"

void *ft_memset(void *s, int c, size_t n);

int main(int ac, char **av) {
	if (ac == 3) {
		size_t	size = atoi(av[1]);
		char	buf[size];
		ft_memset(buf, atoi(av[2]), size);
		write(1, buf, size);
	}
}
