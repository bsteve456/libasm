/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 10:23:23 by stbaleba          #+#    #+#             */
/*   Updated: 2020/02/09 16:18:26 by stbaleba         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <assert.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);

int main()
{
	size_t i;

	char s[5] = "abci";
	char s1[5] = "abci";
	printf("%ld\n", i = ft_strlen(s));
	printf("%ld\n", i = strlen(s));
//	printf("%s\n", ft_strcpy(s, s1));
//	printf("%s\n", s);
	printf("%d\n", ft_strcmp(s, s1));
	printf("%d\n", strcmp(s, s1));

//	printf("%s\n", strcpy(s, s1));

//	assert(i == 1 && "not good");
//	printf("%ld\n", ft_strlen("a"));
}
