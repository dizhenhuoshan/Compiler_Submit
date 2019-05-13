default rel

global print
global println
global getString
global getInt
global toString
global _string_length
global _string_substring
global _string_parseInt
global _string_ord
global __stradd
global __strcmp
global ___array_size

extern strcmp
extern memcpy
extern __sprintf_chk
extern strcpy
extern malloc
extern _IO_getc
extern stdin
extern _IO_putc
extern _GLOBAL_OFFSET_TABLE_
extern stdout


SECTION .text   

print:
        push    rbx
        lea     rbx, [rdi+8H]
        movsx   edi, byte [rdi+8H]
        test    dil, dil
        jz      L_002



L_001:  mov     rsi, qword [rel stdout]
        add     rbx, 1
        call    _IO_putc
        movsx   edi, byte [rbx]
        test    dil, dil
        jnz     L_001
L_002:  pop     rbx
        ret

println:
        push    rbx
        lea     rbx, [rdi+8H]
        movsx   edi, byte [rdi+8H]
        test    dil, dil
        jz      L_004
L_003:  mov     rsi, qword [rel stdout]
        add     rbx, 1
        call    _IO_putc
        movsx   edi, byte [rbx]
        test    dil, dil
        jnz     L_003
L_004:  pop     rbx
        mov     rsi, qword [rel stdout]
        mov     edi, 10
        jmp     _IO_putc


getString:
        mov     rdi, qword [rel stdin]
        push    r12
        push    rbp
        push    rbx
        call    _IO_getc
        cmp     al, 10
        mov     byte [rel buffer.3345], al
        jz      L_005
        cmp     al, 13
        mov     edx, eax
        jnz     L_007
L_005:  lea     rbx, [rel buffer.3345]
L_006:  mov     rdi, qword [rel stdin]
        call    _IO_getc
        cmp     al, 10
        mov     edx, eax
        mov     byte [rbx], al
        jz      L_006
        cmp     al, 13
        jz      L_006
L_007:  add     edx, 1
        xor     ebp, ebp
        lea     rbx, [rel buffer.3345]
        cmp     dl, 14
        ja      L_008
        mov     eax, 18433
        bt      rax, rdx
        jc      L_013
L_008:  mov     r12d, 18433
L_009:  mov     rdi, qword [rel stdin]
        add     rbx, 1
        call    _IO_getc
        mov     byte [rbx], al
        add     eax, 1
        lea     edx, [rbp+1H]
        cmp     al, 14
        ja      L_010
        bt      r12, rax
        jc      L_011
L_010:  mov     ebp, edx
        jmp     L_009
L_011:  lea     edi, [rbp+0AH]
        movsxd  rbp, edx
        movsxd  rdi, edi
L_012:  mov     byte [rbx], 0
        call    malloc
        lea     rsi, [rel buffer.3345]
        lea     rdi, [rax+8H]
        mov     rbx, rax
        mov     qword [rax], rbp
        call    strcpy
        mov     rax, rbx
        pop     rbx
        pop     rbp
        pop     r12
        ret
L_013:  xor     ebp, ebp
        mov     edi, 9
        jmp     L_012


getInt:
        mov     rdi, qword [rel stdin]
        push    r12
        push    rbp
        push    rbx
        xor     ebx, ebx
        call    _IO_getc
        movsx   rdx, al
        sub     eax, 48
        cmp     al, 9
        jbe     L_015
        mov     ebp, 1
L_014:  mov     rdi, qword [rel stdin]
        cmp     dl, 45
        cmove   ebx, ebp
        call    _IO_getc
        movsx   rdx, al
        sub     eax, 48
        cmp     al, 9
        ja      L_014
L_015:  xor     r12d, r12d
L_016:  lea     rax, [r12+r12]
        mov     rdi, qword [rel stdin]
        lea     rbp, [rax+r12*8]
        add     rbp, rdx
        call    _IO_getc
        movsx   rdx, al
        sub     eax, 48
        lea     r12, [rbp-30H]
        cmp     al, 9
        jbe     L_016
        mov     eax, 48
        sub     rax, rbp
        test    ebx, ebx
        cmovne  r12, rax
        mov     rax, r12
        pop     rbx
        pop     rbp
        pop     r12
        ret


toString:
        push    rbp
        push    rbx
        mov     rbp, rdi
        mov     edi, 32
        sub     rsp, 8
        call    malloc
        lea     rcx, [rel LC0]
        lea     rdi, [rax+8H]
        mov     rbx, rax
        mov     r8, rbp
        mov     edx, 24
        mov     esi, 1
        xor     eax, eax
        call    __sprintf_chk
        cdqe
        mov     qword [rbx], rax
        add     rsp, 8
        mov     rax, rbx
        pop     rbx
        pop     rbp
        ret


_string_length:
        mov     rax, qword [rdi]
        ret


_string_substring:
        sub     rdx, rsi
        push    r14
        mov     r14, rdi
        push    r13
        lea     rdi, [rdx+0AH]
        push    r12
        push    rbp
        push    rbx
        lea     r12, [rdx+1H]
        mov     r13, rsi
        mov     rbx, rdx
        call    malloc
        lea     rsi, [r14+r13+8H]
        lea     rdi, [rax+8H]
        mov     rbp, rax
        mov     qword [rax], r12
        mov     rdx, r12
        call    memcpy
        mov     byte [rbp+rbx+9H], 0
        mov     rax, rbp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        ret


_string_parseInt:
        movsx   edx, byte [rdi+8H]
        cmp     dl, 45
        jz      L_019
        test    dl, dl
        jz      L_020
        lea     rcx, [rdi+8H]
        xor     esi, esi
L_017:  xor     eax, eax
L_018:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rcx, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rcx]
        test    dl, dl
        jnz     L_018
        mov     rdx, rax
        neg     rdx
        test    esi, esi
        cmovne  rax, rdx
        ret
L_019:  movsx   edx, byte [rdi+9H]
        lea     rcx, [rdi+9H]
        test    dl, dl
        jz      L_020
        mov     esi, 1
        jmp     L_017
L_020:  xor     eax, eax
        ret


