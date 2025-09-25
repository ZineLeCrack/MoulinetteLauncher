#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

void	ft_list_reverse_fun(t_list *begin_list);

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

void	ft_list_clear(t_list *begin_with, void (*free_fct)(void *))
{
	t_list	*ptr;

	if (begin_with)
	{
		while (begin_with)
		{
			(*free_fct)(begin_with->data);
			ptr = begin_with->next;
			free(begin_with);
			begin_with = ptr;
		}
	}
}

int	main(void)
{
	t_list	*begin = NULL;
	t_list	*tmp = NULL;
	char	*strs1[] = { strdup("42"), strdup("Le"), strdup("Havre"), NULL };

	for(int i = 0; strs1[i]; i++) {
		if (!tmp) {
			tmp = ft_create_elem(strs1[i]);
			begin = tmp;
		} else {
			tmp->next = ft_create_elem(strs1[i]);
			tmp = tmp->next;
		}
	}

	putstr(">>>>>>>>>>>>>>>>>>>>>>> [\"42\", \"Le\", \"Havre\"] <<<<<<<<<<<<<<<<<<<<<<<\n");
	putstr("list: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");
	putstr("reversing...\n");
	ft_list_reverse_fun(begin);
	putstr("list: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");

	ft_list_clear(begin, free);

	begin = NULL;
	tmp = NULL;
	char	*strs2[] = { strdup("24"), strdup("42"), strdup("12"), strdup("84"), strdup("21"), strdup("42"), strdup("99"), strdup("10"), strdup("42"), strdup("40"), strdup("56"), strdup("42"), NULL };

	for(int i = 0; strs2[i]; i++) {
		if (!tmp) {
			tmp = ft_create_elem(strs2[i]);
			begin = tmp;
		} else {
			tmp->next = ft_create_elem(strs2[i]);
			tmp = tmp->next;
		}
	}

	putstr(">>>>>>>>>>>>>>>>> [\"24\", \"42\", \"12\", \"84\", \"21\", \"42\", <<<<<<<<<<<<<<\n");
	putstr(">>>>>>>>>>>>>>>>> \"99\", \"10\", \"42\", \"40\", \"56\", \"42\"] <<<<<<<<<<<<<<<\n");
	putstr("list: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");
	putstr("reversing...\n");
	ft_list_reverse_fun(begin);
	putstr("list: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");

	ft_list_clear(begin, free);

	begin = NULL;

	putstr(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> [] <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");

	putstr("list: ");
	putstr((char *)begin);
	putstr("\n");
	putstr("function: ft_strcmp\n");
	putstr("reversing...\n");
	ft_list_reverse_fun(begin);
	putstr("list: ");
	putstr((char *)begin);
	putstr("\n");
}
