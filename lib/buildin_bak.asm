
default rel

global __string__concat
global __string__equal
global __string__nequal
global __string__less
global __string__lessEqual
global __print
global __println
global __printForInt
global __printlnForInt
global __getString
global __getInt
global __toString
global __class__string__substring
global __class__string__parseInt
global __class__string__ord

extern getchar
extern strlen
extern __isoc99_scanf
extern __stack_chk_fail
extern putchar
extern puts
extern printf
extern strcmp
extern malloc
extern _GLOBAL_OFFSET_TABLE_


SECTION .text

__string__concat:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     rax, qword [rbp-28H]
        mov     rax, qword [rax]
        mov     dword [rbp-10H], eax
        mov     rax, qword [rbp-30H]
        mov     rax, qword [rax]
        mov     dword [rbp-0CH], eax
        mov     eax, dword [rbp-10H]
        lea     edx, [rax+9H]
        mov     eax, dword [rbp-0CH]
        add     eax, edx
        cdqe
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     edx, dword [rbp-10H]
        mov     eax, dword [rbp-0CH]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        mov     qword [rax], rdx
        add     qword [rbp-28H], 8
        add     qword [rbp-30H], 8
        add     qword [rbp-8H], 8
        mov     dword [rbp-1CH], -1
        mov     dword [rbp-18H], 0
        jmp     L_002

L_001:  mov     eax, dword [rbp-18H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-28H]
        add     rax, rdx
        add     dword [rbp-1CH], 1
        mov     edx, dword [rbp-1CH]
        movsxd  rcx, edx
        mov     rdx, qword [rbp-8H]
        add     rdx, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-18H], 1
L_002:  mov     eax, dword [rbp-18H]
        cmp     eax, dword [rbp-10H]
        jl      L_001
        mov     dword [rbp-14H], 0
        jmp     L_004

L_003:  mov     eax, dword [rbp-14H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        add     dword [rbp-1CH], 1
        mov     edx, dword [rbp-1CH]
        movsxd  rcx, edx
        mov     rdx, qword [rbp-8H]
        add     rdx, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-14H], 1
L_004:  mov     eax, dword [rbp-14H]
        cmp     eax, dword [rbp-0CH]
        jl      L_003
        mov     eax, dword [rbp-1CH]
        cdqe
        lea     rdx, [rax+1H]
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        sub     rax, 8
        leave
        ret


__string__equal:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        sete    al
        movzx   eax, al
        leave
        ret


__string__nequal:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setne   al
        movzx   eax, al
        leave
        ret


__string__less:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        shr     eax, 31
        movzx   eax, al
        leave
        ret


__string__lessEqual:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setle   al
        movzx   eax, al
        leave
        ret


__print:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rax
        lea     rdi, [rel L_044]
        mov     eax, 0
        call    printf
        nop
        leave
        ret


__println:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rdi, rax
        call    puts
        nop
        leave
        ret


__printForInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        mov     dword [rbp-44H], edi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        cmp     dword [rbp-44H], 0
        jnz     L_005
        mov     edi, 48
        call    putchar
L_005:  cmp     dword [rbp-44H], 0
        jns     L_006
        neg     dword [rbp-44H]
        mov     edi, 45
        call    putchar
L_006:  mov     dword [rbp-38H], 0
        jmp     L_008

L_007:  mov     esi, dword [rbp-38H]
        lea     eax, [rsi+1H]
        mov     dword [rbp-38H], eax
        mov     ecx, dword [rbp-44H]
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        shl     eax, 2
        add     eax, edx
        add     eax, eax
        sub     ecx, eax
        mov     edx, ecx
        movsxd  rax, esi
        mov     dword [rbp+rax*4-30H], edx
        mov     ecx, dword [rbp-44H]
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        mov     dword [rbp-44H], eax
L_008:  cmp     dword [rbp-44H], 0
        jg      L_007
        mov     eax, dword [rbp-38H]
        sub     eax, 1
        mov     dword [rbp-34H], eax
        jmp     L_010

L_009:  mov     eax, dword [rbp-34H]
        cdqe
        mov     eax, dword [rbp+rax*4-30H]
        add     eax, 48
        mov     edi, eax
        call    putchar
        sub     dword [rbp-34H], 1
L_010:  cmp     dword [rbp-34H], 0
        jns     L_009
        nop
        mov     rax, qword [rbp-8H]


        xor     rax, qword [fs:abs 28H]
        jz      L_011
        call    __stack_chk_fail
L_011:  leave
        ret


__printlnForInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        mov     dword [rbp-44H], edi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        cmp     dword [rbp-44H], 0
        jnz     L_012
        mov     edi, 48
        call    putchar
L_012:  cmp     dword [rbp-44H], 0
        jns     L_013
        neg     dword [rbp-44H]
        mov     edi, 45
        call    putchar
L_013:  mov     dword [rbp-38H], 0
        jmp     L_015

L_014:  mov     esi, dword [rbp-38H]
        lea     eax, [rsi+1H]
        mov     dword [rbp-38H], eax
        mov     ecx, dword [rbp-44H]
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        shl     eax, 2
        add     eax, edx
        add     eax, eax
        sub     ecx, eax
        mov     edx, ecx
        movsxd  rax, esi
        mov     dword [rbp+rax*4-30H], edx
        mov     ecx, dword [rbp-44H]
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        mov     dword [rbp-44H], eax
L_015:  cmp     dword [rbp-44H], 0
        jg      L_014
        mov     eax, dword [rbp-38H]
        sub     eax, 1
        mov     dword [rbp-34H], eax
        jmp     L_017

L_016:  mov     eax, dword [rbp-34H]
        cdqe
        mov     eax, dword [rbp+rax*4-30H]
        add     eax, 48
        mov     edi, eax
        call    putchar
        sub     dword [rbp-34H], 1
L_017:  cmp     dword [rbp-34H], 0
        jns     L_016
        mov     edi, 10
        call    putchar
        nop
        mov     rax, qword [rbp-8H]


        xor     rax, qword [fs:abs 28H]
        jz      L_018
        call    __stack_chk_fail
L_018:  leave
        ret


__getString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, 266
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rax
        lea     rdi, [rel L_044]
        mov     eax, 0
        call    __isoc99_scanf
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rdi, rax
        call    strlen
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-8H]
        leave
        ret


__getInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        call    getchar
        mov     byte [rbp-6H], al
        mov     byte [rbp-5H], 0
        jmp     L_021

L_019:  cmp     byte [rbp-6H], 45
        jnz     L_020
        mov     byte [rbp-5H], 1
L_020:  call    getchar
        mov     byte [rbp-6H], al
L_021:  cmp     byte [rbp-6H], 47
        jle     L_019
        cmp     byte [rbp-6H], 57
        jg      L_019
        movsx   eax, byte [rbp-6H]
        sub     eax, 48
        mov     dword [rbp-4H], eax
        call    getchar
        mov     byte [rbp-6H], al
        jmp     L_023

L_022:  mov     edx, dword [rbp-4H]
        mov     eax, edx
        shl     eax, 2
        add     eax, edx
        add     eax, eax
        mov     edx, eax
        movsx   eax, byte [rbp-6H]
        add     eax, edx
        sub     eax, 48
        mov     dword [rbp-4H], eax
        call    getchar
        mov     byte [rbp-6H], al
L_023:  cmp     byte [rbp-6H], 47
        jle     L_024
        cmp     byte [rbp-6H], 57
        jle     L_022
L_024:  cmp     byte [rbp-5H], 0
        jz      L_025
        mov     eax, dword [rbp-4H]
        neg     eax
        jmp     L_026

L_025:  mov     eax, dword [rbp-4H]
L_026:  leave
        ret


__toString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 96
        mov     dword [rbp-54H], edi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        mov     dword [rbp-44H], 0
        mov     dword [rbp-40H], 0
        cmp     dword [rbp-54H], 0
        jns     L_027
        mov     dword [rbp-44H], 1
        neg     dword [rbp-54H]
L_027:  cmp     dword [rbp-54H], 0
        jnz     L_029
        add     dword [rbp-40H], 1
        mov     eax, dword [rbp-40H]
        cdqe
        mov     dword [rbp+rax*4-30H], 0
        jmp     L_030

L_028:  add     dword [rbp-40H], 1
        mov     ecx, dword [rbp-54H]
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        shl     eax, 2
        add     eax, edx
        add     eax, eax
        sub     ecx, eax
        mov     edx, ecx
        mov     eax, dword [rbp-40H]
        cdqe
        mov     dword [rbp+rax*4-30H], edx
        mov     ecx, dword [rbp-54H]
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        mov     dword [rbp-54H], eax
L_029:  cmp     dword [rbp-54H], 0
        jnz     L_028