_string_ord:
        movsx   rax, byte [rdi+rsi+8H]
        ret


__stradd:
        push    r15
        push    r14
        mov     r14, rdi
        push    r13
        push    r12
        mov     r12, rsi
        push    rbp
        push    rbx
        sub     rsp, 24
        mov     r15, qword [rdi]
        mov     r13, qword [rsi]
        lea     rbp, [r15+8H]
        lea     rcx, [rbp+r13]
        lea     rdi, [rcx+1H]
        mov     qword [rsp+8H], rcx
        call    malloc
        mov     rbx, rax
        lea     rsi, [r14+8H]
        lea     rax, [r15+r13]
        lea     rdi, [rbx+8H]
        mov     rdx, r15
        mov     qword [rbx], rax
        call    memcpy
        lea     rdi, [rbx+rbp]
        lea     rsi, [r12+8H]
        mov     rdx, r13
        call    memcpy
        mov     rcx, qword [rsp+8H]
        mov     rax, rbx
        mov     byte [rbx+rcx], 0
        add     rsp, 24
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret


__strcmp:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        add     rsp, 8
        cdqe
        ret


___array_size:
        mov     rax, qword [rdi-8H]
        ret



SECTION .data   


SECTION .bss    align=32

buffer.3345:
        resb    1048576


SECTION .rodata.str1.1 

LC0:
        db 25H, 6CH, 64H, 00H



;********************************************************************************

global main
global __init
section .data
	__Static0_INF:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static1_nMax:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static2_n:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static3_m:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static4_id_cnt:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static5_din:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static6_sp:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static7_dintree:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static8_char_ID:
		db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
	__Static9_constString0:
		dq 2
		db 49H, 44H, 00H
	__Static10_constString1:
		dq 2
		db 30H, 0AH, 00H
	__Static11_constString2:
		dq 1
		db 0AH, 00H

section .text

max:
	max0_entry_max:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		cmp rdi, rsi
		jg max1_Ifthen
		mov rax, rsi
		jmp max2_leave_max
	max1_Ifthen:
		mov rax, rdi
		jmp max2_leave_max
	max2_leave_max:
		leave
		ret
_Node_copy:
	_Node_copy0_entry__Node_copy:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		mov rcx, rsi
		mov rdx, rdi
		mov rdi, qword [rcx]
		mov qword [rdx], rdi
		mov rdi, qword [rcx + 8]
		mov qword [rdx + 8], rdi
		mov rdi, qword [rcx + 16]
		mov qword [rdx + 16], rdi
		mov rdi, qword [rcx + 24]
		mov qword [rdx + 24], rdi
		mov rdi, qword [rcx + 32]
		mov qword [rdx + 32], rdi
		mov rdi, qword [rcx + 40]
		mov qword [rdx + 40], rdi
		mov rdi, qword [rcx + 48]
		mov qword [rdx + 48], rdi
		mov rdi, qword [rcx + 56]
		mov qword [rdx + 56], rdi
		mov rdi, qword [rcx + 64]
		mov qword [rdx + 64], rdi
		mov rdi, qword [rcx + 72]
		mov qword [rdx + 72], rdi
		mov rsi, qword [rdx + 80]
		mov rdi, qword [rcx + 80]
		mov rdi, qword [rdi]
		mov qword [rsi], rdi
		mov rsi, qword [rdx + 80]
		mov rdi, qword [rcx + 80]
		mov rdi, qword [rdi + 8]
		mov qword [rsi + 8], rdi
		mov rdi, qword [rcx + 88]
		mov qword [rdx + 88], rdi
		leave
		ret
_Node_init:
	_Node_init0_entry__Node_init:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push rbx
		mov rbx, rdi
		mov qword [rbx], rdx
		mov rdi, 1
		mov qword [rbx + 16], rdi
		mov rdi, 0
		mov qword [rbx + 32], rdi
		mov rdi, 0
		mov qword [rbx + 48], rdi
		mov rdi, 0
		mov qword [rbx + 40], rdi
		mov qword [rbx + 24], rsi
		mov qword [rbx + 8], rsi
		mov qword [rbx + 56], rsi
		mov qword [rbx + 64], rsi
		mov qword [rbx + 72], rsi
		mov rdi, 3
		shl rdi, 3
		call malloc
		mov rsi, rax
		mov rdi, 2
		mov qword [rsi], rdi
		add rsi, 8
		mov qword [rbx + 80], rsi
		mov rsi, qword [rbx + 80]
		mov rdi, 0
		mov qword [rsi], rdi
		mov rsi, qword [rbx + 80]
		mov rdi, 0
		mov qword [rsi + 8], rdi
		mov rdi, 0
		mov qword [rbx + 88], rdi
		pop rbx
		leave
		ret
_Node_judge:
	_Node_judge0_entry__Node_judge:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		mov rdi, qword [rdi + 80]
		mov rdi, qword [rdi]
		call equ
		mov rdi, rax
		cmp rdi, 1
		je _Node_judge1_Ifthen
		mov rax, 1
		jmp _Node_judge2_leave__Node_judge
	_Node_judge1_Ifthen:
		mov rax, 0
		jmp _Node_judge2_leave__Node_judge
	_Node_judge2_leave__Node_judge:
		leave
		ret
