#include "../../includes.h"
#include "libft.h"

t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));

void	*ft_map(void *data)
{
	unsigned char *s = (unsigned char *)data;

	for (size_t i = 0; s[i]; i++)
		s[i]++;
	return strdup((const char *)s);
}

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

	t_list	*new_begin = ft_lstmap(begin, ft_map, free);

	for (t_list *i = begin; i;) {
		t_list *tmp = i;
		i = i->next;
		free(tmp->content);
		free(tmp);
	}
	for (t_list *i = new_begin; i;) {
		printf("%s\n", (char *)i->content);
		t_list *tmp = i;
		i = i->next;
		free(tmp->content);
		free(tmp);
	}
}
