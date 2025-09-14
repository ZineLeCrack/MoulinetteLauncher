/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_memory.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/13 16:46:13 by romain            #+#    #+#             */
/*   Updated: 2025/09/14 20:55:35 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar_hexa(char c)
{
	char	base[] = "0123456789abcdef";

	write(1, &base[c / 16], 1);
	write(1, &base[c % 16], 1);
}

void	ft_putaddr(void *addr)
{
	char	base[] = "0123456789abcdef";
	int		i;
	
	i = 15;
	while (i >= 0)
	{
		write(1, &base[((unsigned long)addr >> (i * 4)) % 16], 1);
		i--;
	}
	write(1, ": ", 2);
}

int	ft_isprintable(char c)
{
	return (' ' <= c && c <= '~');
}

void	ft_putstr_printable(char *str, unsigned int i, unsigned int size)
{
	unsigned int	stop;

	stop = i + 16;
	while (i < size && i < stop)
	{
		if (ft_isprintable(str[i]))
			write(1, &str[i], 1);
		else
			write(1, ".", 1);
		i++;
	}
	write(1, "\n", 1);
}

void	*ft_print_memory(void *addr, unsigned int size)
{
	unsigned int	i;
	unsigned int	stop;

	i = 0;
	while (i < size)
	{
		ft_putaddr(addr + i);
		stop = i + 16;
		while (i < stop)
		{
			if (i < size)
				ft_putchar_hexa(((char *)addr)[i]);
			else
				write(1, "  ", 2);
			if (i + 1 < size)
				ft_putchar_hexa(((char *)addr)[i + 1]);
			else
				write(1, "  ", 2);
			write (1, " ", 1);
			i += 2;
		}
		ft_putstr_printable((char *)addr, i - 16, size);
	}
	return (addr);
}
