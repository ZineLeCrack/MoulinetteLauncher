#include <unistd.h>

void	ft_is_negative(int n)
{
	write(1, "N", n < 0);
	write(1, "P", n >= 0);
}
