#include "../../includes.h"
#include "libft.h"

void ft_bzero(void *s, size_t n);

int main(void)
{
	int	tab[42];

	ft_bzero(tab, sizeof(tab));

	for (size_t i = 0; i < 42; i++) {
		printf("%d\n", tab[i]);
	}
}
