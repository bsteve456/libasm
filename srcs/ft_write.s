# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 09:45:03 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/12 08:57:18 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_write

_ft_write:
	xor rax, rax
	mov rax, rdi
	cmp al, -1
	je error
	mov rax, 0x02000004
	syscall
	ret
error:
	ret
