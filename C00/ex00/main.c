/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/20 12:36:33 by romain            #+#    #+#             */
/*   Updated: 2025/09/20 12:36:40 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"

void	ft_putchar(char c);

int	main(void)
{
	putstr("Testing ' ': ");
	ft_putchar(' ');
	ft_putchar('\n');
	putstr("Testing '4': ");
	ft_putchar('4');
	ft_putchar('\n');
	putstr("Testing '2': ");
	ft_putchar('2');
	ft_putchar('\n');
	putstr("Testing '~': ");
	ft_putchar('~');
	ft_putchar('\n');
	putstr("Testing DEL: ");
	ft_putchar(127);
	ft_putchar('\n');
	putstr("Testing NON ASCII CHAR: ");
	ft_putchar(-128);
	ft_putchar('\n');
}
