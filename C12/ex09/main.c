#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

void	ft_list_foreach(t_list *begin_list, void (*f)(void *));

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

void	print_e(void *addr)
{
	int		i;
	char	*str;

	i = 0;
	str = (char *)addr;
	while (str[i])
	{
		write(1, &str[i], str[i] == 'e' || str[i] == 'E');
		i++;
	}
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
	putstr("function: print\n");
	ft_list_foreach(begin, print_e);
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
	putstr("function: print\n");
	ft_list_foreach(begin, print_e);
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
	putstr("function: print\n");
	ft_list_foreach(begin, print_e);
	putstr("\n");
}
