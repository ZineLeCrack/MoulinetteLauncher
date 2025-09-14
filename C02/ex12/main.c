#include "../../includes.h"

void	*ft_print_memory(void *addr, unsigned int size);

int	main()
{
	char	*addr;

	addr = strdup("Bonjour les aminches\t\n\tc\a est fou\ttout\tce qu on peut faire avec\t\n\tprint_memory\n\n\n\tlol.lol\n ");

	void	*return_value = ft_print_memory(addr, strlen(addr) + 1);

	if (return_value != addr)
		putstr("                returned_value = KO\n");
}
