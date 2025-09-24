#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

t_list	*ft_create_elem(void *data);

int	main(void)
{
	t_list	*begin;

	begin = ft_create_elem("42");
	begin->next = ft_create_elem("Le");
	begin->next->next = ft_create_elem("Havre");

	putstr(">>>>>>>>>> \"42\" \"Le\" \"Havre\" <<<<<<<<<<\n");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr(" --> ");
		putstr(tmp->data);
	}
	putstr("\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);
}
