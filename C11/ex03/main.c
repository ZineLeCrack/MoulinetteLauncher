#include "../../includes.h"

int	ft_count_if(char **tab, int length, int(*f)(char*));

int	first_byte(char *str)
{
	return (*str);
}

int main()
{
	int	returned_value;

	putstr(">>>>>>>>>> tab = [\"42\", \"Le\", \"Havre\", \"!\"] : first_byte <<<<<<<<<<<\n");
	char *tab1[] = { "42", "Le", "Havre", "!" };
	putstr("returned value: ");
	returned_value = ft_count_if(tab1, 4, first_byte) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>> tab = [\"\", \"1\", \"2\", \"3\", \"4\", \"5\"] : first_byte <<<<<<<<<<\n");
	char *tab2[] = { "", "1", "2", "3", "4", "5" };
	putstr("returned value: ");
	returned_value = ft_count_if(tab2, 6, first_byte) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>>>>>>>>>>>>>> tab = [] : first_byte <<<<<<<<<<<<<<<<<<<<<<<\n");
	char *tab3[] = { NULL };
	putstr("returned value: ");
	returned_value = ft_count_if(tab3, 0, first_byte) + '0';
	write(1, &returned_value, 1);
	putstr("\n");

	putstr(">>>>>>>>>>>>>>> tab = [\"\", \"\", \"\", \"\"] : first_byte <<<<<<<<<<<<<<<<\n");
	char *tab4[] = { "", "", "", "" };
	putstr("returned value: ");
	returned_value = ft_count_if(tab4, 4, first_byte) + '0';
	write(1, &returned_value, 1);
	putstr("\n");
}
