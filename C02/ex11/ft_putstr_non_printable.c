/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_non_printable.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/13 16:46:13 by romain            #+#    #+#             */
/*   Updated: 2025/09/14 20:10:11 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

int	ft_is_printable(char c)
{
	return (' ' <= c && c <= '~');
}
void	ft_putstr_non_printable(char *str)
{
	char	base[] = "0123456789abcdef";
	char	c;
	int		i;

	i = 0;
	while (str[i])
	{
		if (ft_is_printable(str[i]))
			write(1, &str[i], 1);
		else
		{
			write(1, "\\", 1);
			c = base[str[i] / 16];
			write(1, &c, 1);
			c = base[str[i] % 16];
			write(1, &c, 1);
		}
		i++;
	}
}
