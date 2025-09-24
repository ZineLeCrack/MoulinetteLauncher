#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

t_list	*ft_list_last(t_list *begin_list);

int	main(void)
{
	t_list	*begin;
	t_list	*returned_value;

	begin = malloc(sizeof(t_list));
	begin->data = "42";
	begin->next = malloc(sizeof(t_list));
	begin->next->data = "Le";
	begin->next->next = malloc(sizeof(t_list));
	begin->next->next->data = "Havre";
	begin->next->next->next = NULL;

	putstr(">>>>>>>>>> \"42\" \"Le\" \"Havre\" <<<<<<<<<<\n");
	putstr("returned value: \"");
	returned_value = ft_list_last(begin);
	putstr(returned_value->data);
	putstr("\"\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);

	putstr(">>>>>>>>>>>>>>>> NULL <<<<<<<<<<<<<<<<<\n");
	putstr("returned value: ");
	returned_value = ft_list_last(NULL);
	if (returned_value)
		putstr(returned_value->data);
	else
		putstr((char *)returned_value);
	putstr("\n");
}
