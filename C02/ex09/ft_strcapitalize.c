/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcapitalize.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/13 16:46:13 by romain            #+#    #+#             */
/*   Updated: 2025/09/14 14:22:06 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isalphanum(char c)
{
	return (('a' <= c && c <= 'z') ||
			('A' <= c && c <= 'Z') ||
			('0' <= c && c <= '9'));
}

int	ft_islowercase(char c)
{
	return ('a' <= c && c <= 'z');
}

char	*ft_strcapitalize(char *str)
{
	int	i;

	if (*str && ft_islowercase(*str))
		*str += 'A' - 'a';
	i = 1;
	while (str[i])
	{
		if (!ft_isalphanum(str[i - 1]) && ft_islowercase(str[i]))
			str[i] += 'A' - 'a';
		i++;
	}
	return (str);
}
