#include "../../includes.h"
#include "libft.h"

int ft_isprint(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_isprint((int)atol(av[1])));
	}
}
