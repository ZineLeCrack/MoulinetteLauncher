#include "../../includes.h"
#include "libft.h"

int ft_isdigit(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_isdigit((int)atol(av[1])));
	}
}
