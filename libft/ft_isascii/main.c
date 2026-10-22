#include "../../includes.h"
#include "libft.h"

int ft_isascii(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_isascii((int)atol(av[1])));
	}
}
