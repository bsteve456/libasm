# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 10:31:40 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/12 08:56:21 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_read

_ft_read:
	xor rax, rax
	mov rax, rdi
	cmp al, -1
	je error
	mov rax, 0x02000003
	syscall
	ret
error:
	ret
