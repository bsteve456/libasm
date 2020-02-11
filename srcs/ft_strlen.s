# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 10:32:13 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/09 10:49:57 by blacking         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		ft_strlen

ft_strlen:
		xor rax, rax
		dec rax
		while:
			inc rax
			cmp		BYTE[rdi + rax], 0x0
			jne while
			ret
