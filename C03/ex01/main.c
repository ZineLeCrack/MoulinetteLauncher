#include "../../includes.h"

int	ft_strncmp(char *s1, char *s2, unsigned int n);

int	main()
{
	char	s1[] = "Hello";
	char	s2[] = "World";

	int return_value = ft_strncmp(s1, s2, 0);
	printf("s1 = \"%s\", s2 = \"%s\", n = 0  -->  returned value = %s\n", s1, s2, return_value == 0 ? "OK" : "KO");
	return_value = ft_strncmp(s1, s2, 3);
	printf("s1 = \"%s\", s2 = \"%s\", n = 3  -->  returned value = %s\n", s1, s2, return_value < 0 ? "OK" : "KO");



	char	s3[] = "42";
	char	s4[] = "";

	return_value = ft_strncmp(s3, s4, 1);
	printf("s1 = \"%s\", s2 = \"%s\", n = 1  -->  returned value = %s\n", s3, s4, return_value > 0 ? "OK" : "KO");



	char	s5[] = "";
	char	s6[] = "42";

	return_value = ft_strncmp(s5, s6, 1);
	printf("s1 = \"%s\", s2 = \"%s\", n = 1  -->  returned value = %s\n", s5, s6, return_value < 0 ? "OK" : "KO");



	char	s7[] = "42";
	char	s8[] = "42";

	return_value = ft_strncmp(s7, s8, 5);
	printf("s1 = \"%s\", s2 = \"%s\", n = 5  -->  returned value = %s\n", s7, s8, return_value == 0 ? "OK" : "KO");



	char	s9[] = "";
	char	s10[] = "";

	return_value = ft_strncmp(s9, s10, 3);
	printf("s1 = \"%s\", s2 = \"%s\", n = 3  -->  returned value = %s\n", s9, s10, return_value == 0 ? "OK" : "KO");



	char	s11[] = "ft_strlen";
	char	s12[] = "ft_strcmp";

	return_value = ft_strncmp(s11, s12, 5);
	printf("s1 = \"%s\", s2 = \"%s\", n = 5  -->  returned value = %s\n", s11, s12, return_value == 0 ? "OK" : "KO");
	return_value = ft_strncmp(s11, s12, 6);
	printf("s1 = \"%s\", s2 = \"%s\", n = 6  -->  returned value = %s\n", s11, s12, return_value == 0 ? "OK" : "KO");
	return_value = ft_strncmp(s11, s12, 7);
	printf("s1 = \"%s\", s2 = \"%s\", n = 7  -->  returned value = %s\n", s11, s12, return_value > 0 ? "OK" : "KO");
}
