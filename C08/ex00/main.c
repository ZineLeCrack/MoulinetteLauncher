#include "../../../MoulinetteLauncher/includes.h"
#include "ft.h"
#include "ft.h"

#ifndef FT_H
# error Invalid `#define`
#endif

int main()
{
	int a = 42, b = 21;

	ft_putchar('A');
	ft_putstr("42");
	ft_strcmp("42", "42");
	ft_strlen("42");
	ft_swap(&a, &b);
}

void	ft_putchar(char c)            { write(STDOUT_FILENO, &c, 1);     }
void	ft_putstr(char *str)          { putstr(str);                     }
int		ft_strcmp(char *s1, char *s2) { return strcmp(s1, s2);           }
int		ft_strlen(char *str)          { return strlen(str);              }
void	ft_swap(int *a, int *b)       { int tmp = *a; *a = *b; *b = tmp; }
