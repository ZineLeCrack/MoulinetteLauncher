/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/17 08:47:04 by romain            #+#    #+#             */
/*   Updated: 2025/09/17 09:39:15 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"
#include "ft_stock_str.h"

struct	s_stock_str *ft_strs_to_tab(int ac, char **av);

int	main(void)
{
	char	*strs1[] = { "Hello", "World" };
	int		n = 2;

	t_stock_str *returned_value = ft_strs_to_tab(n, strs1);
	for (int i = 0; returned_value[i].str; i++) {
		printf("typedef struct s_stock_str\n{\n\tint\tsize = %d;\n\tchar\t*str = \"%s\";\n\tchar\t*copy = \"%s\";\n}\tt_stock_str;\n\n", returned_value[i].size, returned_value[i].str, returned_value[i].copy);
		free(returned_value[i].copy);
	}

	free(returned_value);

	char	*strs2[] = { };
	
	n = 0;
	returned_value = ft_strs_to_tab(n, strs2);
	for (int i = 0; returned_value[i].str; i++) {
		printf("typedef struct s_stock_str\n{\n\tint\tsize = %d;\n\tchar\t*str = \"%s\";\n\tchar\t*copy = \"%s\";\n}\tt_stock_str;\n\n", returned_value[i].size, returned_value[i].str, returned_value[i].copy);
		free(returned_value[i].copy);
	}

	free(returned_value);

	char	*strs3[] = { "", "42", "Le", "Havre", "!"};
	
	n = 5;
	returned_value = ft_strs_to_tab(n, strs3);
	for (int i = 0; returned_value[i].str; i++) {
		printf("typedef struct s_stock_str\n{\n\tint\tsize = %d;\n\tchar\t*str = \"%s\";\n\tchar\t*copy = \"%s\";\n}\tt_stock_str;\n\n", returned_value[i].size, returned_value[i].str, returned_value[i].copy);
		free(returned_value[i].copy);
	}

	free(returned_value);
}
