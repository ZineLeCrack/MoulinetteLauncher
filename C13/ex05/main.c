#include "../../includes.h"

typedef struct	s_btree
{
	struct s_btree	*left;
	struct s_btree	*right;
	void			*item;
}	t_btree;

void	*btree_search_item(t_btree *root, void *data_ref, int (*cmpf)(void *, void *));

int	ft_strcmp(void *addr1, void *addr2)
{
	int		n;
	char	*s1;
	char	*s2;

	s1 = (char *)addr1;
	s2 = (char *)addr2;
	n = 0;
	while (s1[n] == s2[n] && s1[n] != '\0' && s2[n] != '\0')
		n++;
	return (s1[n] - s2[n]);
}

t_btree	*btree_create_node(void *item)
{
	t_btree	*new;

	new = NULL;
	new = malloc(sizeof(t_btree));
	if (new)
	{
		new->item = item;
		new->left = NULL;
		new->right = NULL;
	}
	return (new);
}

void	print(void *addr)
{
	int		i;
	char	*str;

	str = (char *)addr;
	i = 0;
	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}
	write(1, "\n", 1);
}

int	main(void)
{
	t_btree	*root = btree_create_node("42");
	root->left = btree_create_node("44");
	root->right = btree_create_node("40");
	root->left->left = btree_create_node("45");
	root->left->right = btree_create_node("43");
	root->right->left = btree_create_node("41");
	root->right->right = btree_create_node("39");

	putstr("     42\n    /  \\\n  44    40\n  /\\    /\\\n45 43  41 39\n\n");

	void	*returned_value = btree_search_item(root, "42", ft_strcmp);
	putstr("Searching \"42\"...\n");
	putstr("returned_value: ");
	putstr(returned_value == root->item ? "OK" : "KO");
	putstr("\n\n");
	returned_value = btree_search_item(root, "45", ft_strcmp);
	putstr("Searching \"45\"...\n");
	putstr("returned_value: ");
	putstr(returned_value == root->left->left->item ? "OK" : "KO");
	putstr("\n\n");
	returned_value = btree_search_item(root, "39", ft_strcmp);
	putstr("Searching \"39\"...\n");
	putstr("returned_value: ");
	putstr(returned_value == root->right->right->item ? "OK" : "KO");
	putstr("\n\n");
	returned_value = btree_search_item(root, "46", ft_strcmp);
	putstr("Searching \"46\"...\n");
	putstr("returned_value: ");
	putstr(returned_value == NULL ? "OK" : "KO");
	putstr("\n\n");
	returned_value = btree_search_item(root, "37", ft_strcmp);
	putstr("Searching \"37\"...\n");
	putstr("returned_value: ");
	putstr(returned_value == NULL ? "OK" : "KO");
	putstr("\n");

	free(root->left->left);
	free(root->left->right);
	free(root->left);
	free(root->right->left);
	free(root->right->right);
	free(root->right);
	free(root);
}
