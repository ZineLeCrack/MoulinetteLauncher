/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlebaill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/17 10:35:43 by rlebaill          #+#    #+#             */
/*   Updated: 2024/07/17 14:13:18 by rlebaill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

int	ft_strlen(char *str)
{
	int	len;

	len = 0;
	while (str[len])
		len++;
	return (len);
}

int	is_sep(char c, char *charset)
{
	int	i;

	i = 0;
	while (charset[i])
	{
		if (c == charset[i])
			return (1);
		i++;
	}
	return (0);
}

char	*dup_strft(char *src, int start, int end)
{
	char	*res;
	int		i;

	res = malloc(sizeof(char) * (end - start + 1));
	i = 0;
	while (i < end - start)
	{
		res[i] = src[start + i];
		i++;
	}
	res[i] = '\0';
	return (res);
}

char	**ft_split(char *str, char *charset)
{
	char	**res;
	int		start;
	int		i_tab;
	int		i;

	i = 0;
	start = 0;
	i_tab = 0;
	res = malloc(sizeof(char *) * (ft_strlen(str) + 1));
	while (str[i])
	{
		while (str[i] && is_sep(str[i], charset))
			i++;
		start = i;
		while (str[i] && !is_sep(str[i], charset))
			i++;
		if (start < i)
			res[i_tab++] = dup_strft(str, start, i);
	}
	res[i_tab] = NULL;
	return (res);
}

/*#include <stdio.h>

int	main(void)
{
	char	**res;
	int		i;

	res = ft_split("Hnezl lzo W ozrnl d", " zn");
	i = 0;
	while (res[i])
	{
		printf("%s", res[i]);
		i++;
	}
}*/
