#include "../../includes.h"
#include "libft.h"

int ft_toupper(int c);

int main(int ac, char **av) {
	if (ac == 2) {
		printf("%d", ft_toupper(atol(av[1])));
	}
}
