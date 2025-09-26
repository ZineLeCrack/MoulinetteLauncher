#include "../../includes.h"

typedef struct	s_btree
{
	struct s_btree	*left;
	struct s_btree	*right;
	void			*item;
}	t_btree;

void	btree_insert_data(t_btree **root, void *item, int (*cmpf)(void *, void *));

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

void	btree_apply_infix(t_btree *root, void (*applyf)(void *))
{
	if (root->left != 0)
		btree_apply_infix(root->left, applyf);
	(*applyf)(root->item);
	if (root->right != 0)
		btree_apply_infix(root->right, applyf);
}

void	btree_apply_prefix(t_btree *root, void (*applyf)(void *))
{
	(*applyf)(root->item);
	if (root->left != 0)
		btree_apply_prefix(root->left, applyf);
	if (root->right != 0)
		btree_apply_prefix(root->right, applyf);
}

int	main(void)
{
	t_btree	*root = NULL;
	
	btree_insert_data(&root, "p", ft_strcmp);
	btree_insert_data(&root, "f", ft_strcmp);
	btree_insert_data(&root, "a", ft_strcmp);
	btree_insert_data(&root, "s", ft_strcmp);
	btree_insert_data(&root, "j", ft_strcmp);
	btree_insert_data(&root, "g", ft_strcmp);
	btree_insert_data(&root, "u", ft_strcmp);
	btree_insert_data(&root, "z", ft_strcmp);
	btree_insert_data(&root, "r", ft_strcmp);

	putstr(">>>>>>>>>> <<<<<<<<<<\n");
	btree_apply_infix(root, print);
	putstr(">>>>>>>>>> <<<<<<<<<<\n");
	btree_apply_prefix(root, print);
	putstr(">>>>>>>>>> <<<<<<<<<<\n");

	free(root->left->left);
	free(root->left->right->left);
	free(root->left->right);
	free(root->left);
	free(root->right->left);
	free(root->right->right->right);
	free(root->right->right);
	free(root->right);
	free(root);
}
