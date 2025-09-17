/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/17 08:47:04 by romain            #+#    #+#             */
/*   Updated: 2025/09/17 10:36:40 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes.h"

void	ft_putchar(char c);
void	ft_swap(int *a, int *b);
void	ft_putstr(char *str);
int		ft_strlen(char *str);
int		ft_strcmp(char *s1, char *s2);

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

	int a = 24;
	int b = 42;

	printf("a = %d, b = %d => ", a, b);
	
	ft_swap(&a, &b);

	printf("a = %d, b = %d\n", a, b);

	ft_putstr("");
	ft_putstr("\n");
	ft_putstr("42\n");
	ft_putstr("\t\v\r\0\n");
	ft_putstr("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n");

	printf("\"\" -> %d\n", ft_strlen(""));
	printf("\"\\n\" -> %d\n", ft_strlen("\n"));
	printf("\"42\" -> %d\n", ft_strlen("42"));
	printf("\"\\t\\v\\r\" -> %d\n", ft_strlen("\t\v\r"));
	printf("\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" -> %d\n", ft_strlen("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."));

	char	s1[] = "Hello";
	char	s2[] = "World";

	int return_value = ft_strcmp(s1, s2);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s1, s2, return_value < 0 ? "OK" : "KO");



	char	s3[] = "42";
	char	s4[] = "";

	return_value = ft_strcmp(s3, s4);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s3, s4, return_value > 0 ? "OK" : "KO");



	char	s5[] = "";
	char	s6[] = "42";

	return_value = ft_strcmp(s5, s6);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s5, s6, return_value < 0 ? "OK" : "KO");



	char	s7[] = "42";
	char	s8[] = "42";

	return_value = ft_strcmp(s7, s8);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s7, s8, return_value == 0 ? "OK" : "KO");



	char	s9[] = "";
	char	s10[] = "";

	return_value = ft_strcmp(s9, s10);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s9, s10, return_value == 0 ? "OK" : "KO");



	char	s11[] = "ft_strlen";
	char	s12[] = "ft_strcmp";

	return_value = ft_strcmp(s11, s12);
	printf("s1 = \"%s\", s2 = \"%s\"  -->  returned value = %s\n", s11, s12, return_value > 0 ? "OK" : "KO");
}
