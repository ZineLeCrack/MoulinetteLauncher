#include "../../includes.h"

unsigned int	ft_strlcat(char *dest, char *src, unsigned int size);

int	main()
{
	char	str1[] = "Hello";
	char	str2[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 0  -->  ", str1, str2);
	unsigned int	return_value = ft_strlcat(str1, str2, 0);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", str1, str2, return_value == 5 ? "OK" : "KO");

	char	s1[] = "Hello";
	char	s2[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 3  -->  ", s1, s2);
	return_value = ft_strlcat(s1, s2, 3);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s1, s2, return_value == 8 ? "OK" : "KO");

	char	s3[] = "Hello";
	char	s4[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 5  -->  ", s3, s4);
	return_value = ft_strlcat(s3, s4, 5);
	printf("dest = \"%s\"  src = \"%s\", returned value = %s\n", s3, s4, return_value == 10 ? "OK" : "KO");

	char	s5[] = "Hello";
	char	s6[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 7  -->  ", s5, s6);
	return_value = ft_strlcat(s5, s6, 7);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s5, s6, return_value == 10 ? "OK" : "KO");



	char	s7[] = "";
	char	s8[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 2  -->  ", s7, s8);
	return_value = ft_strlcat(s7, s8, 2);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s7, s8, return_value == 5 ? "OK" : "KO");



	char	s9[] = "Hello";
	char	s10[] = "";

	printf("dest = \"%s\", src = \"%s\", n = 2  -->  ", s9, s10);
	return_value = ft_strlcat(s9, s10, 2);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s9, s10, return_value == 2 ? "OK" : "KO");



	char	s11[] = "";
	char	s12[] = "";

	printf("dest = \"%s\", src = \"%s\", n = 2  -->  ", s11, s12);
	return_value = ft_strlcat(s11, s12, 2);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s11, s12, return_value == 0 ? "OK" : "KO");
}
