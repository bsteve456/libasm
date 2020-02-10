/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 10:23:23 by stbaleba          #+#    #+#             */
/*   Updated: 2020/02/10 10:50:12 by stbaleba         ###   ########.fr       */
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

int main()
{
	size_t i;

	char s1[5] = "abci";
	char s[7] = "abci45";
	printf("%ld\n", i = ft_strlen(s));
	printf("%ld\n", i = strlen(s));
//	printf("%s\n", ft_strcpy(s, s1));
//	printf("%s\n", s);
	printf("%d\n", ft_strcmp(s, s1));
	printf("%d\n", strcmp(s, s1));
	printf("%zd\n", ft_write(1, "Hello World\n", 12));
//	printf("%zd\n", write(-1, "Hello World\n", 12));
	printf("%zd\n", write(1, "Hello World\n", 12));
//	printf("%zd\n", write(1, "Hello World\n", 12));
	int	fd;
	fd = open("./test", O_RDWR);
	char *buf;
	buf = calloc(sizeof(char), 15);
	ft_read(fd, buf, 10);
	printf("%s\n", buf);
	free(buf);
	close(fd);
//	printf("%s\n", strcpy(s, s1));

//	assert(i == 1 && "not good");
//	printf("%ld\n", ft_strlen("a"));
}
