#include "../../includes.h"

unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size);

int	main()
{
	char	src1[] = "Hello";
	char	dest1[] = "World";

	putstr("src = \"");
	putstr(src1);
	putstr("\", dest = \"");
	putstr(dest1);
	putstr("\", size = 5 --> dest = \"");
	unsigned int return_value = ft_strlcpy(dest1, src1, 5);
	putstr(dest1);
	putstr("\", returned value = ");
	putstr(return_value == 5 ? "OK\n" : "KO\n");

	char	src2[] = "";
	char	dest2[] = "";

	putstr("src = \"");
	putstr(src2);
	putstr("\", dest = \"");
	putstr(dest2);
	putstr("\", size = 5 --> dest = \"");
	return_value = ft_strlcpy(dest2, src2, 5);
	putstr(dest2);
	putstr("\", returned value = ");
	putstr(return_value == 0 ? "OK\n" : "KO\n");

	char	src3[] = "42";
	char	dest3[] = "";

	putstr("src = \"");
	putstr(src3);
	putstr("\", dest = \"");
	putstr(dest3);
	putstr("\", size = 3 --> dest = \"");
	return_value = ft_strlcpy(dest3, src3, 3);
	putstr(dest3);
	putstr("\", returned value = ");
	putstr(return_value == 2 ? "OK\n" : "KO\n");

	char	src4[] = "";
	char	dest4[] = "Hello World !";

	putstr("src = \"");
	putstr(src4);
	putstr("\", dest = \"");
	putstr(dest4);
	putstr("\", size = 7 --> dest = \"");
	return_value = ft_strlcpy(dest4, src4, 7);
	for (int i = 0; i < 13; i++) {
		if (!dest4[i]) write(1, "\\0", 2);
		else write(1, &dest4[i], 1);
	}
	putstr("\", returned value = ");
	putstr(return_value == 0 ? "OK\n" : "KO\n");

	char	src5[] = "Hello";
	char	dest5[] = "World";

	putstr("src = \"");
	putstr(src5);
	putstr("\", dest = \"");
	putstr(dest5);
	putstr("\", size = 0 --> dest = \"");
	return_value = ft_strlcpy(dest5, src5, 0);
	putstr(dest5);
	putstr("\", returned value = ");
	putstr(return_value == 5 ? "OK\n" : "KO\n");

	char	src6[] = "Hello";
	char	dest6[] = "World";

	putstr("src = \"");
	putstr(src6);
	putstr("\", dest = \"");
	putstr(dest6);
	putstr("\", size = 15 --> dest = \"");
	return_value = ft_strlcpy(dest6, src6, 15);
	putstr(dest6);
	putstr("\", returned value = ");
	putstr(return_value == 5 ? "OK\n" : "KO\n");
}
