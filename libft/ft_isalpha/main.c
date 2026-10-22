#include "../../includes.h"
#include "libft.h"

int ft_isalpha(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_isalpha((int)atol(av[1])));
	}
}
