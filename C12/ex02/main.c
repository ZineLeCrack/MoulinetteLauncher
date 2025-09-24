#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

int	ft_list_size(t_list *begin_list);

int	main(void)
{
	int	c;
	t_list	*begin;

	begin = malloc(sizeof(t_list));
	begin->data = "42";
	begin->next = malloc(sizeof(t_list));
	begin->next->data = "Le";
	begin->next->next = malloc(sizeof(t_list));
	begin->next->next->data = "Havre";
	begin->next->next->next = NULL;

	putstr(">>>>>>>>>> \"42\" \"Le\" \"Havre\" <<<<<<<<<<\n");
	c = ft_list_size(begin) + '0';
	putstr("returned value: ");
	write(1, &c, 1);
	putstr("\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);

	putstr(">>>>>>>>>>>>>>>> NULL <<<<<<<<<<<<<<<<<\n");
	c = ft_list_size(NULL) + '0';
	putstr("returned value: ");
	write(1, &c, 1);
	putstr("\n");

	begin = malloc(sizeof(t_list));
	begin->data = "1";
	begin->next = malloc(sizeof(t_list));
	begin->next->data = "2";
	begin->next->next = malloc(sizeof(t_list));
	begin->next->next->data = "3";
	begin->next->next->next = malloc(sizeof(t_list));
	begin->next->next->next->data = "4";
	begin->next->next->next->next = malloc(sizeof(t_list));
	begin->next->next->next->next->data = "5";
	begin->next->next->next->next->next = malloc(sizeof(t_list));
	begin->next->next->next->next->next->data = "6";
	begin->next->next->next->next->next->next = NULL;

	putstr(">>>>>>> \"1\" \"2\" \"3\" \"4\" \"5\" \"6\" <<<<<<<\n");
	c = ft_list_size(begin) + '0';
	putstr("returned value: ");
	write(1, &c, 1);
	putstr("\n");

	free(begin->next->next->next->next->next);
	free(begin->next->next->next->next);
	free(begin->next->next->next);
	free(begin->next->next);
	free(begin->next);
	free(begin);
}
