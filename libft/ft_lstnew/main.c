#include "../../includes.h"
#include "libft.h"

t_list *ft_lstnew(void *content);

int main(int ac, char **av) {
	t_list	*begin = NULL;
	t_list	*last = NULL;
	for (int i = 1; i < ac; i++) {
		t_list	*new = ft_lstnew(strdup(av[i]));

		if (!begin) {
			begin = new;
			last = new;
		} else {
			last->next = new;
			last = last->next;
		}
	}

	for (t_list *i = begin; i;) {
		printf("%s\n", (char *)i->content);
		t_list *tmp = i;
		i = i->next;
		free(tmp->content);
		free(tmp);
	}
}