_Node_push_up:
	_Node_push_up0_entry__Node_push_up:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r14
		push r13
		push r12
		push rbx
		mov r13, rdi
		mov rdi, 1
		mov qword [r13 + 16], rdi
		mov rdi, qword [r13 + 8]
		mov qword [r13 + 24], rdi
		mov r12, 0
		jmp _Node_push_up1_forCondition
	_Node_push_up1_forCondition:
		cmp r12, 2
		jl _Node_push_up2_forBody
		mov rdi, qword [r13 + 8]
		mov qword [r13 + 56], rdi
		mov rdi, qword [r13 + 8]
		mov qword [r13 + 64], rdi
		mov rdi, qword [r13 + 8]
		mov qword [r13 + 72], rdi
		mov r14, qword [r13 + 8]
		mov r12, qword [r13 + 8]
		mov rdi, qword [r13 + 80]
		cmp qword [rdi], 0
		jne _Node_push_up5_Ifthen
		jmp _Node_push_up6_Ifafter
	_Node_push_up2_forBody:
		mov rdi, qword [r13 + 80]
		cmp qword [rdi + r12*8], 0
		jne _Node_push_up3_Ifthen
		jmp _Node_push_up4_Ifafter
	_Node_push_up3_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rbx, qword [rdi + r12*8]
		mov rdi, qword [r13 + 16]
		add rdi, qword [rbx + 16]
		mov qword [r13 + 16], rdi
		mov rdi, qword [r13 + 80]
		mov rbx, qword [rdi + r12*8]
		mov rdi, qword [r13 + 24]
		add rdi, qword [rbx + 24]
		mov qword [r13 + 24], rdi
		jmp _Node_push_up4_Ifafter
	_Node_push_up4_Ifafter:
		inc r12
		jmp _Node_push_up1_forCondition
	_Node_push_up5_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi]
		mov rdi, qword [rdi + 56]
		mov qword [r13 + 56], rdi
		mov rdi, qword [r13 + 80]
		mov rbx, qword [rdi]
		mov rdi, r14
		add rdi, qword [rbx + 24]
		mov r14, rdi
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi]
		mov rsi, 0
		mov rdi, qword [rdi + 64]
		call max
		mov rbx, rax
		mov rdi, r12
		add rdi, rbx
		mov r12, rdi
		jmp _Node_push_up6_Ifafter
	_Node_push_up6_Ifafter:
		mov rdi, qword [r13 + 80]
		cmp qword [rdi + 8], 0
		jne _Node_push_up7_Ifthen
		jmp _Node_push_up8_Ifafter
	_Node_push_up7_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi + 8]
		mov rdi, qword [rdi + 64]
		mov qword [r13 + 64], rdi
		mov rdi, qword [r13 + 80]
		mov rbx, qword [rdi + 8]
		mov rdi, r12
		add rdi, qword [rbx + 24]
		mov r12, rdi
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi + 8]
		mov rsi, 0
		mov rdi, qword [rdi + 56]
		call max
		mov rbx, rax
		mov rdi, r14
		add rdi, rbx
		mov r14, rdi
		jmp _Node_push_up8_Ifafter
	_Node_push_up8_Ifafter:
		mov rsi, r14
		mov rdi, qword [r13 + 56]
		call max
		mov rdi, rax
		mov qword [r13 + 56], rdi
		mov rsi, r12
		mov rdi, qword [r13 + 64]
		call max
		mov rdi, rax
		mov qword [r13 + 64], rdi
		mov r12, 0
		jmp _Node_push_up9_forCondition
	_Node_push_up9_forCondition:
		cmp r12, 2
		jl _Node_push_up10_forBody
		mov r12, qword [r13 + 8]
		mov rdi, qword [r13 + 80]
		cmp qword [rdi], 0
		jne _Node_push_up13_Ifthen
		jmp _Node_push_up14_Ifafter
	_Node_push_up10_forBody:
		mov rdi, qword [r13 + 80]
		cmp qword [rdi + r12*8], 0
		jne _Node_push_up11_Ifthen
		jmp _Node_push_up12_Ifafter
	_Node_push_up11_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi + r12*8]
		mov rsi, qword [rdi + 72]
		mov rdi, qword [r13 + 72]
		call max
		mov rdi, rax
		mov qword [r13 + 72], rdi
		jmp _Node_push_up12_Ifafter
	_Node_push_up12_Ifafter:
		inc r12
		jmp _Node_push_up9_forCondition
	_Node_push_up13_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi]
		mov rsi, 0
		mov rdi, qword [rdi + 64]
		call max
		mov rbx, rax
		mov rdi, r12
		add rdi, rbx
		mov r12, rdi
		jmp _Node_push_up14_Ifafter
	_Node_push_up14_Ifafter:
		mov rdi, qword [r13 + 80]
		cmp qword [rdi + 8], 0
		jne _Node_push_up15_Ifthen
		jmp _Node_push_up16_Ifafter
	_Node_push_up15_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi + 8]
		mov rsi, 0
		mov rdi, qword [rdi + 56]
		call max
		mov rbx, rax
		mov rdi, r12
		add rdi, rbx
		mov r12, rdi
		jmp _Node_push_up16_Ifafter
	_Node_push_up16_Ifafter:
		mov rsi, r12
		mov rdi, qword [r13 + 72]
		call max
		mov rdi, rax
		mov qword [r13 + 72], rdi
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
_Node_addtag_ch:
	_Node_addtag_ch0_entry__Node_addtag_ch:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push rbx
		mov rcx, rdi
		mov qword [rcx + 8], rsi
		mov rdi, qword [rcx + 16]
		mov rax, rdi
		mov rbx, rsi
		mov rdx, 0
		mul rbx
		mov rdi, rax
		mov qword [rcx + 24], rdi
		cmp rsi, 0
		jge _Node_addtag_ch1_Ifthen
		mov qword [rcx + 56], rsi
		mov qword [rcx + 64], rsi
		mov qword [rcx + 72], rsi
		jmp _Node_addtag_ch2_Ifafter
	_Node_addtag_ch1_Ifthen:
		mov rdi, qword [rcx + 24]
		mov qword [rcx + 56], rdi
		mov rdi, qword [rcx + 24]
		mov qword [rcx + 64], rdi
		mov rdi, qword [rcx + 24]
		mov qword [rcx + 72], rdi
		jmp _Node_addtag_ch2_Ifafter
	_Node_addtag_ch2_Ifafter:
		mov rdi, 1
		mov qword [rcx + 32], rdi
		mov qword [rcx + 40], rsi
		pop rbx
		leave
		ret
_Node_addtag_ro:
	_Node_addtag_ro0_entry__Node_addtag_ro:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		mov rsi, rdi
		mov rdi, qword [rsi + 80]
		mov rdx, qword [rdi]
		mov rcx, qword [rsi + 80]
		mov rdi, qword [rsi + 80]
		mov rdi, qword [rdi + 8]
		mov qword [rcx], rdi
		mov rdi, qword [rsi + 80]
		mov qword [rdi + 8], rdx
		mov rcx, qword [rsi + 56]
		mov rdi, qword [rsi + 64]
		mov qword [rsi + 56], rdi
		mov qword [rsi + 64], rcx
		mov rdi, qword [rsi + 48]
		xor rdi, 1
		mov qword [rsi + 48], rdi
		leave
		ret
