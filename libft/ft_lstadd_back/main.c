#include "../../includes.h"
#include "libft.h"

void ft_lstadd_back(t_list **lst, t_list *new);

int main(int ac, char **av) {
	if (ac > 1) {
		t_list	*begin = NULL;
		t_list	*last = NULL;
		for (int i = 1; i < ac - 1; i++) {
			t_list	*new = malloc(sizeof(t_list));
			new->content = av[i];
			new->next = NULL;

			if (!begin) {
				begin = new;
				last = new;
			} else {
				last->next = new;
				last = last->next;
			}
		}

		t_list	*new = malloc(sizeof(t_list));
		new->content = av[ac - 1];
		new->next = NULL;
		ft_lstadd_back(&begin, new);

		for (t_list *i = begin;i;) {
			printf("%s\n", (char*)i->content);
			t_list *tmp = i;
			i = i->next;
			free(tmp);
		}
	}
}
