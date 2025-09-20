#include "../../includes.h"

char	*ft_strcat(char *dest, char *src);

int	main()
{
	char	s1[] = "Hello";
	char	s2[] = "World";

	printf("dest = \"%s\", src = \"%s\"  -->  ", s1, s2);
	char	*return_value = ft_strcat(s1, s2);
	printf("dest = \"%s\", returned value = %s\n", s1, return_value == s1 ? "OK" : "KO");

	char	s3[] = "";
	char	s4[] = "World";

	printf("dest = \"%s\", src = \"%s\"  -->  ", s3, s4);
	return_value = ft_strcat(s3, s4);
	printf("dest = \"%s\", returned value = %s\n", s3, return_value == s3 ? "OK" : "KO");

	char	s5[] = "Hello";
	char	s6[] = "";

	printf("dest = \"%s\", src = \"%s\"  -->  ", s5, s6);
	return_value = ft_strcat(s5, s6);
	printf("dest = \"%s\", returned value = %s\n", s5, return_value == s5 ? "OK" : "KO");

	char	s7[] = "";
	char	s8[] = "";

	printf("dest = \"%s\", src = \"%s\"  -->  ", s7, s8);
	return_value = ft_strcat(s7, s8);
	printf("dest = \"%s\", returned value = %s\n", s7, return_value == s7 ? "OK" : "KO");
}
