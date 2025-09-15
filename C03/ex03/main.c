#include "../../includes.h"

char	*ft_strncat(char *dest, char *src, unsigned int nb);

int	main()
{
	char	str1[] = "Hello";
	char	str2[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 0  -->  ", str1, str2);
	char	*return_value = ft_strncat(str1, str2, 0);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", str1, str2, return_value == str1 ? "OK" : "KO");

	char	s1[] = "Hello";
	char	s2[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 3  -->  ", s1, s2);
	return_value = ft_strncat(s1, s2, 3);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s1, s2, return_value == s1 ? "OK" : "KO");

	char	s3[] = "Hello";
	char	s4[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 5  -->  ", s3, s4);
	return_value = ft_strncat(s3, s4, 5);
	printf("dest = \"%s\"  src = \"%s\", returned value = %s\n", s3, s4, return_value == s3 ? "OK" : "KO");

	char	s5[] = "Hello";
	char	s6[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 7  -->  ", s5, s6);
	return_value = ft_strncat(s5, s6, 7);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s5, s6, return_value == s5 ? "OK" : "KO");



	char	s7[] = "";
	char	s8[] = "World";

	printf("dest = \"%s\", src = \"%s\", n = 2  -->  ", s7, s8);
	return_value = ft_strncat(s7, s8, 2);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s7, s8, return_value == s7 ? "OK" : "KO");



	char	s9[] = "Hello";
	char	s10[] = "";

	printf("dest = \"%s\", src = \"%s\", n = 2  -->  ", s9, s10);
	return_value = ft_strncat(s9, s10, 2);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s9, s10, return_value == s9 ? "OK" : "KO");



	char	s11[] = "";
	char	s12[] = "";

	printf("dest = \"%s\", src = \"%s\", n = 2  -->  ", s11, s12);
	return_value = ft_strncat(s11, s12, 2);
	printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s11, s12, return_value == s11 ? "OK" : "KO");



	// char	s5[] = "Hello";
	// char	s6[] = "";

	// printf("dest = \"%s\", src = \"%s\"  -->  ", s5, s6);
	// return_value = ft_strncat(s5, s6);
	// printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s5, s6, return_value == s5 ? "OK" : "KO");

	// char	s7[] = "";
	// char	s8[] = "";

	// printf("dest = \"%s\", src = \"%s\"  -->  ", s7, s8);
	// return_value = ft_strncat(s7, s8);
	// printf("dest = \"%s\", src = \"%s\", returned value = %s\n", s7, s8, return_value == s7 ? "OK" : "KO");
}
