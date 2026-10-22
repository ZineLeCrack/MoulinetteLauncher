#include "../../includes.h"
#include "libft.h"

char **ft_split(char const *s, char c);

int main(int ac, char **av)
{
	if (ac == 3) {
		char	**split = ft_split(av[1], av[2][0]);

		if (split) {
			for (int i = 0; split[i]; i++) {
				printf("%s\n", split[i]);
				free(split[i]);
			}
			free(split);
		} else {
			printf("%p", split);
		}
	}
}
