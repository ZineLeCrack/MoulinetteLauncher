#include "../../includes.h"
#include "ft.h"

int main()
{
	int a = 1, b = 2;

	ft_putchar('a');
	ft_putstr("ok");
	ft_strcmp("ok", "ok");
	ft_strlen("ok");
	ft_swap(&a, &b);
}

void	ft_putchar(char c) {(void)c;}
void	ft_putstr(char *str) {(void)str;}
int		ft_strcmp(char *s1, char *s2) {(void)s1; (void)s2; return (1);}
int		ft_strlen(char *str) {(void)str; return (0);}
void	ft_swap(int *a, int *b) {(void)a; (void)b;}
