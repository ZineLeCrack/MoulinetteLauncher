#include "../../includes.h"

void	ft_ultimate_ft(int *********nbr);

int main()
{
	int	n = 0;

	int *nb1 = &n;
	int **nb2 = &nb1;
	int ***nb3 = &nb2;
	int ****nb4 = &nb3;
	int *****nb5 = &nb4;
	int ******nb6 = &nb5;
	int *******nb7 = &nb6;
	int ********nb8 = &nb7;
	int *********nb9 = &nb8;

	ft_ultimate_ft(nb9);
	printf("%d\n", n);
}
