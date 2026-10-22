#include "../../includes.h"
#include "libft.h"

void ft_lstclear(t_list **lst, void (*del)(void*));

int main(int ac, char **av) {
	t_list	*begin = NULL;
	t_list	*last = NULL;
	for (int i = 1; i < ac; i++) {
		t_list	*new = malloc(sizeof(t_list));
		new->content = strdup(av[i]);
		new->next = NULL;

		if (!begin) {
			begin = new;
			last = new;
		} else {
			last->next = new;
			last = last->next;
		}
	}

	ft_lstclear(&begin, free);

	printf("%p", begin);
}
