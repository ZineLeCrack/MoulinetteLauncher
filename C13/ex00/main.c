#include "../../includes.h"

typedef struct	s_btree
{
	struct s_btree	*left;
	struct s_btree	*right;
	void			*item;
}	t_btree;

t_btree	*btree_create_node(void *item);

int	main(void)
{
	t_btree	*root = btree_create_node("42");
	root->left = btree_create_node("41");
	root->right = btree_create_node("43");

	putstr("  ");
	putstr(root->item);
	putstr("\n");
	putstr(root->left->item);
	putstr("  ");
	putstr(root->right->item);
	putstr("\n");

	free(root->left);
	free(root->right);
	free(root);
}
