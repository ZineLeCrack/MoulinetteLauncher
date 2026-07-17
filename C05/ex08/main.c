#include "../../includes.h"

int	ft_ten_queens_puzzle(void);

int main()
{
	int	n = ft_ten_queens_puzzle();
	printf("Returned value = %d.\n", n);
	if (n == 724)
		printf("Returned value: OK.\n");
	else
		printf("Returned value: KO, expected %d.\n", 724);
}
