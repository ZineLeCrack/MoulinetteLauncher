#include "../../includes.h"

typedef struct	s_btree
{
	struct s_btree	*left;
	struct s_btree	*right;
	void			*item;
}	t_btree;

int	btree_level_count(t_btree *root);

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
	t_btree	*root = NULL;
	putstr("(null)\n\n");
	int	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root = btree_create_node("42");

	putstr("42\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root->left = btree_create_node("44");

	putstr("  42\n  /\n44\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root->right = btree_create_node("40");

	putstr("  42\n  /\\\n44  40\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root->left->left = btree_create_node("45");

	putstr("     42\n    /  \\\n  44    40\n  /\n45\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root->left->right = btree_create_node("43");

	putstr("     42\n    /  \\\n  44    40\n  /\\\n45 43\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root->right->left = btree_create_node("41");

	putstr("     42\n    /  \\\n  44    40\n  /\\    /\n45 43  41\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n\n");

	root->right->right = btree_create_node("39");

	putstr("     42\n    /  \\\n  44    40\n  /\\    /\\\n45 43  41 39\n\n");
	returned_value = btree_level_count(root) + '0';
	putstr("returned value: ");
	write(1, &returned_value, 1);
	putstr("\n");

	free(root->left->left);
	free(root->left->right);
	free(root->left);
	free(root->right->left);
	free(root->right->right);
	free(root->right);
	free(root);
}
