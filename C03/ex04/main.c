#include "../../includes.h"

char	*ft_strstr(char *str, char *to_find);

int	main()
{
	char	s1[] = "Hello World";
	char	s2[] = "W";

	char	*found = ft_strstr(s1, s2);
	printf("str = \"%s\", to_find = \"%s\" --> return_value = \"%s\"\n", s1, s2, found);

	char	s3[] = "Hello";

	found = ft_strstr(s1, s3);
	printf("str = \"%s\", to_find = \"%s\" --> return_value = \"%s\"\n", s1, s3, found);

	char	s4[] = "d";

	found = ft_strstr(s1, s4);
	printf("str = \"%s\", to_find = \"%s\" --> return_value = \"%s\"\n", s1, s4, found);

	char	s5[] = "";

	found = ft_strstr(s1, s5);
	printf("str = \"%s\", to_find = \"%s\" --> return_value = \"%s\"\n", s1, s5, found);

	char	s6[] = "World";

	found = ft_strstr(s1, s6);
	printf("str = \"%s\", to_find = \"%s\" --> return_value = \"%s\"\n", s1, s6, found);

	found = ft_strstr(s1, s1);
	printf("str = \"%s\", to_find = \"%s\" --> return_value = \"%s\"\n", s1, s1, found);
}
