# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 10:31:40 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/12 10:50:01 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_read

_ft_read:
	xor rax, rax
	mov rax, rdi
	cmp al, -1
	jle error
	mov rax, 0x02000003
	syscall
	ret
error:
	mov rax, -1
	ret
