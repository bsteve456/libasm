# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 17:24:48 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/08 18:12:37 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			extern		_ft_strlen
			global		_ft_strcpy


_ft_strcpy:
		xor rdx, rdx
		xor rcx, rcx
		xor rax, rax
		push rdi
		mov  rdi, rsi
		call _ft_strlen
		pop rdi
		while:
				mov BYTE[rdi + rdx], BYTE[rsi + rcx]
				inc rdx
				inc rcx
				dec rax
				cmp rax, 0
				jne while
				ret
