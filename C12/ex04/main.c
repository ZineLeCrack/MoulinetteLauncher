#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

void	ft_list_push_back(t_list **begin_list, void *data);

int	main(void)
{
	t_list	*begin = NULL;

	ft_list_push_back(&begin, "42");
	ft_list_push_back(&begin, "Le");
	ft_list_push_back(&begin, "Havre");

	putstr(">>>>>>>>>>>>>>>>>>>>>>>>> \"42\" \"Le\" \"Havre\" <<<<<<<<<<<<<<<<<<<<<<<<<\n");
	putstr("\"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);

	begin = NULL;

	ft_list_push_back(&begin, "Il");
	ft_list_push_back(&begin, "semblerait");
	ft_list_push_back(&begin, "que");
	ft_list_push_back(&begin, "tu");
	ft_list_push_back(&begin, "commences");
	ft_list_push_back(&begin, "à");
	ft_list_push_back(&begin, "comprendre");
	ft_list_push_back(&begin, "les");
	ft_list_push_back(&begin, "listes");
	ft_list_push_back(&begin, "chaînées");
	ft_list_push_back(&begin, "c\'est");
	ft_list_push_back(&begin, "bien");

	putstr(">>>>>>>>>>>> \"Il\" \"semblerait\" \"que\" \"tu\" \"commences\" \"à\" <<<<<<<<<<<\n");
	putstr(">>>>>>> \"comprendre\" \"les\" \"listes\" \"chaînées\" \"c\'est\" \"bien\" <<<<<<<\n");
	putstr("\"");
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
}
