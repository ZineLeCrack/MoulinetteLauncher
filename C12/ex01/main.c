#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

void	ft_list_push_front(t_list **begin_list, void *data);

t_list	*ft_create_elem(void *data)
{
	t_list	*created;

	created = NULL;
	created = malloc(sizeof(t_list));
	if (created)
	{
		created->data = data;
		created->next = NULL;
	}
	return (created);
}

int	main(void)
{
	t_list	*begin = NULL;

	ft_list_push_front(&begin, "Havre");
	ft_list_push_front(&begin, "Le");
	ft_list_push_front(&begin, "42");

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
