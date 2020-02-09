# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 17:24:48 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/09 16:05:42 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_strcpy


_ft_strcpy:
		xor rcx, rcx
		xor rdx, rdx
		while:
				mov bl,  BYTE[rsi + rcx]
				mov BYTE[rdi + rdx],  bl
				inc rcx
				inc rdx
				cmp BYTE[rsi + rcx], 0
				jne while
				mov BYTE[rdi + rdx], 0
				mov rax, rdi
				ret
