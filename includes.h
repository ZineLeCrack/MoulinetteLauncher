# include <unistd.h>
# include <stdlib.h>
# include <string.h>
# include <stdio.h>
# include <fcntl.h>
# include <limits.h>
# include <math.h>
# include <sys/wait.h>

void	putstr(char const *str)
{
	if (!str) {
		write(1, "(null)", 6);
		return ;
	}
	while (write(1, str, *str != 0)) str++;
}
