/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlebaill <rlebaill@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/17 08:47:04 by romain            #+#    #+#             */
/*   Updated: 2026/07/29 11:18:05 by rlebaill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"
#include "ft_point.h"
#include "ft_point.h"

#ifndef FT_POINT_H
# error Invalid `#define`
#endif

void	set_point(t_point *point, int x, int y)
{
	point->x = x;
	point->y = y;
}

int	main(void)
{
	t_point		point;

	set_point(&point, 42, 21);
	printf("(%d, %d)\n", point.x, point.y);

	set_point(&point, 0, 0);
	printf("(%d, %d)\n", point.x, point.y);

	set_point(&point, 1024, -1024);
	printf("(%d, %d)\n", point.x, point.y);

	set_point(&point, INT_MAX, INT_MIN);
	printf("(%d, %d)\n", point.x, point.y);

	return (0);
}
