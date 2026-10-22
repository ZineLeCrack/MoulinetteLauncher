#include "../../includes.h"
#include "libft.h"

void *ft_memcpy(void *dest, const void *src, size_t n);

int main(int ac, char **av) {
	if (ac == 4) {
		char	buf[strlen(av[1]) + strlen(av[2]) + 1];

		strcpy(buf, av[1]); strcpy(&buf[strlen(av[1])], av[2]);

		void	*ptr = ft_memcpy(&buf[strlen(av[1])], buf, strtoul(av[3], NULL, 0));

		printf("%s\n", buf);
		printf("%s\n", &buf[strlen(av[1])]);
		printf("%p\n", (void*)((size_t)ptr - (size_t)buf - strlen(av[1])));
	}
}
