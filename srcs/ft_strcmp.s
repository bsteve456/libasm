# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/09 14:19:18 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/10 09:35:02 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_strcmp

_ft_strcmp:
			xor	rcx, rcx
			xor rdx, rdx
			dec rcx
			dec rdx
			while:
						inc rcx
						inc rdx
						cmp BYTE[rdi + rdx], 0
						je _finish
						cmp BYTE[rsi + rcx], 0
						je _finish
						mov bl, BYTE[rsi + rcx]
						cmp bl, BYTE[rdi + rdx]
						je while
						jmp _finish
						ret
_finish:
	mov al, BYTE[rdi + rdx]
	sub al, BYTE[rsi + rcx]
	movsx rax, al
	ret
