#include "../../includes.h"

char	*ft_strcpy(char *dest, char *src);

int main()
{
	char	dest1[] = "Hello";
	char	src1[] = "World";

	printf("dest = \"%s\", src = \"%s\"  -->  ", dest1, src1);
	char *return_value = ft_strcpy(dest1, src1);
	printf("dest = \"%s\", returned value = %s\n", dest1, return_value == dest1 ? "OK" : "KO");


	
	char	dest2[] = "123456789";
	char	src2[] = "OK";

	putstr("dest = \"");
	putstr(dest2);
	putstr("\", src = \"");
	putstr(src2);
	putstr("\"  -->  ");
	return_value = ft_strcpy(dest2, src2);
	putstr("dest = \"");
	for (int i = 0; i < 9; i++) {
		if (!dest2[i]) write(1, "\\0", 2);
		else write(1, &dest2[i], 1);
	}
	putstr("\", returned value = ");
	putstr(return_value == dest2 ? "OK" : "KO");
	putstr("\n");



	char	dest3[] = "";
	char	src3[] = "";

	printf("dest = \"%s\", src = \"%s\"  -->  ", dest3, src3);
	return_value = ft_strcpy(dest3, src3);
	printf("dest = \"%s\", returned value = %s\n", dest3, return_value == dest3 ? "OK" : "KO");



	char	dest4[] = "42";
	char	src4[] = "strcpy";

	printf("dest = \"%s\", src = \"%s\"  -->  ", dest4, src4);
	return_value = ft_strcpy(dest4, src4);
	printf("dest = \"%s\", returned value = %s\n", dest4, return_value == dest4 ? "OK" : "KO");



	char	dest5[] = "42";
	char	src5[] = "";

	printf("dest = \"%s\", src = \"%s\"  -->  ", dest5, src5);
	return_value = ft_strcpy(dest5, src5);
	printf("dest = \"%s\", returned value = %s\n", dest5, return_value == dest5 ? "OK" : "KO");



	char	dest6[] = "";
	char	src6[] = "42";

	printf("dest = \"%s\", src = \"%s\"  -->  ", dest6, src6);
	return_value = ft_strcpy(dest6, src6);
	printf("dest = \"%s\", returned value = %s\n", dest6, return_value == dest6 ? "OK" : "KO");
}
