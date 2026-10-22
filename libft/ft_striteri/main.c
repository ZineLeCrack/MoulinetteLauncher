#include "../../includes.h"
#include "libft.h"

void ft_striteri(char *s, void (*f)(unsigned int, char*));

void	f(unsigned int index, char *addr)
{
	*addr = *addr + index;
}

int main(int ac, char **av) {
	if (ac == 2) {
		ft_striteri(av[1], f);
		printf("%s", av[1]);
	}
}
