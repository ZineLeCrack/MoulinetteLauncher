#include "../../includes.h"
#include "libft.h"

void *ft_calloc(size_t nmemb, size_t size);

int main(int ac, char **av)
{
	if (ac == 4) {
		size_t	nmemb = strtoul(av[1], NULL, 0);
		size_t	size = strtoul(av[2], NULL, 0);
		size_t	bsize = nmemb * size;

		void	*buf = ft_calloc(nmemb, size);

		for (size_t i = 0; i < bsize; i++) {
			memcpy(buf, av[3], bsize);
		}

		for (size_t i = 0; i < bsize; i++) {
			printf("%x", ((uint8_t *)buf)[i]);
		}

		free(buf);
	}
}
