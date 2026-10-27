#include "../../includes.h"
#include "libft.h"

void *ft_calloc(size_t nmemb, size_t size);

int main(int ac, char **av)
{
	if (ac == 3) {
		size_t	nmemb = strtoul(av[1], NULL, 0);
		size_t	size = strtoul(av[2], NULL, 0);
		size_t	bsize = nmemb * size;

		void	*buf = ft_calloc(nmemb, size);

		if (buf) {
			for (size_t i = 0; i < bsize; i++)
				printf("%x", ((uint8_t *)buf)[i]);
			free(buf);
		} else {
			printf("%p", buf);
		}
	}
}
