/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_abs.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlebaill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/15 08:45:06 by rlebaill          #+#    #+#             */
/*   Updated: 2024/07/15 09:10:18 by rlebaill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_ABS_H
# define FT_ABS_H

int	ft_abs(int Value);

int	ft_abs(int Value)
{
	if (Value < 0)
		Value *= -1;
	return (Value);
}

# define ABS(Value) (ft_abs(Value))

#endif
