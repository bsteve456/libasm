# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stbaleba <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 12:11:39 by stbaleba          #+#    #+#              #
#    Updated: 2020/02/10 14:06:02 by stbaleba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		extern		_malloc
		extern		_ft_strlen
		section		.text
			global		_ft_strdup

_ft_strdup:
	call _ft_strlen
	push rdi
	mov rdi, rax
	call _malloc
	xor rcx, rcx
	xor rdx, rdx
	dec rcx
	dec rdx
	pop rdi
	jmp loop
loop:
	inc rdx
	inc rcx
	mov bl, BYTE[rdi + rdx]
	mov BYTE[rax + rcx], bl
	cmp	BYTE[rdi + rdx], 0x0
	jne loop
	mov BYTE[rax + rdx], 0
	ret



