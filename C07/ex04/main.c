#include "../../includes.h"

char	*ft_convert_base(char *nbr, char *base_from, char *base_to);

int main()
{
	char	base1[] = "0123456789";
	char	base2[] = "01";
	char	base3[] = "0123456789ABCDEF";
	char	base4[] = "poneyvif";

	char	n1[] = "42";

	char	*nbr = ft_convert_base(n1, base1, base2);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n1, base1, base2, nbr);

	free(nbr);

	nbr = ft_convert_base(n1, base1, base3);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n1, base1, base3, nbr);

	free(nbr);

	nbr = ft_convert_base(n1, base1, base4);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n1, base1, base4, nbr);

	free(nbr);

	char	n2[] = "\t   ---vn";

	nbr = ft_convert_base(n2, base4, base1);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n2, base4, base1, nbr);

	free(nbr);

	nbr = ft_convert_base(n2, base4, base2);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n2, base4, base2, nbr);

	free(nbr);

	char	base5[] = "1223456789";
	nbr = ft_convert_base(n1, base5, base2);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n1, base5, base2, nbr);

	char	base6[] = "12 3456789";
	nbr = ft_convert_base(n1, base6, base2);
	printf("nbr = \"%s\", base_from = \"%s\", base_to = \"%s\" --> returned value = \"%s\"\n", n1, base6, base2, nbr);
}
