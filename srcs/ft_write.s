# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 09:45:03 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/11 18:06:59 by blacking         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		section		.text
			global		_ft_write

_ft_write:
	cmp rdi, -1
	je error
	mov rax, 0x02000004
	syscall
	ret
error:
	mov rax, -1
	ret
