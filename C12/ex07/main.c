#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

t_list	*ft_list_at(t_list *begin_list, unsigned int nbr);

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
	t_list	*tmp = NULL;
	char	*strs1[] = { "42", "Le", "Havre", NULL };

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
	putstr("at 2: ");
	putstr(ft_list_at(begin, 2)->data);
	putstr("\n");
	putstr("at 0: ");
	putstr(ft_list_at(begin, 0)->data);
	putstr("\n");
	putstr("at 8: ");
	putstr((char *)ft_list_at(begin, 8));
	putstr("\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);

	begin = NULL;
	tmp = NULL;
	char	*strs2[] = { "Il", "semblerait", "que", "tu", "commences", "à", "comprendre", "les", "listes", "chaînées", "c\'est", "bien", NULL };

	for(int i = 0; strs2[i]; i++) {
		if (!tmp) {
			tmp = ft_create_elem(strs2[i]);
			begin = tmp;
		} else {
			tmp->next = ft_create_elem(strs2[i]);
			tmp = tmp->next;
		}
	}

	putstr(">>>>>>>>> [\"Il\", \"semblerait\", \"que\", \"tu\", \"commences\", \"à\", <<<<<<<<\n");
	putstr(">>> \"comprendre\", \"les\", \"listes\", \"chaînées\", \"c\'est\", \"bien\"] <<<<\n");
	putstr("list: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");

	putstr("\"\n");
	putstr("at 1: ");
	putstr(ft_list_at(begin, 1)->data);
	putstr("\n");
	putstr("at 7: ");
	putstr(ft_list_at(begin, 7)->data);
	putstr("\n");
	putstr("at 5: ");
	putstr(ft_list_at(begin, 5)->data);
	putstr("\n");
	putstr("at 9: ");
	putstr(ft_list_at(begin, 9)->data);
	putstr("\n");
	putstr("at 11: ");
	putstr(ft_list_at(begin, 11)->data);
	putstr("\n");
	putstr("at 12: ");
	putstr((char *)ft_list_at(begin, 12));
	putstr("\n");

	free(begin->next->next->next->next->next->next->next->next->next->next->next);
	free(begin->next->next->next->next->next->next->next->next->next->next);
	free(begin->next->next->next->next->next->next->next->next->next);
	free(begin->next->next->next->next->next->next->next->next);
	free(begin->next->next->next->next->next->next->next);
	free(begin->next->next->next->next->next->next);
	free(begin->next->next->next->next->next);
	free(begin->next->next->next->next);
	free(begin->next->next->next);
	free(begin->next->next);
	free(begin->next);
	free(begin);

	begin = NULL;

	putstr(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> [] <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");

	putstr("list: ");
	putstr((char *)begin);
	putstr("\n");

	putstr("at 0: ");
	putstr((char *)ft_list_at(begin, 0));
	putstr("\n");
	putstr("at 2: ");
	putstr((char *)ft_list_at(begin, 2));
	putstr("\n");
	putstr("at 42: ");
	putstr((char *)ft_list_at(begin, 42));
	putstr("\n");
}
