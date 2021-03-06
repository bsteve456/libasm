# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 10:07:36 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/10 12:21:57 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=nasm
CFLAG=-fmacho64
NAME=libasm.a
FILE=srcs/ft_strlen.s \
	srcs/ft_strcpy.s \
	srcs/ft_strcmp.s \
	srcs/ft_write.s \
	srcs/ft_read.s \
	srcs/ft_strdup.s

OBJ=$(FILE:.s=.o)

all :$(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
.s.o: $(FILE)
	$(CC) $(CFLAG) $<
clean:
		rm -rf  ./srcs/*.o
fclean: clean
		rm -rf $(NAME)
re: fclean all