_Node_push_down:
	_Node_push_down0_entry__Node_push_down:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r12
		push rbx
		mov r12, rdi
		cmp qword [r12 + 32], 1
		je _Node_push_down1_Ifthen
		jmp _Node_push_down2_Ifafter
	_Node_push_down1_Ifthen:
		mov rbx, 0
		jmp _Node_push_down3_forCondition
	_Node_push_down2_Ifafter:
		cmp qword [r12 + 48], 1
		je _Node_push_down7_Ifthen
		jmp _Node_push_down8_Ifafter
	_Node_push_down3_forCondition:
		cmp rbx, 2
		jl _Node_push_down4_forBody
		mov rdi, 0
		mov qword [r12 + 32], rdi
		jmp _Node_push_down2_Ifafter
	_Node_push_down4_forBody:
		mov rdi, qword [r12 + 80]
		cmp qword [rdi + rbx*8], 0
		jne _Node_push_down5_Ifthen
		jmp _Node_push_down6_Ifafter
	_Node_push_down5_Ifthen:
		mov rdi, qword [r12 + 80]
		mov rsi, qword [r12 + 40]
		mov rdi, qword [rdi + rbx*8]
		call _Node_addtag_ch
		jmp _Node_push_down6_Ifafter
	_Node_push_down6_Ifafter:
		inc rbx
		jmp _Node_push_down3_forCondition
	_Node_push_down7_Ifthen:
		mov rbx, 0
		jmp _Node_push_down9_forCondition
	_Node_push_down8_Ifafter:
		pop rbx
		pop r12
		leave
		ret
	_Node_push_down9_forCondition:
		cmp rbx, 2
		jl _Node_push_down10_forBody
		mov rdi, 0
		mov qword [r12 + 48], rdi
		jmp _Node_push_down8_Ifafter
	_Node_push_down10_forBody:
		mov rdi, qword [r12 + 80]
		cmp qword [rdi + rbx*8], 0
		jne _Node_push_down11_Ifthen
		jmp _Node_push_down12_Ifafter
	_Node_push_down11_Ifthen:
		mov rdi, qword [r12 + 80]
		mov rdi, qword [rdi + rbx*8]
		call _Node_addtag_ro
		jmp _Node_push_down12_Ifafter
	_Node_push_down12_Ifafter:
		inc rbx
		jmp _Node_push_down9_forCondition
_Node_rot:
	_Node_rot0_entry__Node_rot:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r14
		push r13
		push r12
		push rbx
		push r15
		mov r15, rdi
		mov r14, qword [r15 + 88]
		mov rsi, r15
		mov rdi, r14
		call _Node_judge
		mov rdi, rax
		mov r13, rdi
		mov r12, qword [r14 + 80]
		mov rbx, r13
		xor rbx, 1
		mov rdi, qword [r15 + 80]
		mov rdi, qword [rdi + rbx*8]
		mov qword [r12 + r13*8], rdi
		mov rdi, qword [r15 + 80]
		mov qword [rdi + rbx*8], r14
		mov rdi, qword [r14 + 80]
		cmp qword [rdi + r13*8], 0
		jne _Node_rot1_Ifthen
		jmp _Node_rot2_Ifafter
	_Node_rot1_Ifthen:
		mov rdi, qword [r14 + 80]
		mov rdi, qword [rdi + r13*8]
		mov qword [rdi + 88], r14
		jmp _Node_rot2_Ifafter
	_Node_rot2_Ifafter:
		mov rdi, qword [r14 + 88]
		mov qword [r15 + 88], rdi
		mov qword [r14 + 88], r15
		cmp qword [r15 + 88], 0
		jne _Node_rot3_Ifthen
		jmp _Node_rot4_Ifafter
	_Node_rot3_Ifthen:
		mov rsi, r14
		mov rdi, qword [r15 + 88]
		call _Node_judge
		mov rbx, rax
		mov rdi, qword [r15 + 88]
		mov rdi, qword [rdi + 80]
		mov qword [rdi + rbx*8], r15
		jmp _Node_rot4_Ifafter
	_Node_rot4_Ifafter:
		mov rdi, r14
		call _Node_push_up
		pop r15
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
_Node_rotto:
	_Node_rotto0_entry__Node_rotto:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r14
		push r13
		push r12
		push rbx
		mov r13, rsi
		mov r14, rdi
		jmp _Node_rotto1_whileCondition
	_Node_rotto1_whileCondition:
		mov rsi, r13
		mov rdi, qword [r14 + 88]
		call equ
		mov rdi, rax
		cmp rdi, 1
		je _Node_rotto2_whileAfter
		mov r12, qword [r14 + 88]
		mov rsi, r13
		mov rdi, qword [r12 + 88]
		call equ
		mov rdi, rax
		cmp rdi, 1
		je _Node_rotto3_Ifthen
		mov rsi, r12
		mov rdi, qword [r12 + 88]
		call _Node_judge
		mov rbx, rax
		mov rsi, r14
		mov rdi, r12
		call _Node_judge
		mov rdi, rax
		cmp rbx, rdi
		je _Node_rotto4_Ifthen
		mov rdi, r14
		call _Node_rot
		mov rdi, r14
		call _Node_rot
		jmp _Node_rotto5_Ifafter
	_Node_rotto2_whileAfter:
		mov rdi, r14
		call _Node_push_up
		cmp qword [r14 + 88], 0
		jne _Node_rotto6_Ifthen
		jmp _Node_rotto7_Ifafter
	_Node_rotto3_Ifthen:
		mov rdi, r14
		call _Node_rot
		jmp _Node_rotto1_whileCondition
	_Node_rotto4_Ifthen:
		mov rdi, r12
		call _Node_rot
		mov rdi, r14
		call _Node_rot
		jmp _Node_rotto5_Ifafter
	_Node_rotto5_Ifafter:
		jmp _Node_rotto1_whileCondition
	_Node_rotto6_Ifthen:
		mov rdi, qword [r14 + 88]
		call _Node_push_up
		jmp _Node_rotto7_Ifafter
	_Node_rotto7_Ifafter:
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
_splay_tree_splay_tree:
	_splay_tree_splay_tree0_entry__splay_tree_splay_tree:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		mov rcx, rdi
		mov rdi, 0
		mov qword [rcx], rdi
		mov rax, rcx
		leave
		ret
