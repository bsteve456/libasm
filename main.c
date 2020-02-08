/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 10:23:23 by stbaleba          #+#    #+#             */
/*   Updated: 2020/02/08 18:10:25 by stbaleba         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <assert.h>

size_t	ft_strlen(const char *s);
char	*strcpy(char *dst, const char *src);

int main()
{
	size_t i;

	char *s = "acedd";
	printf("%ld\n", i = ft_strlen(s));
	printf("%ld\n", i = strlen(s));
	printf("%s\n", ft_strcpy("abc", "ade"));
//	assert(i == 1 && "not good");
//	printf("%ld\n", ft_strlen("a"));
}
