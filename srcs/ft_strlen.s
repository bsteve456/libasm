# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 10:32:13 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/08 17:18:12 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_strlen

_ft_strlen:
		xor rax, rax
		dec rax
		while:
			inc rax
			cmp		BYTE[rdi + rax], 0x0
			jne while
			ret
