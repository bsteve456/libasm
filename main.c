/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 10:23:23 by stbaleba          #+#    #+#             */
/*   Updated: 2020/02/12 09:46:11 by stbaleba         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
char	*ft_strdup(const char *s1);


int main()
{
	size_t i;

	char s1[50] = "abci";
	char s[50] = "abci45";
	printf("ft_strlen :%ld\n", i = ft_strlen(""));
	printf("strlen :%ld\n", i = strlen(""));
	printf("ft_strlen :%ld\n", i = ft_strlen("aerrggrrrtrtrtrrt"));
	printf("strlen :%ld\n", i = strlen("aerrggrrrtrtrtrrt"));
	printf("ft_strlen :%ld\n", i = ft_strlen(""));
	printf("strlen :%ld\n", i = strlen(""));

	char dest[50] = "dsddsdsdsds";
	char src[50] = "a";
	char dest1[50] = "dsddsdsdsds";
	char src1[50] = "";
	char dest2[50] = "dsddsdsdsds";
	char src2[50] = "\0";

//	dest = calloc(sizeof(char), 50);
//	src = calloc(sizeof(char), 50);
	ft_strcpy(dest, src);
	printf("ft_strcpy :%s\n", dest);
	ft_strcpy(dest1, src1);
	printf("ft_strcpy :%s\n", dest1);
	ft_strcpy(dest2, src2);
	printf("ft_strcpy :%s\n", dest2);

//	src = "ffdfdfdfdffddffdfffffffffff";
//	ft_strcpy(dest, src);
//	printf("ft_strcpy :%s\n", dest);
//	src = "\0";
//	ft_strcpy(dest, src);
//	printf("ft_strcpy :%s\n", dest);
	printf("ft_strcmp :%d\n", ft_strcmp(s, s1));
	printf("strcmp :%d\n", strcmp(s, s1));
	printf("ft_strcmp :%d\n", ft_strcmp(s, src));
	printf("strcmp :%d\n", strcmp(s, src));
	printf("ft_strcmp :%d\n", ft_strcmp(s, src1));
	printf("strcmp :%d\n", strcmp(s, src1));
	printf("ft_strcmp :%d\n", ft_strcmp(s, src2));
	printf("strcmp :%d\n", strcmp(s, src2));

	ft_write(1, "Hello World\n", 12);
//	printf("%zd\n", write(-1, "Hello World\n", 12));
	write(1, "Hello World\n", 12);
//	printf("%zd\n", write(1, "Hello World\n", 12));
	int	fd;
	fd = open("./test", O_RDWR);
	char *buf;
	buf = calloc(sizeof(char), 15);
	ft_read(200, buf, 10);
	printf("%s\n", buf);
	free(buf);
	close(fd);
	printf("ft_strdup :%s\n", ft_strdup(s1));
	printf("strdup :%s\n", strdup(s1));
	printf("ft_strdup :%s\n", ft_strdup(s));
	printf("strdup :%s\n", strdup(s));
	printf("ft_strdup :%s\n", ft_strdup(src));
	printf("strdup :%s\n", strdup(src));
	printf("ft_strdup :%s\n", ft_strdup(dest));
	printf("strdup :%s\n", strdup(dest));

//	printf("%s\n", strcpy(s, s1));

//	assert(i == 1 && "not good");
//	printf("%ld\n", ft_strlen("a"));
}
