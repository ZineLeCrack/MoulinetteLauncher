#include "../../includes.h"

int	ft_str_is_printable(char *str);

int	main()
{
	printf("\"%s\" --> %d\n", "`1234~~rtgbh njmkii98erhge-+_+_;.,', []/]\\<><><>,.,.>>><<<WASEDRFGH@#$^&*()(*&^)", ft_str_is_printable("`1234rtgbhnjmkii98erhg e-+_+_;.,',[]/]\\<><><>,.,.>> ><<<WASEDRFGH@#$^&*()(*&^)"));
	printf("\"%s\" --> %d\n", "", ft_str_is_printable(""));
	printf("\"%s\" --> %d\n", "Hello World !\\n", ft_str_is_printable("Hello World !\n"));
	printf("\"%s\" --> %d\n", "\\v\\r", ft_str_is_printable("\v\r"));
	printf("\"%s\" --> %d\n", "😁", ft_str_is_printable("😁"));
	char str[2] = { 31, 0 };
	printf("\"US\" --> %d\n", ft_str_is_printable(str));
	str[0] = 127;
	printf("\"DEL\" --> %d\n", ft_str_is_printable(str));
}
