#include "../../includes.h"
#include "libft.h"

void ft_putchar_fd(char c, int fd);

int main(int ac, char **av) {
	if (ac == 2) {
		int fd = open("user_output", O_CREAT | O_TRUNC | O_WRONLY, 0644);
		ft_putchar_fd(av[1][0], fd);
	}
}
