#include "../../includes.h"

char	*ft_strjoin(int size, char **strs, char *sep);

int main()
{
	char	*strs1[] = { "Hello", "World", "!\n" };
	char	sep1[] = " ";

	char *join = ft_strjoin(3, strs1, sep1);

	putstr(join);
	free(join);

	char	*strs2[] = { "He", "ll", "o\n", "World" };
	char	sep2[] = "";

	join = ft_strjoin(3, strs2, sep2);

	putstr(join);
	free(join);

	char	*strs3[] = { "arc", "", "en", "", "ciel\n" };
	char	sep3[] = "-";

	join = ft_strjoin(5, strs3, sep3);

	putstr(join);
	free(join);

	char	*strs4[] = { "", "", "", "", "" };
	char	sep4[] = "";

	join = ft_strjoin(5, strs4, sep4);

	putstr(join);
	free(join);

	char	*strs5[] = { "KO" };
	char	sep5[] = ".";

	join = ft_strjoin(0, strs5, sep5);

	putstr(join);
	free(join);
}
