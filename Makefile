# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 10:07:36 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/08 10:57:34 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=nasm
CFLAG=-fmacho64
NAME=libasm.a
FILE=srcs/ft_strlen.s

OBJ=$(FILE:.s=.o)

all :$(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
.s.o: $(FILE)
	$(CC) $(CFLAG) $<
clean:
		rm -rf  ./srcs/*.o
fclean:
		rm -rf $(NAME)
re: fclean all
