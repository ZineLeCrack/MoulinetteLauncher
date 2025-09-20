/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlebaill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/09 08:53:04 by rlebaill          #+#    #+#             */
/*   Updated: 2024/07/09 09:07:08 by rlebaill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strcmp(char *s1, char *s2)
{
	int	n;

	n = 0;
	while (s1[n] == s2[n] && s1[n] != '\0' && s2[n] != '\0')
		n++;
	return (s1[n] - s2[n]);
}

/*#include <stdio.h>

int	main(void)
{
	char	s1[] = "Hello";
	char	s2[] = "Hello World";

	printf("n = %d\n", ft_strcmp(s1, s2));
	return (0);
}*/
