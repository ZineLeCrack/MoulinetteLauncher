#include "../../includes.h"

typedef struct	s_btree
{
	struct s_btree	*left;
	struct s_btree	*right;
	void			*item;
}	t_btree;

void	btree_apply_by_level(t_btree *root, void (*applyf)(void *item, int current_level, int is_first_elem));

void	apply_by_level(void *item, int current_level, int is_first_elem)
{
	char	lvl;

	lvl = current_level + '0';
	putstr("Level: ");
	write(1, &lvl, 1);
	putstr(", ");
	if (is_first_elem)
		putstr("first: ");
	putstr(item);
	putstr("\n");
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
	t_btree	*root = btree_create_node("42");
	root->left = btree_create_node("40");
	root->right = btree_create_node("44");
	root->left->left = btree_create_node("39");
	root->left->right = btree_create_node("41");
	root->right->left = btree_create_node("43");
	root->right->right = btree_create_node("45");

	putstr("     42\n    /  \\\n  44    40\n  /\\    /\\\n45 43  41 39\n\n");

	btree_apply_by_level(root, apply_by_level);

	free(root->left->left);
	free(root->left->right);
	free(root->left);
	free(root->right->left);
	free(root->right->right);
	free(root->right);
	free(root);
}
