#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

t_list	*ft_list_push_strs(int size, char **strs);

int	main(void)
{
	t_list	*begin;
	char	*strs1[] = { "Havre", "Le", "42" };

	begin = ft_list_push_strs(3, strs1);

	putstr(">>>>>>>>>>>>>>>>>>>>>>> [\"Havre\", \"Le\", \"42\"] <<<<<<<<<<<<<<<<<<<<<<<\n");
	putstr("returned value: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);

	char	*strs2[] = { "bien", "c\'est", "chaînées", "listes", "les", "comprendre", "à", "commences", "tu", "que", "semblerait", "Il" };

	begin = ft_list_push_strs(12, strs2);

	putstr(">>> [\"bien\", \"c\'est\", \"chaînées\", \"listes\", \"les\", \"comprendre\", <<<<\n");
	putstr(">>>>>>>>> \"à\", \"commences\", \"tu\", \"que\", \"semblerait\", \"Il\"] <<<<<<<<\n");
	putstr("returned value: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");

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

	begin = ft_list_push_strs(0, NULL);

	putstr(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> [] <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");

	putstr("returned value: ");
	putstr((char *)begin);
	putstr("\n");
}
