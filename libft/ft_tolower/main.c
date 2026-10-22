#include "../../includes.h"
#include "libft.h"

int ft_tolower(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_tolower(atol(av[1])));
	}
}
