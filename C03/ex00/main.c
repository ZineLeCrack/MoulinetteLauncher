#include "../../includes.h"

int	ft_strcmp(char *s1, char *s2);

int	main()
{
	char	s1[] = "Hello";
	char	s2[] = "World";

	int return_value = ft_strcmp(s1, s2);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s1, s2, return_value < 0 ? "OK" : "KO");



	char	s3[] = "42";
	char	s4[] = "";

	return_value = ft_strcmp(s3, s4);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s3, s4, return_value > 0 ? "OK" : "KO");



	char	s5[] = "";
	char	s6[] = "42";

	return_value = ft_strcmp(s5, s6);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s5, s6, return_value < 0 ? "OK" : "KO");



	char	s7[] = "42";
	char	s8[] = "42";

	return_value = ft_strcmp(s7, s8);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s7, s8, return_value == 0 ? "OK" : "KO");



	char	s9[] = "";
	char	s10[] = "";

	return_value = ft_strcmp(s9, s10);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s9, s10, return_value == 0 ? "OK" : "KO");



	char	s11[] = "ft_strlen";
	char	s12[] = "ft_strcmp";

	return_value = ft_strcmp(s11, s12);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s11, s12, return_value > 0 ? "OK" : "KO");
}
