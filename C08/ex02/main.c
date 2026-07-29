/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlebaill <rlebaill@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/17 08:47:04 by romain            #+#    #+#             */
/*   Updated: 2026/07/29 11:16:25 by rlebaill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"
#include "ft_abs.h"
#include "ft_abs.h"

#ifndef FT_ABS_H
# error Invalid `#define`
#endif

int	main(void)
{
	printf("ABS(%d) = %d\n", 1, ABS(1));
	printf("ABS(%d) = %d\n", 42, ABS(42));
	printf("ABS(%d) = %d\n", -42, ABS(-42));
	printf("ABS(%d) = %d\n", 0, ABS(0));
	printf("ABS(%d) = %d\n", -255, ABS(-255));
	printf("ABS(%d) = %d\n", 1024, ABS(1024));
	printf("ABS(%d) = %d\n", -1, ABS(-1));
	printf("ABS(%d) = %d\n", INT_MAX, ABS(INT_MAX));
	printf("ABS(%d) = %d\n", -INT_MAX, ABS(-INT_MAX));
}