_splay_tree_build:
	_splay_tree_build0_entry__splay_tree_build:
		push rbp
		mov rbp, rsp
		sub rsp, 32
		push r14
		push r13
		push r12
		push rbx
		push r15
		mov r12, [rel __Static4_id_cnt]
		mov rbx, [rel __Static5_din]
		mov r13, r8
		mov qword [rbp - 8], rcx
		mov qword [rbp - 16], rdx
		mov qword [rbp - 24], rsi
		mov qword [rbp - 32], rdi
		mov rdi, qword [rbp - 8]
		add rdi, r13
		shr rdi, 1
		mov r14, rdi
		mov rdi, 96
		call malloc
		mov rdi, rax
		mov r15, rdi
		inc r12
		mov rdx, r12
		mov rsi, qword [rbx + r14*8]
		mov rdi, r15
		call _Node_init
		mov rsi, r15
		mov rdi, qword [rbp - 24]
		call _Node_copy
		mov rsi, qword [rbp - 16]
		mov rdi, qword [rbp - 24]
		mov qword [rdi + 88], rsi
		mov rdi, qword [rbp - 8]
		cmp rdi, r14
		jl _splay_tree_build1_Ifthen
		jmp _splay_tree_build2_Ifafter
	_splay_tree_build1_Ifthen:
		mov rdi, qword [rbp - 24]
		mov rbx, qword [rdi + 80]
		mov rdi, 96
		call malloc
		mov rdi, rax
		mov qword [rbx], rdi
		mov rdi, qword [rbp - 24]
		mov rdi, qword [rdi + 80]
		inc r12
		mov rdx, r12
		mov rsi, 0
		mov rdi, qword [rdi]
		call _Node_init
		mov rdi, qword [rbp - 24]
		mov rsi, qword [rdi + 80]
		mov rdi, r14
		sub rdi, 1
		mov [rel __Static4_id_cnt], r12
		mov r8, rdi
		mov rdi, qword [rbp - 8]
		mov rcx, rdi
		mov rdi, qword [rbp - 24]
		mov rdx, rdi
		mov rsi, qword [rsi]
		mov rdi, qword [rbp - 32]
		call _splay_tree_build
		mov r12, [rel __Static4_id_cnt]
		jmp _splay_tree_build2_Ifafter
	_splay_tree_build2_Ifafter:
		cmp r13, r14
		jg _splay_tree_build3_Ifthen
		jmp _splay_tree_build4_Ifafter
	_splay_tree_build3_Ifthen:
		mov rdi, qword [rbp - 24]
		mov rbx, qword [rdi + 80]
		mov rdi, 96
		call malloc
		mov rdi, rax
		mov qword [rbx + 8], rdi
		mov rdi, qword [rbp - 24]
		mov rdi, qword [rdi + 80]
		inc r12
		mov rdx, r12
		mov rsi, 0
		mov rdi, qword [rdi + 8]
		call _Node_init
		mov rdi, qword [rbp - 24]
		mov rsi, qword [rdi + 80]
		mov rdi, r14
		add rdi, 1
		mov [rel __Static4_id_cnt], r12
		mov r8, r13
		mov rcx, rdi
		mov rdi, qword [rbp - 24]
		mov rdx, rdi
		mov rsi, qword [rsi + 8]
		mov rdi, qword [rbp - 32]
		call _splay_tree_build
		mov r12, [rel __Static4_id_cnt]
		jmp _splay_tree_build4_Ifafter
	_splay_tree_build4_Ifafter:
		mov rdi, qword [rbp - 24]
		call _Node_push_up
		mov [rel __Static4_id_cnt], r12
		pop r15
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
_splay_tree_build_tree:
	_splay_tree_build_tree0_entry__splay_tree_build_tree:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r14
		push r13
		push r12
		push rbx
		mov rbx, [rel __Static4_id_cnt]
		mov r12, rdx
		mov r13, rsi
		mov r14, rdi
		mov rdi, 96
		call malloc
		mov rdi, rax
		mov qword [r14], rdi
		inc rbx
		mov rdx, rbx
		mov rsi, 0
		mov rdi, qword [r14]
		call _Node_init
		mov [rel __Static4_id_cnt], rbx
		mov r8, r12
		mov rcx, r13
		mov rdx, 0
		mov rsi, qword [r14]
		mov rdi, r14
		call _splay_tree_build
		mov rbx, [rel __Static4_id_cnt]
		mov [rel __Static4_id_cnt], rbx
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
_splay_tree_find:
	_splay_tree_find0_entry__splay_tree_find:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r13
		push r12
		push rbx
		mov rbx, rsi
		mov r13, qword [rdi]
		mov r12, 0
		mov rdi, qword [r13 + 80]
		cmp qword [rdi], 0
		jne _splay_tree_find1_Ifthen
		mov rsi, 1
		jmp _splay_tree_find2_Ifafter
	_splay_tree_find1_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi]
		mov rdi, qword [rdi + 16]
		add rdi, 1
		mov rsi, rdi
		jmp _splay_tree_find2_Ifafter
	_splay_tree_find2_Ifafter:
		jmp _splay_tree_find3_whileCondition
	_splay_tree_find3_whileCondition:
		mov rdi, r12
		add rdi, rsi
		cmp rdi, rbx
		jne _splay_tree_find4_whileBody
		mov rax, r13
		pop rbx
		pop r12
		pop r13
		leave
		ret
	_splay_tree_find4_whileBody:
		mov rdi, r12
		add rdi, rsi
		cmp rbx, rdi
		jl _splay_tree_find5_Ifthen
		mov rdi, r12
		add rdi, rsi
		mov r12, rdi
		mov rdi, qword [r13 + 80]
		mov r13, qword [rdi + 8]
		jmp _splay_tree_find6_Ifafter
	_splay_tree_find5_Ifthen:
		mov rdi, qword [r13 + 80]
		mov r13, qword [rdi]
		jmp _splay_tree_find6_Ifafter
	_splay_tree_find6_Ifafter:
		mov rdi, r13
		call _Node_push_down
		mov rdi, qword [r13 + 80]
		cmp qword [rdi], 0
		jne _splay_tree_find7_Ifthen
		mov rsi, 1
		jmp _splay_tree_find8_Ifafter
	_splay_tree_find7_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rdi, qword [rdi]
		mov rdi, qword [rdi + 16]
		add rdi, 1
		mov rsi, rdi
		jmp _splay_tree_find8_Ifafter
	_splay_tree_find8_Ifafter:
		jmp _splay_tree_find3_whileCondition
