#include "../../includes.h"

void	ft_putnbr_base(int nbr, char *base);

int	main(void)
{
	putstr("base = \"0\" --> \"");
	ft_putnbr_base(1, "0");
	putstr("\"\n");

	putstr("base = \"0123456781\" --> \"");
	ft_putnbr_base(1, "0123456781");
	putstr("\"\n");

	putstr("base = \"\" --> \"");
	ft_putnbr_base(1, "");
	putstr("\"\n");

	putstr("base = \"abcde+fgh\" --> \"");
	ft_putnbr_base(1, "abcde+fgh");
	putstr("\"\n");

	putstr("base = \"abcde-fgh\" --> \"");
	ft_putnbr_base(1, "abcde-fgh");
	putstr("\"\n");

	putstr("nbr = \"1\", base = \"0123456789\" --> \"");
	ft_putnbr_base(1, "0123456789");
	putstr("\"\n");

	putstr("nbr = \"42\", base = \"0123456789\" --> \"");
	ft_putnbr_base(42, "0123456789");
	putstr("\"\n");

	putstr("nbr = \"-42\", base = \"0123456789\" --> \"");
	ft_putnbr_base(-42, "0123456789");
	putstr("\"\n");

	putstr("nbr = \"2147483647\", base = \"0123456789\" --> \"");
	ft_putnbr_base(INT_MAX, "0123456789");
	putstr("\"\n");

	putstr("nbr = \"-2147483648\", base = \"0123456789\" --> \"");
	ft_putnbr_base(INT_MIN, "0123456789");
	putstr("\"\n");

	putstr("nbr = \"42\", base = \"01\" --> \"");
	ft_putnbr_base(42, "01");
	putstr("\"\n");

	putstr("nbr = \"-2147483648\", base = \"01\" --> \"");
	ft_putnbr_base(INT_MIN, "01");
	putstr("\"\n");

	putstr("nbr = \"2147483647\", base = \"01\" --> \"");
	ft_putnbr_base(INT_MAX, "01");
	putstr("\"\n");

	putstr("nbr = \"0\", base = \"01\" --> \"");
	ft_putnbr_base(0, "01");
	putstr("\"\n");

	putstr("nbr = \"0\", base = \"0123456789abcdef\" --> \"");
	ft_putnbr_base(0, "0123456789abcdef");
	putstr("\"\n");

	putstr("nbr = \"255\", base = \"0123456789abcdef\" --> \"");
	ft_putnbr_base(255, "0123456789abcdef");
	putstr("\"\n");

	putstr("nbr = \"-1024\", base = \"0123456789abcdef\" --> \"");
	ft_putnbr_base(-1024, "0123456789abcdef");
	putstr("\"\n");

	putstr("nbr = \"80\", base = \"pneyvif\" --> \"");
	ft_putnbr_base(80, "pneyvif");
	putstr("\"\n");

	putstr("nbr = \"-342391\", base = \"poneyvif\" --> \"");
	ft_putnbr_base(-342391, "poneyvif");
	putstr("\"\n");
}
