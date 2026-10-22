#include "../../includes.h"
#include "libft.h"

size_t ft_strlcat(char *dst, const char *src, size_t size);

int	main(int ac, char **av)
{
	if (ac == 4) {
		size_t	ret = ft_strlcat(av[1], av[2], strtoul(av[3], NULL, 0));
		printf("%s\n", av[1]);
		printf("%s\n", av[2]);
		printf("%zu\n", ret);
	}
}
