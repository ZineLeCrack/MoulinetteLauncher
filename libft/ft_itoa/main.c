#include "../../includes.h"
#include "libft.h"

char *ft_itoa(int n);

int main(int ac, char **av) {
	if (ac == 2) {
		char	*str = ft_itoa(atoi(av[1]));
		printf("%s", str);
		if (str) free(str);
	}
}