_splay_tree_dfs:
	_splay_tree_dfs0_entry__splay_tree_dfs:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r13
		push r12
		push rbx
		mov r12, rsi
		mov r13, rdi
		mov rbx, 0
		jmp _splay_tree_dfs1_forCondition
	_splay_tree_dfs1_forCondition:
		cmp rbx, 2
		jl _splay_tree_dfs2_forBody
		pop rbx
		pop r12
		pop r13
		leave
		ret
	_splay_tree_dfs2_forBody:
		mov rdi, qword [r12 + 80]
		cmp qword [rdi + rbx*8], 0
		jne _splay_tree_dfs3_Ifthen
		jmp _splay_tree_dfs4_Ifafter
	_splay_tree_dfs3_Ifthen:
		mov rdi, qword [r12 + 80]
		mov rsi, qword [rdi + rbx*8]
		mov rdi, r13
		call _splay_tree_dfs
		jmp _splay_tree_dfs4_Ifafter
	_splay_tree_dfs4_Ifafter:
		inc rbx
		jmp _splay_tree_dfs1_forCondition
_splay_tree_del:
	_splay_tree_del0_entry__splay_tree_del:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r13
		push r12
		push rbx
		mov rbx, rsi
		mov r12, rdi
		mov rdi, rdx
		add rdi, 1
		mov rsi, rdi
		mov rdi, r12
		call _splay_tree_find
		mov rdi, rax
		mov r13, rdi
		mov rsi, 0
		mov rdi, r13
		call _Node_rotto
		mov qword [r12], r13
		mov rdi, rbx
		sub rdi, 1
		mov rsi, rdi
		mov rdi, r12
		call _splay_tree_find
		mov rdi, rax
		mov r13, rdi
		mov rsi, qword [r12]
		mov rdi, r13
		call _Node_rotto
		mov rdi, qword [r13 + 80]
		cmp qword [rdi + 8], 0
		jne _splay_tree_del1_Ifthen
		jmp _splay_tree_del2_Ifafter
	_splay_tree_del1_Ifthen:
		mov rdi, qword [r13 + 80]
		mov rsi, qword [rdi + 8]
		mov rdi, r12
		call _splay_tree_dfs
		jmp _splay_tree_del2_Ifafter
	_splay_tree_del2_Ifafter:
		mov rsi, qword [r13 + 80]
		mov rdi, 0
		mov qword [rsi + 8], rdi
		mov rsi, 0
		mov rdi, r13
		call _Node_rotto
		mov qword [r12], r13
		pop rbx
		pop r12
		pop r13
		leave
		ret
_splay_tree_change:
	_splay_tree_change0_entry__splay_tree_change:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r14
		push r13
		push r12
		push rbx
		mov r12, rcx
		mov r13, rsi
		mov r14, rdi
		mov rdi, rdx
		add rdi, 1
		mov rsi, rdi
		mov rdi, r14
		call _splay_tree_find
		mov rdi, rax
		mov rbx, rdi
		mov rsi, 0
		mov rdi, rbx
		call _Node_rotto
		mov qword [r14], rbx
		mov rdi, r13
		sub rdi, 1
		mov rsi, rdi
		mov rdi, r14
		call _splay_tree_find
		mov rdi, rax
		mov rbx, rdi
		mov rsi, qword [r14]
		mov rdi, rbx
		call _Node_rotto
		mov rdi, qword [rbx + 80]
		mov rbx, qword [rdi + 8]
		mov rdi, rbx
		call _Node_push_down
		mov rsi, r12
		mov rdi, rbx
		call _Node_addtag_ch
		mov rdi, rbx
		call _Node_push_down
		mov rsi, 0
		mov rdi, rbx
		call _Node_rotto
		mov qword [r14], rbx
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
_splay_tree_rol:
	_splay_tree_rol0_entry__splay_tree_rol:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r13
		push r12
		push rbx
		mov r12, rsi
		mov r13, rdi
		mov rdi, rdx
		add rdi, 1
		mov rsi, rdi
		mov rdi, r13
		call _splay_tree_find
		mov rdi, rax
		mov rbx, rdi
		mov rsi, 0
		mov rdi, rbx
		call _Node_rotto
		mov qword [r13], rbx
		mov rdi, r12
		sub rdi, 1
		mov rsi, rdi
		mov rdi, r13
		call _splay_tree_find
		mov rdi, rax
		mov rbx, rdi
		mov rsi, qword [r13]
		mov rdi, rbx
		call _Node_rotto
		mov rdi, qword [rbx + 80]
		mov rbx, qword [rdi + 8]
		mov rdi, rbx
		call _Node_push_down
		mov rdi, rbx
		call _Node_addtag_ro
		mov rdi, rbx
		call _Node_push_down
		mov rsi, 0
		mov rdi, rbx
		call _Node_rotto
		mov qword [r13], rbx
		pop rbx
		pop r12
		pop r13
		leave
		ret
