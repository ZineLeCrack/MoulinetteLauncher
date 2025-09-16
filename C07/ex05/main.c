#include "../../includes.h"

char	**ft_split(char *str, char *charset);

int main()
{
	char	str1[] = "Bonjour, je suis rlebaill !";
	char	charset1[] = " ";

	char	**split = ft_split(str1, charset1);
	printf("--- str = \"%s\", charset = \"%s\" ---\n", str1, charset1);
	for (int i = 0; split[i]; i++) {
		printf("\"%s\", ", split[i]);
		free(split[i]);
	}
	printf("(null)\n");
	free(split);

	char	charset2[] = "";

	split = ft_split(str1, charset2);
	printf("--- str = \"%s\", charset = \"%s\" ---\n", str1, charset2);
	for (int i = 0; split[i]; i++) {
		printf("\"%s\", ", split[i]);
		free(split[i]);
	}
	printf("(null)\n");
	free(split);

	char	charset3[] = "i us";

	split = ft_split(str1, charset3);
	printf("--- str = \"%s\", charset = \"%s\" ---\n", str1, charset3);
	for (int i = 0; split[i]; i++) {
		printf("\"%s\", ", split[i]);
		free(split[i]);
	}
	printf("(null)\n");
	free(split);

	split = ft_split(charset2, charset1);
	printf("--- str = \"%s\", charset = \"%s\" ---\n", charset2, charset1);
	for (int i = 0; split[i]; i++) {
		printf("\"%s\", ", split[i]);
		free(split[i]);
	}
	printf("(null)\n");
	free(split);
}
