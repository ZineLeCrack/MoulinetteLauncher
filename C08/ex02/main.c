/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/17 08:47:04 by romain            #+#    #+#             */
/*   Updated: 2026/10/19 07:58:38 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"
#include "ft_abs.h"
#include "ft_abs.h"

#ifndef FT_ABS_H
# error Invalid `#define`
#endif

int	main(int ac, char **av)
{
	if (ac == 2) {
		printf("%d", ABS(atoi(av[1])));
	}
}
