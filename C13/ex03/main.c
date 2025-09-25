#include "../../includes.h"

typedef struct	s_btree
{
	struct s_btree	*left;
	struct s_btree	*right;
	void			*item;
}	t_btree;

void	btree_apply_suffix(t_btree *root, void (*applyf)(void *));

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

int	main(void)
{
	t_btree	*root = btree_create_node("45");
	root->left = btree_create_node("41");
	root->right = btree_create_node("44");
	root->left->left = btree_create_node("39");
	root->left->right = btree_create_node("40");
	root->right->left = btree_create_node("42");
	root->right->right = btree_create_node("43");
	
	btree_apply_suffix(root, print);

	free(root->left->left);
	free(root->left->right);
	free(root->left);
	free(root->right->left);
	free(root->right->right);
	free(root->right);
	free(root);
}
