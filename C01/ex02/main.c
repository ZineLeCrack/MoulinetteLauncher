#include "../../includes.h"

void	ft_swap(int *a,int *b);

int main()
{
	int a = 24;
	int b = 42;

	printf("a = %d, b = %d => ", a, b);
	
	ft_swap(&a, &b);

	printf("a = %d, b = %d\n", a, b);
}
