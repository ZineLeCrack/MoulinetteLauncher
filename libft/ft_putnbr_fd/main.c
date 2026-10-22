#include "../../includes.h"
#include "libft.h"

void ft_putnbr_fd(int n, int fd);

int main(int ac, char **av) {
	if (ac == 2) {
		int fd = open("user_output", O_CREAT | O_TRUNC | O_WRONLY, 0644);
		ft_putnbr_fd(atoi(av[1]), fd);
	}
}
