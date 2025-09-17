/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/17 08:47:04 by romain            #+#    #+#             */
/*   Updated: 2025/09/17 10:20:17 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"
#include "ft_stock_str.h"

void	ft_show_tab(struct s_stock_str *par);

static int     ft_strlen(char *str)
{
	int	len;

	len = 0;
	while (str[len])
		len++;
	return (len);
}

static char    *ft_strdup(char *src)
{
	int		i;
	char	*dest;

	if (src == NULL)
		return (NULL);
	i = 0;
	dest = malloc(sizeof(char) * ft_strlen(src) + 1);
	if (dest == NULL)
		return (NULL);
	while (src[i])
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = 0;
	return (dest);
}

struct s_stock_str      *ft_strs_to_tab(int ac, char **av)
{
	t_stock_str	*tab;
	int			i;

	i = 0;
	tab = malloc(sizeof(t_stock_str) * (ac + 1));
	if (tab == NULL)
		return (NULL);
	while (i < ac)
	{
		tab[i].size = ft_strlen(av[i]);
		tab[i].str = av[i];
		tab[i].copy = ft_strdup(av[i]);
		i++;
	}
	tab[i].str = 0;
	return (tab);
}

int	main(void)
{
	char	*strs1[] = { "Hello", "World" };
	int		n = 2;

	t_stock_str *returned_value = ft_strs_to_tab(n, strs1);
	printf("----- \"Hello\" - \"World\" -----\n");
	ft_show_tab(returned_value);
	for (int i = 0; returned_value[i].str; i++) {
		free(returned_value[i].copy);
	}

	free(returned_value);

	char	*strs2[] = { };
	
	n = 0;
	returned_value = ft_strs_to_tab(n, strs2);
	printf("\n-----  -----\n");
	ft_show_tab(returned_value);
	for (int i = 0; returned_value[i].str; i++) {
		free(returned_value[i].copy);
	}

	free(returned_value);

	char	*strs3[] = { "", "42", "Le", "Havre", "!"};
	
	n = 5;
	returned_value = ft_strs_to_tab(n, strs3);
	printf("\n----- \"\" - \"42\" - \"Le\" - \"Havre\" - \"!\" -----\n");
	ft_show_tab(returned_value);
	for (int i = 0; returned_value[i].str; i++) {
		free(returned_value[i].copy);
	}

	free(returned_value);
}