L_030:  mov     edx, dword [rbp-40H]
        mov     eax, dword [rbp-44H]
        add     eax, edx
        add     eax, 9
        cdqe
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-38H], rax
        mov     edx, dword [rbp-40H]
        mov     eax, dword [rbp-44H]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-38H]
        mov     qword [rax], rdx
        add     qword [rbp-38H], 8
        mov     edx, dword [rbp-40H]
        mov     eax, dword [rbp-44H]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-38H]
        add     rax, rdx
        mov     byte [rax], 0
        cmp     dword [rbp-44H], 0
        jz      L_031
        mov     rax, qword [rbp-38H]
        mov     byte [rax], 45
L_031:  mov     dword [rbp-3CH], 0
        jmp     L_033

L_032:  mov     eax, dword [rbp-40H]
        sub     eax, dword [rbp-3CH]
        cdqe
        mov     eax, dword [rbp+rax*4-30H]
        lea     ecx, [rax+30H]
        mov     edx, dword [rbp-3CH]
        mov     eax, dword [rbp-44H]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-38H]
        add     rax, rdx
        mov     edx, ecx
        mov     byte [rax], dl
        add     dword [rbp-3CH], 1
L_033:  mov     eax, dword [rbp-3CH]
        cmp     eax, dword [rbp-40H]
        jl      L_032
        mov     rax, qword [rbp-38H]
        sub     rax, 8
        mov     rsi, qword [rbp-8H]


        xor     rsi, qword [fs:abs 28H]
        jz      L_034
        call    __stack_chk_fail
L_034:  leave
        ret


__class__string__substring:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     dword [rbp-1CH], esi
        mov     dword [rbp-20H], edx
        mov     eax, dword [rbp-20H]
        sub     eax, dword [rbp-1CH]
        add     eax, 1
        mov     dword [rbp-0CH], eax
        mov     eax, dword [rbp-0CH]
        add     eax, 9
        cdqe
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     eax, dword [rbp-0CH]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        mov     qword [rax], rdx
        mov     eax, dword [rbp-1CH]
        add     eax, 8
        cdqe
        add     qword [rbp-18H], rax
        add     qword [rbp-8H], 8
        mov     dword [rbp-10H], 0
        jmp     L_036

L_035:  mov     eax, dword [rbp-10H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        mov     edx, dword [rbp-10H]
        movsxd  rcx, edx
        mov     rdx, qword [rbp-8H]
        add     rdx, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-10H], 1
L_036:  mov     eax, dword [rbp-10H]
        cmp     eax, dword [rbp-0CH]
        jl      L_035
        mov     eax, dword [rbp-0CH]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        sub     rax, 8
        leave
        ret


__class__string__parseInt:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        add     qword [rbp-18H], 8
        mov     byte [rbp-9H], 0
        mov     dword [rbp-8H], 0
        jmp     L_038

L_037:  mov     eax, dword [rbp-8H]
        lea     edx, [rax+1H]
        mov     dword [rbp-8H], edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 45
        jnz     L_038
        mov     byte [rbp-9H], 1
L_038:  mov     eax, dword [rbp-8H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 47
        jle     L_037
        mov     eax, dword [rbp-8H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 57
        jg      L_037
        mov     eax, dword [rbp-8H]
        lea     edx, [rax+1H]
        mov     dword [rbp-8H], edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        movsx   eax, al
        sub     eax, 48
        mov     dword [rbp-4H], eax
        jmp     L_040

L_039:  mov     edx, dword [rbp-4H]
        mov     eax, edx
        shl     eax, 2
        add     eax, edx
        add     eax, eax
        mov     ecx, eax
        mov     eax, dword [rbp-8H]
        lea     edx, [rax+1H]
        mov     dword [rbp-8H], edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        movsx   eax, al
        add     eax, ecx
        sub     eax, 48
        mov     dword [rbp-4H], eax
L_040:  mov     eax, dword [rbp-8H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 47
        jle     L_041
        mov     eax, dword [rbp-8H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 57
        jle     L_039
L_041:  cmp     byte [rbp-9H], 0
        jz      L_042
        mov     eax, dword [rbp-4H]
        neg     eax
        jmp     L_043

L_042:  mov     eax, dword [rbp-4H]
L_043:  pop     rbp
        ret


__class__string__ord:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     dword [rbp-0CH], esi
        add     dword [rbp-0CH], 8
        mov     eax, dword [rbp-0CH]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        movzx   eax, byte [rax]
        movsx   eax, al
        pop     rbp
        ret



SECTION .data


SECTION .bss


SECTION .rodata

L_044:
        db 25H, 73H, 00H