_splay_tree_getsum:
	_splay_tree_getsum0_entry__splay_tree_getsum:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r13
		push r12
		push rbx
		mov rbx, rsi
		mov r13, rdi
		mov rdi, rdx
		add rdi, 1
		mov rsi, rdi
		mov rdi, r13
		call _splay_tree_find
		mov rdi, rax
		mov r12, rdi
		mov rsi, 0
		mov rdi, r12
		call _Node_rotto
		mov qword [r13], r12
		mov rdi, rbx
		sub rdi, 1
		mov rsi, rdi
		mov rdi, r13
		call _splay_tree_find
		mov rdi, rax
		mov r12, rdi
		mov rsi, qword [r13]
		mov rdi, r12
		call _Node_rotto
		mov rdi, qword [r12 + 80]
		mov r12, qword [rdi + 8]
		mov rdi, r12
		call _Node_push_down
		mov rbx, qword [r12 + 24]
		mov rsi, 0
		mov rdi, r12
		call _Node_rotto
		mov qword [r13], r12
		mov rax, rbx
		pop rbx
		pop r12
		pop r13
		leave
		ret
_splay_tree_getMax:
	_splay_tree_getMax0_entry__splay_tree_getMax:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push rbx
		mov rbx, rdi
		mov rdi, qword [rbx]
		call _Node_push_down
		mov rdi, qword [rbx]
		mov rax, qword [rdi + 72]
		pop rbx
		leave
		ret
equ:
	equ0_entry_equ:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		mov rcx, rdi
		cmp rcx, 0
		je equ1_Ifthen
		cmp rsi, 0
		je equ3_Ifthen
		mov rdi, qword [rsi]
		cmp qword [rcx], rdi
		je equ4_assignTrue
		mov rax, 0
		jmp equ5_assignafter
	equ1_Ifthen:
		cmp rsi, 0
		je equ2_Ifthen
		mov rax, 0
		jmp equ6_leave_equ
	equ2_Ifthen:
		mov rax, 1
		jmp equ6_leave_equ
	equ3_Ifthen:
		mov rax, 0
		jmp equ6_leave_equ
	equ4_assignTrue:
		mov rax, 1
		jmp equ5_assignafter
	equ5_assignafter:
		jmp equ6_leave_equ
	equ6_leave_equ:
		leave
		ret
merge:
	merge0_entry_merge:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push r14
		push r13
		push r12
		push rbx
		mov r12, rdx
		mov r13, rsi
		mov r14, rdi
		add rdi, 1
		mov rsi, rdi
		mov rdi, r13
		call _splay_tree_find
		mov rdi, rax
		mov rbx, rdi
		mov rsi, 0
		mov rdi, rbx
		call _Node_rotto
		mov qword [r13], rbx
		mov rsi, r14
		mov rdi, r13
		call _splay_tree_find
		mov rdi, rax
		mov rbx, rdi
		mov rsi, qword [r13]
		mov rdi, rbx
		call _Node_rotto
		mov rsi, qword [rbx + 80]
		mov rdi, qword [r12]
		mov qword [rsi + 8], rdi
		mov rdi, qword [r12]
		mov qword [rdi + 88], rbx
		mov rsi, 0
		mov rdi, rbx
		call _Node_rotto
		mov qword [r13], rbx
		pop rbx
		pop r12
		pop r13
		pop r14
		leave
		ret
