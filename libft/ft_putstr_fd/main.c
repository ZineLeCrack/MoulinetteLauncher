#include "../../includes.h"
#include "libft.h"

void ft_putstr_fd(char *s, int fd);

int main(int ac, char **av) {
	if (ac == 2) {
		int fd = open("user_output", O_CREAT | O_TRUNC | O_WRONLY, 0644);
		ft_putstr_fd(av[1], fd);
	}
}
