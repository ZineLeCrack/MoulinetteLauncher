#include "../../includes.h"
#include "libft.h"

t_list *ft_lstlast(t_list *lst);

int main(int ac, char **av) {
	t_list	*begin = NULL;
	t_list	*last = NULL;
	for (int i = 1; i < ac; i++) {
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

	t_list *tmp = ft_lstlast(begin);
	printf("%s", tmp ? (char*)tmp->content : "(null)");

	for (t_list *i = begin; i;) {
		t_list *tmp = i;
		i = i->next;
		free(tmp);
	}
}