main:
	main0_entry_main:
		push rbp
		mov rbp, rsp
		sub rsp, 64
		call __init
		mov rbx, [rel __Static6_sp]
		mov rbx, [rel __Static7_dintree]
		mov r14, [rel __Static8_char_ID]
		mov r15, [rel __Static0_INF]
		mov rbx, [rel __Static2_n]
		mov rbx, [rel __Static3_m]
		mov r13, [rel __Static5_din]
		call getInt
		mov rbx, rax
		mov [rel __Static2_n], rbx
		call getInt
		mov rbx, rax
		mov [rel __Static3_m], rbx
		mov rdi, 8
		call malloc
		mov rbx, rax
		mov rdi, rbx
		call _splay_tree_splay_tree
		mov rbx, rax
		mov [rel __Static6_sp], rbx
		mov rdi, 8
		call malloc
		mov rbx, rax
		mov rdi, rbx
		call _splay_tree_splay_tree
		mov rbx, rax
		mov [rel __Static7_dintree], rbx
		mov rbx, r15
		neg rbx
		mov qword [r13], rbx
		mov rbx, [rel __Static2_n]
		mov r12, rbx
		add r12, 1
		mov rbx, r15
		neg rbx
		mov qword [r13 + r12*8], rbx
		mov r12, 1
		jmp main1_forCondition
	main1_forCondition:
		mov rbx, [rel __Static2_n]
		cmp r12, rbx
		jle main2_forBody
		mov rbx, [rel __Static2_n]
		add rbx, 1
		mov rdx, rbx
		mov rsi, 0
		mov rbx, [rel __Static6_sp]
		mov rdi, rbx
		call _splay_tree_build_tree
		mov r12, 1
		jmp main3_forCondition
	main2_forBody:
		call getInt
		mov rbx, rax
		mov qword [r13 + r12*8], rbx
		inc r12
		jmp main1_forCondition
	main3_forCondition:
		mov rbx, [rel __Static3_m]
		cmp r12, rbx
		jle main4_forBody
		mov rax, 0
		mov rbx, [rel __Static6_sp]
		mov rbx, [rel __Static7_dintree]
		mov rbx, [rel __Static2_n]
		mov rbx, [rel __Static3_m]
		leave
		ret
	main4_forBody:
		call getString
		mov rbx, rax
		mov qword [rbp - 8], rbx
		mov rsi, 0
		mov rbx, qword [rbp - 8]
		mov rdi, rbx
		call _string_ord
		mov r15, rax
		mov rsi, 0
		mov rdi, r14
		call _string_ord
		mov rbx, rax
		cmp r15, rbx
		je main5_Ifthen
		jmp main6_Ifafter
	main5_Ifthen:
		call getInt
		mov rbx, rax
		mov qword [rbp - 24], rbx
		call getInt
		mov rbx, rax
		mov qword [rbp - 56], rbx
		mov r15, 1
		jmp main7_forCondition
	main6_Ifafter:
		mov rsi, 0
		mov rbx, qword [rbp - 8]
		mov rdi, rbx
		call _string_ord
		mov r15, rax
		mov rsi, 1
		mov rdi, r14
		call _string_ord
		mov rbx, rax
		cmp r15, rbx
		je main9_Ifthen
		jmp main10_Ifafter
	main7_forCondition:
		mov rbx, qword [rbp - 56]
		cmp r15, rbx
		jle main8_forBody
		mov rbx, qword [rbp - 56]
		mov rdx, rbx
		mov rsi, 1
		mov rbx, [rel __Static7_dintree]
		mov rdi, rbx
		call _splay_tree_build_tree
		mov rbx, qword [rbp - 24]
		mov r15, rbx
		add r15, 1
		mov rbx, [rel __Static7_dintree]
		mov rdx, rbx
		mov rbx, [rel __Static6_sp]
		mov rsi, rbx
		mov rdi, r15
		call merge
		jmp main6_Ifafter
	main8_forBody:
		call getInt
		mov rbx, rax
		mov qword [r13 + r15*8], rbx
		inc r15
		jmp main7_forCondition
	main9_Ifthen:
		call getInt
		mov rbx, rax
		mov qword [rbp - 40], rbx
		call getInt
		mov rbx, rax
		mov rbx, qword [rbp - 40]
		mov r15, rbx
		add r15, 1
		mov rbx, qword [rbp - 40]
		add rbx, rax
		mov rdx, rbx
		mov rsi, r15
		mov rbx, [rel __Static6_sp]
		mov rdi, rbx
		call _splay_tree_del
		jmp main10_Ifafter
	main10_Ifafter:
		mov rsi, 0
		mov rbx, qword [rbp - 8]
		mov rdi, rbx
		call _string_ord
		mov rbx, rax
		cmp rbx, 82
		je main11_Ifthen
		jmp main12_Ifafter
	main11_Ifthen:
		call getInt
		mov rbx, rax
		mov qword [rbp - 64], rbx
		call getInt
		mov rbx, rax
		mov rbx, qword [rbp - 64]
		mov r15, rbx
		add r15, 1
		mov rbx, qword [rbp - 64]
		add rbx, rax
		mov rdx, rbx
		mov rsi, r15
		mov rbx, [rel __Static6_sp]
		mov rdi, rbx
		call _splay_tree_rol
		jmp main12_Ifafter
	main12_Ifafter:
		mov rsi, 0
		mov rbx, qword [rbp - 8]
		mov rdi, rbx
		call _string_ord
		mov rbx, rax
		cmp rbx, 71
		je main13_Ifthen
		jmp main14_Ifafter
	main13_Ifthen:
		call getInt
		mov rbx, rax
		mov qword [rbp - 48], rbx
		call getInt
		mov rbx, rax
		cmp rax, 0
		jg main15_Ifthen
		lea rbx, [rel __Static10_constString1]
		mov rdi, rbx
		call print
		jmp main16_Ifafter
	main14_Ifafter:
		mov rsi, 0
		mov rbx, qword [rbp - 8]
		mov rdi, rbx
		call _string_ord
		mov rbx, rax
		cmp rbx, 77
		je main17_Ifthen
		jmp main18_Ifafter
	main15_Ifthen:
		mov rbx, qword [rbp - 48]
		mov r15, rbx
		add r15, 1
		mov rbx, qword [rbp - 48]
		add rbx, rax
		mov rdx, rbx
		mov rsi, r15
		mov rbx, [rel __Static6_sp]
		mov rdi, rbx
		call _splay_tree_getsum
		mov rbx, rax
		mov rdi, rbx
		call toString
		mov rbx, rax
		mov rdi, rbx
		call println
		jmp main16_Ifafter
	main16_Ifafter:
		jmp main14_Ifafter
	main17_Ifthen:
		mov rsi, 2
		mov rbx, qword [rbp - 8]
		mov rdi, rbx
		call _string_ord
		mov rbx, rax
		cmp rbx, 75
		je main19_Ifthen
		mov rbx, [rel __Static6_sp]
		mov rdi, rbx
		call _splay_tree_getMax
		mov rbx, rax
		mov rdi, rbx
		call toString
		mov r15, rax
		lea rbx, [rel __Static11_constString2]
		mov rsi, rbx
		mov rdi, r15
		call __stradd
		mov rbx, rax
		mov rdi, rbx
		call print
		jmp main20_Ifafter
	main18_Ifafter:
		inc r12
		jmp main3_forCondition
	main19_Ifthen:
		call getInt
		mov rbx, rax
		mov qword [rbp - 32], rbx
		call getInt
		mov rbx, rax
		mov qword [rbp - 16], rbx
		call getInt
		mov rbx, rax
		mov rcx, rbx
		mov rbx, qword [rbp - 32]
		mov rax, rbx
		add rax, 1
		mov rbx, qword [rbp - 32]
		mov r15, rbx
		mov rbx, qword [rbp - 16]
		add r15, rbx
		mov rdx, r15
		mov rsi, rax
		mov rbx, [rel __Static6_sp]
		mov rdi, rbx
		call _splay_tree_change
		jmp main20_Ifafter
	main20_Ifafter:
		jmp main18_Ifafter
__init:
	__init0_initFuncEntry:
		push rbp
		mov rbp, rsp
		sub rsp, 0
		push rbx
		mov rbx, [rel __Static8_char_ID]
		mov rbx, [rel __Static0_INF]
		mov rbx, [rel __Static1_nMax]
		mov rbx, [rel __Static4_id_cnt]
		mov rbx, [rel __Static5_din]
		mov rbx, 1000000000
		mov rdi, 1000000000
		mov [rel __Static0_INF], rdi
		mov rbx, 4000010
		mov rdi, 4000010
		mov [rel __Static1_nMax], rdi
		mov rbx, 0
		mov rdi, 0
		mov [rel __Static4_id_cnt], rdi
		mov rbx, 4000011
		shl rbx, 3
		mov rdi, rbx
		call malloc
		mov rbx, rax
		mov rdi, 4000010
		mov qword [rbx], rdi
		add rbx, 8
		mov [rel __Static5_din], rbx
		lea rbx, [rel __Static9_constString0]
		mov [rel __Static8_char_ID], rbx
		pop rbx
		leave
		ret
