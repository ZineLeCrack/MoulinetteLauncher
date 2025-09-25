#include "../../includes.h"

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}	t_list;

void ft_list_foreach_if(t_list *begin_list, void (*f)(void *), void *data_ref, int (*cmp)());

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

void	print(void *addr)
{
	int		i;
	char	*str;

	i = 0;
	str = (char *)addr;
	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}
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
	putstr("function: print\n");
	ft_list_foreach_if(begin, print, "42", ft_strcmp);
	putstr("\n");

	free(begin->next->next);
	free(begin->next);
	free(begin);

	begin = NULL;
	tmp = NULL;
	char	*strs2[] = { "42", "0123456789", "123", "42", "123456789", "4", "4242424242", "120", "244224", "84848484", "54321", "4224", NULL };

	for(int i = 0; strs2[i]; i++) {
		if (!tmp) {
			tmp = ft_create_elem(strs2[i]);
			begin = tmp;
		} else {
			tmp->next = ft_create_elem(strs2[i]);
			tmp = tmp->next;
		}
	}

	putstr(">>>>>>>>> [\"42\", \"0123456789\", \"123\", \"42\", \"123456789\", \"4\", <<<<<<<<\n");
	putstr(">>> \"4242424242\", \"120\", \"244224\", \"84848484\", \"54321\", \"4224\"] <<<<\n");
	putstr("list: \"");
	for (t_list *tmp = begin; tmp; tmp = tmp->next) {
		if (tmp != begin)
			putstr("\" --> \"");
		putstr(tmp->data);
	}
	putstr("\"\n");
	putstr("function: print\n");
	ft_list_foreach_if(begin, print, "42", ft_strcmp);
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
	ft_list_foreach_if(begin, print, "ok", ft_strcmp);
	putstr("\n");
}
