#include "../../includes.h"
#include "libft.h"

int ft_isalnum(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_isalnum((int)atol(av[1])));
	}
}
