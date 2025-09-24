#include "../../includes.h"

int	ft_any(char **tab, int(*f)(char*));

int	is_empty1(char *str)
{
	if (*str)
		return (0);
	return (42);
}

int	is_empty2(char *str)
{
	if (*str)
		return (0);
	return (-42);
}

int main()
{
	putstr(">>>>> tab = [\"42\", \"Le\", \"Havre\", \"!\"] : is_empty <<<<<\n");
	char	*tab1[] = { "42", "Le", "Havre", "!", NULL };
	printf("returned value: %d\n", ft_any(tab1, is_empty1));

	putstr(">>>>> tab = [\"Hello\", \"\", \"World\", \"!\"] : is_empty <<<<\n");
	char	*tab2[] = { "Hello", "", "World", "!", NULL };
	printf("returned value: %d\n", ft_any(tab2, is_empty2));

	putstr(">>>>>>>>> tab = [\"1\", \"\", \"2\", \"\"] : is_empty <<<<<<<<<\n");
	char	*tab3[] = { "1", "", "2", "", NULL };
	printf("returned value: %d\n", ft_any(tab3, is_empty1));

	putstr(">>>>>>>>>>>>>>>> tab = [\"\"] : is_empty <<<<<<<<<<<<<<<<\n");
	char	*tab4[] = { "", NULL };
	printf("returned value: %d\n", ft_any(tab4, is_empty2));

	putstr(">>>>>>>>>>>>>>>>> tab = [] : is_empty <<<<<<<<<<<<<<<<<\n");
	char	*tab5[] = { NULL };
	printf("returned value: %d\n", ft_any(tab5, is_empty1));
}
