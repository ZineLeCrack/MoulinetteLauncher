#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

t_list	*ft_list_find(t_list *begin_list, void *data_ref, int (*cmp)());

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

int	ft_strcmp(char *s1, char *s2)
{
	int	n;

	n = 0;
	while (s1[n] == s2[n] && s1[n] != '\0' && s2[n] != '\0')
		n++;
	return (s1[n] - s2[n]);
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
	putstr("function: ft_strcmp / data_ref = \"42\"\n");
	tmp = ft_list_find(begin, "42", ft_strcmp);
	putstr("returned value = \"");
	putstr(tmp->data);
	putstr("\"\n");

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
	putstr("function: ft_strcmp / data_ref = \"42\"\n");
	tmp = ft_list_find(begin, "42", ft_strcmp);
	putstr("returned value = ");
	putstr((char *)tmp);
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
	putstr("function: ft_strcmp / data_ref = \"42\"\n");
	tmp = ft_list_find(begin, "42", ft_strcmp);
	putstr("returned value = ");
	putstr((char *)tmp);
	putstr("\n");
}
