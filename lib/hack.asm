default rel

global _Z3maxii
global _Z3equP4NodeS0_
global _Z5mergeiP10splay_treeS0_
global _Z5printP6string
global _Z7printlnP6string
global _Z9getStringv
global _Z6getIntv
global _Z8toStringi
global LL_nMax
global LL_INF
global LL_char_ID
global LL_dintree
global LL_sp
global LL_din
global LL_id_cnt
global LL_m
global LL_n
global _Z15__lib_getStringv
global _ZN4Node9push_downEv
global _ZN4Node5rottoEPS_
global _ZN10splay_tree5buildEP4NodeS1_ii
global _ZN10splay_tree10build_treeEii
global _ZN10splay_tree3rolEii
global _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
global _Z14__lib_toStringi
global main
global DW.ref.__gxx_personality_v0

extern _ZSt17__throw_bad_allocv
extern _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
extern vsnprintf
extern puts
extern fputs
extern stdout
extern __gxx_personality_v0
extern _Unwind_Resume
extern _ZdlPv
extern _Znwm
extern scanf
extern strlen
extern __stack_chk_fail
extern _ZSt19__throw_logic_errorPKc
extern memcpy
extern _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.33:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30:
        push    r12
        push    rbp
        mov     r12, rsi
        push    rbx
        mov     rbp, rdi
        sub     rsp, 16


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8H], rax
        xor     eax, eax
        test    rsi, rsi
        jnz     L_002
        test    rdx, rdx
        jne     L_007
L_002:  mov     rbx, rdx
        sub     rbx, r12
        cmp     rbx, 15
        mov     qword [rsp], rbx
        ja      L_004
        mov     rdx, qword [rbp]
        cmp     rbx, 1
        mov     rax, rdx
        jnz     L_006
        movzx   eax, byte [r12]
        mov     byte [rdx], al
        mov     rdx, qword [rbp]
L_003:  mov     rax, qword [rsp]
        mov     qword [rbp+8H], rax
        mov     byte [rdx+rax], 0
        mov     rax, qword [rsp+8H]


        xor     rax, qword [fs:abs 28H]
        jnz     L_008
        add     rsp, 16
        pop     rbx
        pop     rbp
        pop     r12
        ret





ALIGN   8
L_004:  xor     edx, edx
        mov     rsi, rsp
        mov     rdi, rbp
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
        mov     rdx, qword [rsp]
        mov     qword [rbp], rax
        mov     qword [rbp+10H], rdx
L_005:  mov     rdx, rbx
        mov     rsi, r12
        mov     rdi, rax
        call    memcpy
        mov     rdx, qword [rbp]
        jmp     L_003





ALIGN   8
L_006:  test    rbx, rbx
        jz      L_003
        jmp     L_005

L_007:  lea     rdi, [rel LC0]
        call    _ZSt19__throw_logic_errorPKc
L_008:  call    __stack_chk_fail




ALIGN   16
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.35:
        push    rbp
        lea     rax, [rdi+10H]
        push    rbx
        mov     rbx, rdi
        mov     rbp, rsi
        sub     rsp, 8
        mov     qword [rdi], rax
        mov     rdi, rsi
        call    strlen
        add     rsp, 8
        lea     rdx, [rbp+rax]
        mov     rsi, rbp
        mov     rdi, rbx
        pop     rbx
        pop     rbp
        jmp     _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30

        nop





ALIGN   16

_ZN10splay_tree3dfsEP4Node.isra.11:
        push    r15
        push    r14
        mov     r15, rdi
        push    r13
        push    r12
        push    rbp
        push    rbx
        xor     ebx, ebx
        sub     rsp, 24
        mov     rax, qword [rsi]
        mov     r12, qword [rax]
        mov     rax, qword [r12+rbx*8]
        test    rax, rax
        jnz     L_011
L_009:  cmp     rbx, 1
        jnz     L_010
        add     rsp, 24
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret






ALIGN   16
L_010:  mov     ebx, 1
        mov     rax, qword [r12+rbx*8]
        test    rax, rax
        jz      L_009
L_011:  mov     rax, qword [rax+28H]
        xor     ebp, ebp
        mov     r14, qword [rax]
        mov     rax, qword [r14+rbp*8]
        test    rax, rax
        jnz     L_013
L_012:  cmp     rbp, 1
        jz      L_009
        mov     ebp, 1
        mov     rax, qword [r14+rbp*8]
        test    rax, rax
        jz      L_012
L_013:  mov     rax, qword [rax+28H]
        xor     r13d, r13d
        mov     rdx, qword [rax]
        mov     rax, qword [rdx+r13*8]
        test    rax, rax
        jnz     L_015
L_014:  cmp     r13, 1
        jz      L_012
        mov     r13d, 1
        mov     rax, qword [rdx+r13*8]
        test    rax, rax
        jz      L_014
L_015:  mov     rax, qword [rax+28H]
        mov     rax, qword [rax]
        mov     rcx, qword [rax]
        test    rcx, rcx
        jnz     L_017
L_016:  mov     rax, qword [rax+8H]
        test    rax, rax
        jz      L_014
        lea     rsi, [rax+28H]
        mov     rdi, r15
        mov     qword [rsp], rdx
        call    _ZN10splay_tree3dfsEP4Node.isra.11
        mov     rdx, qword [rsp]
        jmp     L_014





ALIGN   8
L_017:  lea     rsi, [rcx+28H]
        mov     rdi, r15
        mov     qword [rsp+8H], rax
        mov     qword [rsp], rdx
        call    _ZN10splay_tree3dfsEP4Node.isra.11
        mov     rax, qword [rsp+8H]
        mov     rdx, qword [rsp]
        jmp     L_016

_Z3maxii:
        cmp     edi, esi
        mov     eax, esi
        cmovge  eax, edi
        ret






ALIGN   16

_Z3equP4NodeS0_:
        test    rdi, rdi
        jz      L_019
        xor     eax, eax
        test    rsi, rsi
        jz      L_018
        mov     eax, dword [rsi]
        cmp     dword [rdi], eax
        sete    al
L_018:  DB      0F3H
        ret





ALIGN   8
L_019:  test    rsi, rsi
        sete    al
        ret


        nop

ALIGN   16
_Z5mergeiP10splay_treeS0_:
        push    r13
        push    r12
        mov     r12, rsi
        push    rbp
        push    rbx
        mov     r13, rdx
        mov     ebp, edi
        lea     esi, [rdi+1H]
        sub     rsp, 8
        mov     rbx, qword [r12]
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_020
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_020:  xor     edi, edi
L_021:  add     eax, edi
        cmp     esi, eax
        jz      L_025
L_022:  mov     rdx, qword [rbx+28H]
        mov     rdx, qword [rdx]
        jge     L_046
        mov     rbx, qword [rdx]
L_023:  xor     r9d, r9d
        cmp     dword [rbx+10H], 1
        mov     r8, qword [rbx+28H]
        mov     rdx, qword [r8]
        je      L_033
        cmp     dword [rbx+18H], 1
        je      L_036
L_024:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_021
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, edi
        cmp     esi, eax
        jnz     L_022
L_025:  xor     esi, esi
        mov     rdi, rbx
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [rbx+28H]
        mov     qword [r12], rbx
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_026
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_026:  xor     edi, edi
L_027:  add     eax, edi
        cmp     ebp, eax
        jz      L_031
L_028:  mov     rdx, qword [rbx+28H]
        mov     rdx, qword [rdx]
        jge     L_047
        mov     rbx, qword [rdx]
L_029:  xor     r8d, r8d
        cmp     dword [rbx+10H], 1
        mov     rsi, qword [rbx+28H]
        mov     rdx, qword [rsi]
        je      L_040
        cmp     dword [rbx+18H], 1
        je      L_043
L_030:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_027
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, edi
        cmp     ebp, eax
        jnz     L_028
L_031:  mov     rsi, qword [r12]
        mov     rdi, rbx
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [rbx+28H]
        mov     rdx, qword [r13]
        mov     rdi, rbx
        xor     esi, esi
        mov     rax, qword [rax]
        mov     qword [rax+8H], rdx
        mov     rax, qword [r13]
        mov     qword [rax+30H], rbx
        call    _ZN4Node5rottoEPS_
        mov     qword [r12], rbx
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret





ALIGN   8
L_032:  mov     r9d, 1
L_033:  mov     rax, qword [rdx+r9*8]
        test    rax, rax
        jz      L_035
        mov     ecx, dword [rbx+14H]
        mov     r10d, dword [rax+8H]
        imul    r10d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r10d
        js      L_048
        mov     dword [rax+1CH], r10d
        mov     dword [rax+20H], r10d
        mov     dword [rax+24H], r10d
L_034:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_035:  cmp     r9, 1
        jnz     L_032
        cmp     dword [rbx+18H], 1
        mov     dword [rbx+10H], 0
        mov     rdx, qword [r8]
        jne     L_024
L_036:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_037
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_037:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_038
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_038:  mov     dword [rbx+18H], 0
        jmp     L_024





ALIGN   8
L_039:  mov     r8d, 1
L_040:  mov     rax, qword [rdx+r8*8]
        test    rax, rax
        jz      L_042
        mov     ecx, dword [rbx+14H]
        mov     r9d, dword [rax+8H]
        imul    r9d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r9d
        js      L_049
        mov     dword [rax+1CH], r9d
        mov     dword [rax+20H], r9d
        mov     dword [rax+24H], r9d
L_041:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_042:  cmp     r8, 1
        jnz     L_039
        cmp     dword [rbx+18H], 1
        mov     dword [rbx+10H], 0
        mov     rdx, qword [rsi]
        jne     L_030
L_043:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_044
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rsi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rsi
        mov     qword [rcx], r8
        mov     esi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], ecx
L_044:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_045
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rsi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rsi
        mov     qword [rcx], r8
        mov     esi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], ecx
L_045:  mov     dword [rbx+18H], 0
        jmp     L_030

L_046:  mov     rbx, qword [rdx+8H]
        mov     edi, eax
        jmp     L_023





ALIGN   8
L_047:  mov     rbx, qword [rdx+8H]
        mov     edi, eax
        jmp     L_029





ALIGN   8
L_048:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_034





ALIGN   8
L_049:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_041






ALIGN   8

_Z5printP6string:
        mov     rsi, qword [rel stdout]
        mov     rdi, qword [rdi]
        jmp     fputs


        nop

ALIGN   16
_Z7printlnP6string:
        mov     rdi, qword [rdi]
        jmp     puts






ALIGN   16

_Z9getStringv:
        jmp     _Z15__lib_getStringv


        nop





ALIGN   16

_Z6getIntv:
        sub     rsp, 24
        lea     rdi, [rel LC2]


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8H], rax
        xor     eax, eax
        lea     rsi, [rsp+4H]
        call    scanf
        mov     rdx, qword [rsp+8H]


        xor     rdx, qword [fs:abs 28H]
        mov     eax, dword [rsp+4H]
        jnz     L_050
        add     rsp, 24
        ret


L_050:
        call    __stack_chk_fail





ALIGN   16

_Z8toStringi:
        push    r12
        push    rbp
        lea     rcx, [rel LC2]
        push    rbx
        mov     r8d, edi
        mov     edx, 16
        sub     rsp, 48

        mov     rsi, qword [rel vsnprintf+$+??]


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+28H], rax
        xor     eax, eax
        mov     rbx, rsp
        mov     rdi, rbx
        call    _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
        mov     edi, 32
        call    _Znwm
        mov     rsi, qword [rsp]
        mov     rdx, qword [rsp+8H]
        mov     rbp, rax
        lea     rax, [rax+10H]
        mov     rdi, rbp
        mov     qword [rbp], rax
        add     rdx, rsi
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30
        mov     rdi, qword [rsp]
        add     rbx, 16
        cmp     rdi, rbx
        jz      L_051
        call    _ZdlPv
L_051:  mov     rcx, qword [rsp+28H]


        xor     rcx, qword [fs:abs 28H]
        mov     rax, rbp
        jnz     L_052
        add     rsp, 48
        pop     rbx
        pop     rbp
        pop     r12
        ret

L_052:
        call    __stack_chk_fail
        mov     r12, rax
        mov     rdi, rbp
        mov     rbp, r12
        call    _ZdlPv
L_053:  mov     rdi, qword [rsp]
        add     rbx, 16
        cmp     rdi, rbx
        jz      L_054
        call    _ZdlPv
L_054:  mov     rdi, rbp
        call    _Unwind_Resume
        mov     rbp, rax
        jmp     L_053


SECTION .data   align=4

LL_nMax:
        dd 003D090AH

LL_INF: dd 3B9ACA00H


SECTION .bss    align=8

LL_char_ID:
        resq    1

LL_dintree:
        resq    1

LL_sp:  resq    1

LL_din: resq    1

LL_id_cnt:
        resd    1

LL_m:   resd    1

LL_n:   resd    1


SECTION .rodata.str1.8 align=8

LC0:
        db 62H, 61H, 73H, 69H, 63H, 5FH, 73H, 74H
        db 72H, 69H, 6EH, 67H, 3AH, 3AH, 5FH, 4DH
        db 5FH, 63H, 6FH, 6EH, 73H, 74H, 72H, 75H
        db 63H, 74H, 20H, 6EH, 75H, 6CH, 6CH, 20H
        db 6EH, 6FH, 74H, 20H, 76H, 61H, 6CH, 69H
        db 64H, 00H


SECTION .rodata._Z15__lib_getStringv.str1.1 

LC1:
        db 25H, 73H, 00H


SECTION .text._Z15__lib_getStringv 6

_Z15__lib_getStringv:
        push    rbp
        push    rbx
        lea     rdi, [rel LC1]
        sub     rsp, 1048
        mov     rbp, rsp


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+408H], rax
        xor     eax, eax
        mov     rsi, rbp
        call    scanf
        mov     edi, 32
        call    _Znwm
        mov     rbx, rax
        lea     rax, [rax+10H]
        mov     rdx, rbp
        mov     qword [rbx], rax
L_055:  mov     ecx, dword [rdx]
        add     rdx, 4
        lea     eax, [rcx-1010101H]
        not     ecx
        and     eax, ecx
        and     eax, 80808080H
        jz      L_055
        mov     ecx, eax
        mov     rdi, rbx
        shr     ecx, 16
        test    eax, 8080H
        cmove   eax, ecx
        lea     rcx, [rdx+2H]
        mov     esi, eax
        cmove   rdx, rcx
        add     sil, al
        mov     rsi, rbp
        sbb     rdx, 3
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30
        mov     rsi, qword [rsp+408H]


        xor     rsi, qword [fs:abs 28H]
        mov     rax, rbx
        jnz     L_056
        add     rsp, 1048
        pop     rbx
        pop     rbp
        ret


L_056:
        call    __stack_chk_fail
        mov     rbp, rax
        mov     rdi, rbx
        call    _ZdlPv
        mov     rdi, rbp

        call    _Unwind_Resume


SECTION .gcc_except_table._Z15__lib_getStringv 

        db 0FFH, 0FFH, 01H, 0FH, 29H, 0FH, 00H, 00H
        db 80H, 01H, 05H, 0AAH, 01H, 00H, 0B8H, 01H
        db 05H, 00H, 00H


SECTION .text._ZN4Node9push_downEv 6

_ZN4Node9push_downEv:
        cmp     dword [rdi+10H], 1
        jz      L_061
L_057:  cmp     dword [rdi+18H], 1
        jz      L_058
        DB      0F3H
        ret





ALIGN   8
L_058:  mov     rax, qword [rdi+28H]
        mov     rcx, qword [rax]
        mov     rax, qword [rcx]
        test    rax, rax
        jz      L_059
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rsi, qword [rdx]
        mov     r8, qword [rdx+8H]
        mov     qword [rdx+8H], rsi
        mov     qword [rdx], r8
        mov     esi, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], edx
L_059:  mov     rax, qword [rcx+8H]
        test    rax, rax
        jz      L_060
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rcx, qword [rdx]
        mov     rsi, qword [rdx+8H]
        mov     qword [rdx+8H], rcx
        mov     qword [rdx], rsi
        mov     ecx, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], edx
L_060:  mov     dword [rdi+18H], 0
        ret





ALIGN   8
L_061:  mov     rax, qword [rdi+28H]
        xor     ecx, ecx
        mov     r8, qword [rax]
L_062:  mov     rax, qword [r8+rcx*8]
        test    rax, rax
        jz      L_064
        mov     edx, dword [rdi+14H]
        mov     esi, dword [rax+8H]
        imul    esi, edx
        test    edx, edx
        mov     dword [rax+4H], edx
        mov     dword [rax+0CH], esi
        js      L_066
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], esi
        mov     dword [rax+24H], esi
L_063:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], edx
L_064:  cmp     rcx, 1
        jnz     L_065
        mov     dword [rdi+10H], 0
        jmp     L_057





ALIGN   8
L_065:  mov     ecx, 1
        jmp     L_062






ALIGN   16
L_066:  mov     dword [rax+1CH], edx
        mov     dword [rax+20H], edx
        mov     dword [rax+24H], edx
        jmp     L_063



SECTION .text._ZN4Node5rottoEPS_ 6

_ZN4Node5rottoEPS_:
        push    r14
        push    r13
        xor     r8d, r8d
        push    r12
        push    rbp
        push    rbx
        mov     rax, qword [rdi+30H]
        test    rax, rax
        mov     rdx, rax
        je      L_091




ALIGN   8
L_067:  test    rsi, rsi
        je      L_107
        mov     ebx, dword [rax]
        cmp     dword [rsi], ebx
        je      L_092
L_068:  mov     rcx, qword [rax+30H]
        test    rcx, rcx
        je      L_101
        mov     ebx, dword [rsi]
        cmp     dword [rcx], ebx
        je      L_108
L_069:  mov     r9, qword [rcx+28H]
        mov     r11, qword [r9]
        mov     rbx, qword [r11]
        test    rbx, rbx
        je      L_103
        mov     r12d, dword [rbx]
        cmp     r12d, dword [rax]
        mov     r9, qword [rax+28H]
        je      L_114
        mov     r9, qword [r9]
        mov     r10, qword [r9]
        test    r10, r10
        jz      L_071
        mov     r14d, dword [r10]
        cmp     dword [rdi], r14d
        je      L_104
L_070:  test    rbx, rbx
        jz      L_072
        mov     r12d, dword [rbx]




ALIGN   8
L_071:  cmp     r12d, dword [rax]
        je      L_113
L_072:  lea     rdx, [r11+8H]
L_073:  mov     qword [rdx], r10
        mov     qword [r9], rcx
        mov     rdx, qword [rdx]
        test    rdx, rdx
        jz      L_074
        mov     qword [rdx+30H], rcx
L_074:  mov     rdx, qword [rcx+30H]
        mov     qword [rax+30H], rdx
        mov     qword [rcx+30H], rax
        mov     rdx, qword [rax+30H]
        test    rdx, rdx
        jz      L_077
        mov     rdx, qword [rdx+28H]
        mov     rdx, qword [rdx]
        mov     r9, qword [rdx]
        test    r9, r9
        jz      L_075
        mov     ebx, dword [rcx]
        cmp     dword [r9], ebx
        jz      L_076
L_075:  add     rdx, 8
L_076:  mov     qword [rdx], rax
L_077:  mov     rdx, qword [r11]
        mov     eax, dword [rcx+4H]
        mov     dword [rcx+8H], 1
        mov     r9, qword [r11+8H]
        test    rdx, rdx
        mov     dword [rcx+0CH], eax
        je      L_131
        mov     ebx, dword [rdx+8H]
        mov     r11d, dword [rdx+0CH]
        lea     r10d, [rbx+1H]
        add     r11d, eax
        test    r9, r9
        mov     dword [rcx+0CH], r11d
        mov     dword [rcx+8H], r10d
        je      L_132
        add     r11d, dword [r9+0CH]
        add     r10d, dword [r9+8H]
        mov     dword [rcx+20H], eax
        mov     ebx, dword [rdx+20H]
        mov     dword [rcx+1CH], eax
        mov     ebp, dword [rdx+1CH]
        mov     dword [rcx+24H], eax
        mov     dword [rcx+0CH], r11d
        mov     r12d, dword [rdx+0CH]
        mov     r11d, r8d
        mov     dword [rcx+8H], r10d
        mov     dword [rcx+1CH], ebp
        add     r12d, eax
        test    ebx, ebx
        cmovns  r11d, dword [rdx+20H]
        add     r11d, eax
L_078:  mov     r10d, dword [r9+1CH]
        add     r11d, dword [r9+0CH]
        mov     ebx, dword [r9+20H]
        test    r10d, r10d
        mov     r10d, r8d
        cmovns  r10d, dword [r9+1CH]
        add     r10d, r12d
        cmp     r10d, ebp
        cmovl   r10d, ebp
        cmp     ebx, r11d
        cmovge  r11d, ebx
        test    rdx, rdx
        mov     dword [rcx+1CH], r10d
        mov     dword [rcx+20H], r11d
        je      L_133
        cmp     dword [rdx+24H], eax
        mov     r10d, eax
        mov     r14d, dword [rdx+20H]
        cmovge  r10d, dword [rdx+24H]
        mov     ebx, r8d
        mov     dword [rcx+24H], r10d
        cmp     dword [r9+24H], r10d
        cmovge  r10d, dword [r9+24H]
        test    r14d, r14d
        cmovns  ebx, dword [rdx+20H]
        add     eax, ebx
L_079:  mov     r13d, dword [r9+1CH]
        mov     edx, r8d
        test    r13d, r13d
        cmovns  edx, dword [r9+1CH]
        add     eax, edx
L_080:  mov     rdx, qword [rdi+30H]
        cmp     eax, r10d
        cmovl   eax, r10d
        mov     dword [rcx+24H], eax
        mov     rax, qword [rdx+28H]
        mov     r10, qword [rax]
        mov     rax, qword [r10]
        test    rax, rax
        jz      L_081
        mov     ebx, dword [rdi]
        cmp     dword [rax], ebx
        je      L_134
L_081:  lea     rcx, [r10+8H]
        xor     eax, eax
L_082:  mov     r9, qword [rdi+28H]
        add     rax, qword [r9]
        mov     r9, qword [rax]
        mov     qword [rcx], r9
        mov     qword [rax], rdx
        mov     rax, qword [rcx]
        test    rax, rax
        jz      L_083
        mov     qword [rax+30H], rdx
L_083:  mov     rax, qword [rdx+30H]
        mov     qword [rdi+30H], rax
        mov     qword [rdx+30H], rdi
        mov     rax, qword [rdi+30H]
        test    rax, rax
        jz      L_087
L_084:  mov     rax, qword [rax+28H]
        mov     rax, qword [rax]
        mov     rcx, qword [rax]
        test    rcx, rcx
        jz      L_085
        mov     ebx, dword [rdx]
        cmp     dword [rcx], ebx
        jz      L_086
L_085:  add     rax, 8
L_086:  mov     qword [rax], rdi
        mov     rax, qword [rdi+30H]
L_087:  mov     r9, qword [r10]
        mov     ecx, dword [rdx+4H]
        mov     dword [rdx+8H], 1
        mov     r10, qword [r10+8H]
        test    r9, r9
        mov     dword [rdx+0CH], ecx
        je      L_102
        mov     ebx, dword [r9+8H]
        lea     r11d, [rbx+1H]
        mov     dword [rdx+8H], r11d
        mov     ebx, dword [r9+0CH]
        add     ebx, ecx
        test    r10, r10
        mov     dword [rdx+0CH], ebx
        je      L_105
        add     r11d, dword [r10+8H]
        mov     dword [rdx+8H], r11d
        add     ebx, dword [r10+0CH]
        mov     dword [rdx+1CH], ecx
        mov     dword [rdx+20H], ecx
        mov     dword [rdx+24H], ecx
        mov     dword [rdx+0CH], ebx
        mov     r12d, dword [r9+1CH]
        mov     ebx, r8d
        mov     dword [rdx+1CH], r12d
        mov     r13d, dword [r9+0CH]
        mov     r14d, dword [r9+20H]
        add     r13d, ecx
        test    r14d, r14d
        cmovns  ebx, dword [r9+20H]
        add     ebx, ecx
L_088:  mov     r14d, dword [r10+1CH]
        add     ebx, dword [r10+0CH]
        mov     r11d, r8d
        mov     ebp, dword [r10+20H]
        test    r14d, r14d
        cmovns  r11d, dword [r10+1CH]
        add     r11d, r13d
        cmp     r11d, r12d
        cmovl   r11d, r12d
        cmp     ebp, ebx
        cmovge  ebx, ebp
        test    r9, r9
        mov     dword [rdx+1CH], r11d
        mov     dword [rdx+20H], ebx
        je      L_106
        cmp     dword [r9+24H], ecx
        mov     r11d, ecx
        cmovge  r11d, dword [r9+24H]
        mov     dword [rdx+24H], r11d
        mov     ebx, dword [r9+20H]
        cmp     dword [r10+24H], r11d
        cmovge  r11d, dword [r10+24H]
        test    ebx, ebx
        mov     ebx, r8d
        cmovns  ebx, dword [r9+20H]
        add     ecx, ebx
L_089:  mov     r9d, dword [r10+1CH]
        test    r9d, r9d
        mov     r9d, r8d
        cmovns  r9d, dword [r10+1CH]
        add     ecx, r9d
L_090:  cmp     ecx, r11d
        cmovl   ecx, r11d
        test    rax, rax
        mov     dword [rdx+24H], ecx
        mov     rdx, rax
        jne     L_067
L_091:  test    rsi, rsi
        jne     L_068
L_092:  mov     rcx, qword [rdi+28H]
        mov     edx, dword [rdi+4H]
        mov     dword [rdi+8H], 1
        mov     rsi, qword [rcx]
        mov     dword [rdi+0CH], edx
        mov     rcx, qword [rsi]
        mov     rsi, qword [rsi+8H]
        test    rcx, rcx
        je      L_141
        mov     ebx, dword [rcx+8H]
        mov     r9d, dword [rcx+0CH]
        lea     r8d, [rbx+1H]
        add     r9d, edx
        test    rsi, rsi
        mov     dword [rdi+0CH], r9d
        mov     dword [rdi+8H], r8d
        je      L_137
        add     r9d, dword [rsi+0CH]
        add     r8d, dword [rsi+8H]
        mov     dword [rdi+20H], edx
        mov     ebp, dword [rcx+20H]
        mov     dword [rdi+1CH], edx
        mov     r10d, dword [rcx+1CH]
        mov     dword [rdi+24H], edx
        mov     dword [rdi+0CH], r9d
        mov     ebx, dword [rcx+0CH]
        mov     dword [rdi+8H], r8d
        mov     r8d, 0
        mov     dword [rdi+1CH], r10d
        add     ebx, edx
        test    ebp, ebp
        cmovns  r8d, dword [rcx+20H]
        add     r8d, edx
L_093:  mov     r14d, dword [rsi+1CH]
        add     r8d, dword [rsi+0CH]
        mov     r9d, 0
        mov     r11d, dword [rsi+20H]
        test    r14d, r14d
        cmovns  r9d, dword [rsi+1CH]
        add     r9d, ebx
L_094:  cmp     r9d, r10d
        cmovl   r9d, r10d
        cmp     r8d, r11d
        cmovl   r8d, r11d
        test    rcx, rcx
        mov     dword [rdi+1CH], r9d
        mov     dword [rdi+20H], r8d
        je      L_140
        cmp     dword [rcx+24H], edx
        mov     r8d, edx
        cmovge  r8d, dword [rcx+24H]
        test    rsi, rsi
        mov     dword [rdi+24H], r8d
        je      L_142
        mov     r9d, dword [rsi+24H]
        mov     ebp, dword [rcx+20H]
        cmp     r8d, r9d
        cmovl   r8d, r9d
        test    ebp, ebp
        mov     r9d, 0
        cmovns  r9d, dword [rcx+20H]
        add     edx, r9d
L_095:  mov     r13d, dword [rsi+1CH]
        mov     ecx, 0
        test    r13d, r13d
        cmovns  ecx, dword [rsi+1CH]
        add     edx, ecx
L_096:  cmp     edx, r8d
        cmovl   edx, r8d
        test    rax, rax
        mov     dword [rdi+24H], edx
        je      L_100
        mov     rcx, qword [rax+28H]
        mov     edx, dword [rax+4H]
        mov     dword [rax+8H], 1
        mov     rsi, qword [rcx]
        mov     dword [rax+0CH], edx
        mov     rcx, qword [rsi]
        test    rcx, rcx
        je      L_143
        mov     edi, dword [rcx+8H]
        mov     rsi, qword [rsi+8H]
        add     edi, 1
        mov     dword [rax+8H], edi
        mov     edi, dword [rcx+0CH]
        add     edi, edx
        test    rsi, rsi
        mov     dword [rax+0CH], edi
        je      L_144
        mov     edi, dword [rsi+8H]
        add     dword [rax+8H], edi
        mov     edi, dword [rsi+0CH]
        add     dword [rax+0CH], edi
        mov     edi, 0
        mov     dword [rax+20H], edx
        mov     r11d, dword [rcx+0CH]
        mov     r12d, dword [rcx+20H]
        add     r11d, edx
        mov     dword [rax+1CH], edx
        test    r12d, r12d
        cmovns  edi, dword [rcx+20H]
        mov     r10d, dword [rcx+1CH]
        mov     dword [rax+24H], edx
        mov     dword [rax+1CH], r10d
        add     edi, edx
L_097:  add     edi, dword [rsi+0CH]
        mov     r9d, dword [rsi+20H]
        mov     ebp, dword [rsi+1CH]
        cmp     edi, r9d
        cmovl   edi, r9d
        xor     r9d, r9d
        test    ebp, ebp
        mov     r8d, r9d
        cmovns  r8d, dword [rsi+1CH]
        mov     dword [rax+20H], edi
        add     r8d, r11d
        cmp     r8d, r10d
        cmovl   r8d, r10d
        test    rcx, rcx
        mov     dword [rax+1CH], r8d
        je      L_147
        cmp     dword [rcx+24H], edx
        mov     edi, edx
        mov     r10d, dword [rcx+20H]
        cmovge  edi, dword [rcx+24H]
        mov     dword [rax+24H], edi
        cmp     dword [rsi+24H], edi
        cmovge  edi, dword [rsi+24H]
        test    r10d, r10d
        cmovns  r9d, dword [rcx+20H]
        add     edx, r9d
L_098:  mov     ebx, dword [rsi+1CH]
        mov     ecx, 0
        test    ebx, ebx
        cmovns  ecx, dword [rsi+1CH]
        add     edx, ecx
L_099:  cmp     edx, edi
        cmovl   edx, edi
        mov     dword [rax+24H], edx
L_100:  pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        ret





ALIGN   16
L_101:


        mov     rax, qword [abs 28H]
        ud2





ALIGN   8
L_102:  test    r10, r10
        je      L_130
        mov     ebx, dword [r10+8H]
        mov     r12d, ecx
        mov     r13d, ecx
        lea     r11d, [rbx+1H]
        mov     ebx, ecx
        mov     dword [rdx+8H], r11d
        mov     r11d, dword [r10+0CH]
        mov     dword [rdx+1CH], ecx
        mov     dword [rdx+20H], ecx
        mov     dword [rdx+24H], ecx
        add     r11d, ecx
        mov     dword [rdx+0CH], r11d
        jmp     L_088






ALIGN   16
L_103:  mov     r9, qword [rax+28H]
        mov     r9, qword [r9]
        mov     r10, qword [r9]
        test    r10, r10
        je      L_072
        mov     r14d, dword [r10]
        cmp     dword [rdi], r14d
        jne     L_070
L_104:  mov     rbp, r9
        mov     ecx, 8
        jmp     L_116





ALIGN   8
L_105:  mov     dword [rdx+1CH], ecx
        mov     dword [rdx+20H], ecx
        mov     r10d, r8d
        mov     dword [rdx+24H], ecx
        mov     r13d, dword [r9+20H]
        mov     r11d, dword [r9+0CH]
        mov     ebx, dword [r9+1CH]
        test    r13d, r13d
        cmovns  r10d, dword [r9+20H]
        add     r11d, ecx
        add     r10d, ecx
        cmp     r11d, ebx
        cmovl   r11d, ebx
        cmp     ecx, r10d
        mov     ebx, r8d
        cmovge  r10d, ecx
        mov     dword [rdx+1CH], r11d
        mov     r11d, ecx
        mov     dword [rdx+20H], r10d
        cmp     dword [r9+24H], ecx
        cmovge  r11d, dword [r9+24H]
        mov     dword [rdx+24H], r11d
        mov     r14d, dword [r9+20H]
        test    r14d, r14d
        cmovns  ebx, dword [r9+20H]
        add     ecx, ebx
        jmp     L_090





ALIGN   8
L_106:  mov     r11d, dword [rdx+24H]
        cmp     dword [r10+24H], r11d
        cmovge  r11d, dword [r10+24H]
        jmp     L_089





ALIGN   8
L_107:  mov     rcx, qword [rax+30H]
        test    rcx, rcx
        jne     L_069
L_108:  mov     rcx, qword [rax+28H]
        mov     r10, qword [rcx]
        mov     rcx, qword [r10]
        test    rcx, rcx
        jz      L_109
        mov     ebx, dword [rdi]
        cmp     dword [rcx], ebx
        je      L_135
L_109:  lea     r9, [r10+8H]
        xor     ecx, ecx
L_110:  mov     r11, qword [rdi+28H]
        add     rcx, qword [r11]
        mov     r11, qword [rcx]
        mov     qword [r9], r11
        mov     qword [rcx], rax
        mov     rcx, qword [r9]
        test    rcx, rcx
        jz      L_112
L_111:  mov     qword [rcx+30H], rax
L_112:  mov     rcx, qword [rax+30H]
        mov     qword [rdi+30H], rcx
        mov     qword [rax+30H], rdi
        mov     rax, qword [rdi+30H]
        test    rax, rax
        jne     L_084
        jmp     L_087






ALIGN   16
L_113:  mov     r10, qword [r9+8H]
        mov     rdx, r11
        add     r9, 8
        jmp     L_073

L_114:  mov     rbp, qword [r9]
        mov     r10, qword [rbp]
        test    r10, r10
        jz      L_115
        mov     ebx, dword [r10]
        cmp     dword [rdi], ebx
        jnz     L_115
        cmp     r12d, dword [rax]
        mov     r9, rbp
        jne     L_072
        jmp     L_113





ALIGN   8
L_115:  lea     r9, [rbp+8H]
        xor     ecx, ecx
L_116:  mov     r10, qword [rdi+28H]
        mov     rbx, qword [r10]
        add     rcx, rbx
        mov     r10, qword [rcx]
        mov     qword [r9], r10
        mov     qword [rcx], rax
        mov     rcx, qword [r9]
        test    rcx, rcx
        jz      L_117
        mov     qword [rcx+30H], rax
L_117:  mov     rcx, qword [rax+30H]
        mov     qword [rdi+30H], rcx
        mov     qword [rax+30H], rdi
        mov     rax, qword [rdi+30H]
        test    rax, rax
        jz      L_120
        mov     rax, qword [rax+28H]
        mov     rax, qword [rax]
        mov     rcx, qword [rax]
        test    rcx, rcx
        jz      L_118
        mov     r14d, dword [rdx]
        cmp     dword [rcx], r14d
        jz      L_119
L_118:  add     rax, 8
L_119:  mov     qword [rax], rdi
        mov     rax, qword [rdi+30H]
L_120:  mov     r9, qword [rbp]
        mov     ecx, dword [rdx+4H]
        mov     dword [rdx+8H], 1
        mov     r10, qword [rbp+8H]
        test    r9, r9
        mov     dword [rdx+0CH], ecx
        je      L_126
        mov     r14d, dword [r9+8H]
        mov     ebp, dword [r9+0CH]
        lea     r11d, [r14+1H]
        add     ebp, ecx
        test    r10, r10
        mov     dword [rdx+0CH], ebp
        mov     dword [rdx+8H], r11d
        je      L_128
        add     r11d, dword [r10+8H]
        add     ebp, dword [r10+0CH]
        mov     dword [rdx+20H], ecx
        mov     dword [rdx+1CH], ecx
        mov     r13d, dword [r9+1CH]
        mov     dword [rdx+24H], ecx
        mov     dword [rdx+0CH], ebp
        mov     dword [rdx+8H], r11d
        mov     ebp, r8d
        mov     r14d, dword [r9+0CH]
        mov     r11d, dword [r9+20H]
        mov     dword [rdx+1CH], r13d
        add     r14d, ecx
        test    r11d, r11d
        cmovns  ebp, dword [r9+20H]
        add     ebp, ecx
L_121:  mov     r11d, dword [r10+1CH]
        add     ebp, dword [r10+0CH]
        mov     r12d, dword [r10+20H]
        test    r11d, r11d
        mov     r11d, r8d
        cmovns  r11d, dword [r10+1CH]
        add     r11d, r14d
        cmp     r11d, r13d
        cmovl   r11d, r13d
        cmp     r12d, ebp
        cmovge  ebp, r12d
        test    r9, r9
        mov     dword [rdx+1CH], r11d
        mov     dword [rdx+20H], ebp
        je      L_129
        cmp     dword [r9+24H], ecx
        mov     r11d, ecx
        mov     ebp, dword [r9+20H]
        cmovge  r11d, dword [r9+24H]
        mov     r14d, r8d
        mov     dword [rdx+24H], r11d
        cmp     dword [r10+24H], r11d
        cmovge  r11d, dword [r10+24H]
        test    ebp, ebp
        cmovns  r14d, dword [r9+20H]
        add     ecx, r14d
L_122:  mov     r9d, dword [r10+1CH]
        test    r9d, r9d
        mov     r9d, r8d
        cmovns  r9d, dword [r10+1CH]
        add     ecx, r9d
L_123:  cmp     ecx, r11d
        cmovl   ecx, r11d
        mov     dword [rdx+24H], ecx
        mov     rcx, qword [rax+28H]
        mov     rdx, rax
        mov     r10, qword [rcx]
        mov     rcx, qword [r10]
        test    rcx, rcx
        jz      L_124
        mov     r14d, dword [rdi]
        cmp     dword [rcx], r14d
        jz      L_127
L_124:  lea     rcx, [r10+8H]
L_125:  mov     r9, qword [rbx]
        mov     qword [rcx], r9
        mov     qword [rbx], rax
        mov     rcx, qword [rcx]
        test    rcx, rcx
        jne     L_111
        jmp     L_112





ALIGN   8
L_126:  test    r10, r10
        je      L_136
        mov     r14d, dword [r10+8H]
        mov     r13d, ecx
        mov     ebp, ecx
        lea     r11d, [r14+1H]
        mov     r14d, ecx
        mov     dword [rdx+8H], r11d
        mov     r11d, dword [r10+0CH]
        mov     dword [rdx+1CH], ecx
        mov     dword [rdx+20H], ecx
        mov     dword [rdx+24H], ecx
        add     r11d, ecx
        mov     dword [rdx+0CH], r11d
        jmp     L_121






ALIGN   16
L_127:  add     rbx, 8
        mov     rcx, r10
        jmp     L_125





ALIGN   8
L_128:  mov     dword [rdx+20H], ecx
        mov     ebp, dword [r9+20H]
        mov     r10d, r8d
        mov     r11d, dword [r9+0CH]
        mov     dword [rdx+1CH], ecx
        mov     r14d, r8d
        mov     dword [rdx+24H], ecx
        test    ebp, ebp
        cmovns  r10d, dword [r9+20H]
        mov     ebp, dword [r9+1CH]
        add     r11d, ecx
        add     r10d, ecx
        cmp     r11d, ebp
        cmovl   r11d, ebp
        cmp     ecx, r10d
        cmovge  r10d, ecx
        cmp     dword [r9+24H], ecx
        mov     dword [rdx+1CH], r11d
        mov     dword [rdx+20H], r10d
        mov     r12d, dword [r9+20H]
        mov     r11d, ecx
        cmovge  r11d, dword [r9+24H]
        test    r12d, r12d
        cmovns  r14d, dword [r9+20H]
        mov     dword [rdx+24H], r11d
        add     ecx, r14d
        jmp     L_123





ALIGN   8
L_129:  mov     r11d, dword [rdx+24H]
        cmp     dword [r10+24H], r11d
        cmovge  r11d, dword [r10+24H]
        jmp     L_122





ALIGN   8
L_130:  mov     dword [rdx+20H], ecx
        mov     dword [rdx+24H], ecx
        mov     r11d, ecx
        mov     dword [rdx+1CH], ecx
        jmp     L_090





ALIGN   8
L_131:  test    r9, r9
        je      L_139
        mov     ebx, dword [r9+8H]
        mov     ebp, eax
        mov     r12d, eax
        mov     r11d, eax
        lea     r10d, [rbx+1H]
        mov     dword [rcx+8H], r10d
        mov     r10d, dword [r9+0CH]
        mov     dword [rcx+1CH], eax
        mov     dword [rcx+20H], eax
        mov     dword [rcx+24H], eax
        add     r10d, eax
        mov     dword [rcx+0CH], r10d
        jmp     L_078





ALIGN   8
L_132:  mov     dword [rcx+20H], eax
        mov     r9d, dword [rdx+20H]
        mov     ebx, r8d
        mov     r10d, dword [rdx+0CH]
        mov     dword [rcx+1CH], eax
        mov     r11d, dword [rdx+1CH]
        mov     dword [rcx+24H], eax
        test    r9d, r9d
        mov     r9d, r8d
        cmovns  r9d, dword [rdx+20H]
        add     r10d, eax
        add     r9d, eax
        cmp     r10d, r11d
        cmovl   r10d, r11d
        cmp     eax, r9d
        cmovge  r9d, eax
        cmp     dword [rdx+24H], eax
        mov     dword [rcx+1CH], r10d
        mov     dword [rcx+20H], r9d
        mov     r11d, dword [rdx+20H]
        mov     r10d, eax
        cmovge  r10d, dword [rdx+24H]
        test    r11d, r11d
        cmovns  ebx, dword [rdx+20H]
        mov     dword [rcx+24H], r10d
        add     eax, ebx
        jmp     L_080

L_133:  mov     r10d, dword [rcx+24H]
        cmp     dword [r9+24H], r10d
        cmovge  r10d, dword [r9+24H]
        jmp     L_079





ALIGN   8
L_134:  mov     rcx, r10
        mov     eax, 8
        jmp     L_082





ALIGN   8
L_135:  mov     r9, r10
        mov     ecx, 8
        jmp     L_110





ALIGN   8
L_136:  mov     dword [rdx+20H], ecx
        mov     dword [rdx+24H], ecx
        mov     r11d, ecx
        mov     dword [rdx+1CH], ecx
        jmp     L_123





ALIGN   8
L_137:  mov     dword [rdi+20H], edx
        mov     r9d, dword [rcx+0CH]
        mov     r8d, 0
        mov     r12d, dword [rcx+20H]
        mov     dword [rdi+1CH], edx
        mov     r10d, dword [rcx+1CH]
        mov     dword [rdi+24H], edx
        add     r9d, edx
        test    r12d, r12d
        cmovns  r8d, dword [rcx+20H]
        add     r8d, edx
L_138:  mov     r11d, dword [rdi+20H]
        jmp     L_094





ALIGN   8
L_139:  mov     dword [rcx+20H], eax
        mov     dword [rcx+24H], eax
        mov     r10d, eax
        mov     dword [rcx+1CH], eax
        jmp     L_080





ALIGN   8
L_140:  test    rsi, rsi
        mov     r8d, dword [rdi+24H]
        je      L_096
        mov     ecx, dword [rsi+24H]
        cmp     r8d, ecx
        cmovl   r8d, ecx
        jmp     L_095





ALIGN   8
L_141:  test    rsi, rsi
        je      L_145
        mov     ebx, dword [rsi+8H]
        mov     r10d, edx
        lea     r8d, [rbx+1H]
        mov     ebx, edx
        mov     dword [rdi+8H], r8d
        mov     r8d, dword [rsi+0CH]
        mov     dword [rdi+1CH], edx
        mov     dword [rdi+20H], edx
        mov     dword [rdi+24H], edx
        add     r8d, edx
        mov     dword [rdi+0CH], r8d
        mov     r8d, edx
        jmp     L_093





ALIGN   8
L_142:  mov     r11d, dword [rcx+20H]
        mov     esi, 0
        test    r11d, r11d
        cmovns  esi, dword [rcx+20H]
        add     edx, esi
        jmp     L_096





ALIGN   8
L_143:  mov     rsi, qword [rsi+8H]
        test    rsi, rsi
        jnz     L_146
        mov     dword [rax+24H], edx
        mov     dword [rax+1CH], edx
        mov     edi, edx
        mov     dword [rax+20H], edx
        jmp     L_099

L_144:  mov     dword [rax+20H], edx
        mov     esi, dword [rcx+20H]
        xor     r8d, r8d
        mov     edi, dword [rcx+0CH]
        mov     dword [rax+1CH], edx
        mov     r9d, dword [rcx+1CH]
        mov     dword [rax+24H], edx
        test    esi, esi
        mov     esi, r8d
        cmovns  esi, dword [rcx+20H]
        add     esi, edx
        cmp     esi, edx
        cmovl   esi, edx
        add     edi, edx
        cmp     edi, r9d
        mov     dword [rax+20H], esi
        cmovl   edi, r9d
        mov     r9d, dword [rcx+20H]
        cmp     dword [rcx+24H], edx
        mov     dword [rax+1CH], edi
        mov     edi, edx
        cmovge  edi, dword [rcx+24H]
        test    r9d, r9d
        cmovns  r8d, dword [rcx+20H]
        add     edx, r8d
        jmp     L_099

L_145:  mov     dword [rdi+20H], edx
        mov     dword [rdi+24H], edx
        mov     r10d, edx
        mov     r9d, edx
        mov     r8d, edx
        jmp     L_138

L_146:  mov     edi, dword [rsi+8H]
        mov     r10d, edx
        add     dword [rax+8H], edi
        mov     r11d, edx
        mov     edi, dword [rsi+0CH]
        mov     dword [rax+1CH], edx
        add     dword [rax+0CH], edi
        mov     dword [rax+20H], edx
        mov     edi, edx
        mov     dword [rax+24H], edx
        jmp     L_097


L_147:
        test    rsi, rsi
        mov     edi, dword [rax+24H]
        je      L_099
        mov     ecx, dword [rsi+24H]
        cmp     edi, ecx
        cmovl   edi, ecx
        jmp     L_098


SECTION .text._ZN10splay_tree5buildEP4NodeS1_ii 6

_ZN10splay_tree5buildEP4NodeS1_ii:
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     rbx, rsi
        sub     rsp, 72
        mov     qword [rsp+38H], rdi
        mov     dword [rsp], ecx
        mov     edi, 56
        add     ecx, r8d
        mov     qword [rsp+10H], rdx
        mov     dword [rsp+34H], r8d
        mov     r15d, ecx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     qword [rax+30H], 0
        mov     rbp, rax
        sar     r15d, 1
        mov     edi, 24
        movsxd  rdx, r15d
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     eax, dword [rel LL_id_cnt]
        mov     dword [rbp+8H], 1
        lea     r14d, [rax+1H]
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], r14d
        mov     dword [rbp], r14d
        mov     rax, qword [rax]
        mov     r12d, dword [rax+rdx*4]
        mov     dword [rbp+0CH], r12d
        mov     dword [rbp+4H], r12d
        mov     dword [rbp+1CH], r12d
        mov     dword [rbp+20H], r12d
        mov     dword [rbp+24H], r12d
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13], rax
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+20H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        mov     rdx, qword [rbx+28H]
        mov     qword [rax+30H], 0
        movdqa  xmm0, oword [rsp+20H]
        cmp     dword [rsp], r15d
        mov     qword [rbp+28H], r13
        movups  oword [rax], xmm0
        mov     rdx, qword [rdx]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r13]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [rbx], r14d
        mov     dword [rbx+4H], r12d
        mov     dword [rbx+8H], 1
        mov     dword [rbx+0CH], r12d
        mov     qword [rbx+10H], 0
        mov     dword [rbx+18H], 0
        mov     dword [rbx+1CH], r12d
        mov     dword [rbx+20H], r12d
        mov     dword [rbx+24H], r12d
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     rax, qword [rsp+10H]
        mov     qword [rbx+30H], rax
        jl      L_156
L_148:  cmp     dword [rsp+34H], r15d
        jg      L_155
L_149:  mov     rdx, qword [rbx+28H]
        mov     eax, dword [rbx+4H]
        mov     dword [rbx+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [rbx+0CH], eax
        mov     rdx, qword [rcx]
        test    rdx, rdx
        je      L_153
        mov     edi, dword [rdx+8H]
        mov     rcx, qword [rcx+8H]
        lea     esi, [rdi+1H]
        mov     dword [rbx+8H], esi
        mov     esi, dword [rdx+0CH]
        add     esi, eax
        test    rcx, rcx
        mov     dword [rbx+0CH], esi
        je      L_154
        mov     esi, dword [rcx+8H]
        add     dword [rbx+8H], esi
        mov     esi, dword [rcx+0CH]
        add     dword [rbx+0CH], esi
        mov     esi, 0
        mov     dword [rbx+20H], eax
        mov     r10d, dword [rdx+0CH]
        mov     ebp, dword [rdx+20H]
        add     r10d, eax
        mov     dword [rbx+1CH], eax
        test    ebp, ebp
        cmovns  esi, dword [rdx+20H]
        mov     r9d, dword [rdx+1CH]
        mov     dword [rbx+24H], eax
        mov     dword [rbx+1CH], r9d
        add     esi, eax
L_150:  add     esi, dword [rcx+0CH]
        mov     r8d, dword [rcx+20H]
        mov     r11d, dword [rcx+1CH]
        cmp     esi, r8d
        cmovl   esi, r8d
        xor     r8d, r8d
        test    r11d, r11d
        mov     edi, r8d
        cmovns  edi, dword [rcx+1CH]
        mov     dword [rbx+20H], esi
        add     edi, r10d
        cmp     edi, r9d
        cmovl   edi, r9d
        test    rdx, rdx
        mov     dword [rbx+1CH], edi
        je      L_157
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     r9d, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [rbx+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    r9d, r9d
        cmovns  r8d, dword [rdx+20H]
        add     eax, r8d
L_151:  mov     r10d, dword [rcx+1CH]
        mov     edx, 0
        test    r10d, r10d
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_152:  cmp     esi, eax
        cmovge  eax, esi
        mov     dword [rbx+24H], eax
        add     rsp, 72
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret





ALIGN   16
L_153:  mov     rcx, qword [rcx+8H]
        test    rcx, rcx
        jne     L_158
        mov     dword [rbx+24H], eax
        mov     dword [rbx+1CH], eax
        mov     esi, eax
        mov     dword [rbx+20H], eax
        jmp     L_152

L_154:  mov     dword [rbx+20H], eax
        mov     ecx, dword [rdx+20H]
        xor     edi, edi
        mov     esi, dword [rdx+0CH]
        mov     dword [rbx+1CH], eax
        mov     r8d, dword [rdx+1CH]
        mov     dword [rbx+24H], eax
        test    ecx, ecx
        mov     ecx, edi
        cmovns  ecx, dword [rdx+20H]
        add     ecx, eax
        cmp     ecx, eax
        cmovl   ecx, eax
        add     esi, eax
        cmp     esi, r8d
        mov     dword [rbx+20H], ecx
        cmovl   esi, r8d
        mov     r8d, dword [rdx+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [rbx+1CH], esi
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        test    r8d, r8d
        cmovns  edi, dword [rdx+20H]
        add     eax, edi
        jmp     L_152





ALIGN   16
L_155:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rbp, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], rbp
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbp+0CH], 0
        mov     qword [rbp+14H], 0
        mov     qword [rbp+1CH], 0
        mov     dword [rbp+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbp], eax
        mov     rax, qword 100000000H
        mov     qword [rbp+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        lea     ecx, [r15+1H]
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r12
        mov     rdx, rbx
        movups  oword [rax], xmm0
        mov     r8d, dword [rsp+34H]
        mov     rdi, qword [rsp+38H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r12]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbx+28H]
        mov     qword [rbp+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax+8H]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_149





ALIGN   8
L_156:  mov     edi, 56
        movaps  oword [rsp+10H], xmm0
        call    _Znwm
        mov     rbp, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+10H]
        mov     qword [rax+30H], 0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     qword [rax], rbp
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbp+0CH], 0
        mov     qword [rbp+14H], 0
        mov     qword [rbp+1CH], 0
        mov     dword [rbp+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbp], eax
        mov     rax, qword 100000000H
        mov     qword [rbp+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        lea     r8d, [r15-1H]
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r12
        mov     rdx, rbx
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp]
        mov     rdi, qword [rsp+38H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r12]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbx+28H]
        mov     qword [rbp+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_148

L_157:  test    rcx, rcx
        mov     esi, dword [rbx+24H]
        je      L_152
        mov     edx, dword [rcx+24H]
        cmp     esi, edx
        cmovl   esi, edx
        jmp     L_151


        mov     rbx, rax
        mov     rdi, r13
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
L_158:  mov     esi, dword [rcx+8H]
        mov     r9d, eax
        add     dword [rbx+8H], esi
        mov     r10d, eax
        mov     esi, dword [rcx+0CH]
        mov     dword [rbx+1CH], eax
        add     dword [rbx+0CH], esi
        mov     dword [rbx+20H], eax
        mov     esi, eax
        mov     dword [rbx+24H], eax
        jmp     L_150


L_159:
        mov     rbx, rax
        mov     rdi, r12
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
        jmp     L_159


SECTION .gcc_except_table._ZN10splay_tree5buildEP4NodeS1_ii 

        db 0FFH, 0FFH, 01H, 28H, 2EH, 6AH, 00H, 00H
        db 0B7H, 01H, 05H, 0C7H, 0BH, 00H, 0E0H, 01H
        db 0A1H, 05H, 00H, 00H, 0A0H, 07H, 05H, 8FH
        db 0CH, 00H, 0CBH, 07H, 8CH, 02H, 00H, 00H
        db 0F6H, 09H, 05H, 0FCH, 0BH, 00H, 0A1H, 0AH
        db 0EEH, 01H, 00H, 00H


SECTION .text._ZN10splay_tree10build_treeEii 6

_ZN10splay_tree10build_treeEii:
        push    r15
        push    r14
        mov     r15, rdi
        push    r13
        push    r12
        mov     r14d, esi
        push    rbp
        push    rbx
        mov     r13d, edx
        sub     rsp, 136
        mov     qword [rsp+60H], rdi
        mov     edi, 56
        mov     dword [rsp+68H], edx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     qword [rax+30H], 0
        mov     rbp, rax
        mov     qword [r15], rax
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     eax, dword [rel LL_id_cnt]
        mov     dword [rbp+8H], 1
        add     eax, 1
        mov     dword [rbp], eax
        mov     dword [rel LL_id_cnt], eax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbx, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbx], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbx+10H], rdx
        mov     qword [rbx+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbx]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        mov     edi, 56
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], rbx
        movups  oword [rax], xmm0
        mov     dword [rsp], r14d
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     rax, qword [rbx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     eax, r14d
        add     eax, r13d
        mov     qword [rbp+30H], 0
        mov     r15, qword [r15]
        mov     ecx, eax
        sar     ecx, 1
        mov     r14d, ecx
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     rbx, rax
        mov     qword [rax+30H], 0
        mov     ecx, dword [rel LL_id_cnt]
        movsxd  rdx, r14d
        movups  oword [rax+10H], xmm0
        mov     edi, 24
        movups  oword [rax+20H], xmm0
        lea     r13d, [rcx+1H]
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], r13d
        mov     dword [rbx], r13d
        mov     dword [rbx+8H], 1
        mov     rax, qword [rax]
        mov     ebp, dword [rax+rdx*4]
        mov     dword [rbx+0CH], ebp
        mov     dword [rbx+4H], ebp
        mov     dword [rbx+1CH], ebp
        mov     dword [rbx+20H], ebp
        mov     dword [rbx+24H], ebp
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     edi, 56
        mov     qword [r12], rax
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     qword [rax+30H], 0
        cmp     dword [rsp], r14d
        movups  oword [rax], xmm0
        mov     qword [rbx+28H], r12
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [r15+28H]
        mov     rax, qword [r12]
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [r15], r13d
        mov     dword [r15+4H], ebp
        mov     dword [r15+8H], 1
        mov     dword [r15+0CH], ebp
        mov     qword [r15+10H], 0
        mov     dword [r15+18H], 0
        mov     dword [r15+1CH], ebp
        mov     dword [r15+20H], ebp
        mov     dword [r15+24H], ebp
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [r15+30H], 0
        jl      L_178
L_160:  cmp     dword [rsp+68H], r14d
        jg      L_172
L_161:  mov     rdx, qword [r15+28H]
        mov     eax, dword [r15+4H]
        mov     dword [r15+8H], 1
        mov     rdx, qword [rdx]
        mov     dword [r15+0CH], eax
        mov     rcx, qword [rdx]
        mov     rdx, qword [rdx+8H]
        test    rcx, rcx
        je      L_170
        mov     esi, dword [rcx+8H]
        mov     edi, dword [rcx+0CH]
        add     esi, 1
        add     edi, eax
        test    rdx, rdx
        mov     dword [r15+8H], esi
        mov     dword [r15+0CH], edi
        jz      L_162
        add     esi, dword [rdx+8H]
        add     edi, dword [rdx+0CH]
        mov     dword [r15+8H], esi
        mov     dword [r15+0CH], edi
L_162:  mov     dword [r15+20H], eax
        mov     r8d, dword [rcx+0CH]
        mov     esi, 0
        mov     r11d, dword [rcx+20H]
        mov     dword [r15+1CH], eax
        mov     edi, dword [rcx+1CH]
        mov     dword [r15+24H], eax
        add     r8d, eax
        test    r11d, r11d
        cmovns  esi, dword [rcx+20H]
        mov     dword [r15+1CH], edi
        add     esi, eax
        test    rdx, rdx
        je      L_168
L_163:  mov     r10d, dword [rdx+1CH]
        add     esi, dword [rdx+0CH]
        mov     r9d, dword [rdx+20H]
        test    r10d, r10d
        mov     r10d, 0
        cmovns  r10d, dword [rdx+1CH]
        add     r8d, r10d
L_164:  cmp     edi, r8d
        cmovl   edi, r8d
        cmp     esi, r9d
        cmovl   esi, r9d
        test    rcx, rcx
        mov     dword [r15+1CH], edi
        mov     dword [r15+20H], esi
        je      L_171
        cmp     dword [rcx+24H], eax
        mov     esi, eax
        cmovge  esi, dword [rcx+24H]
        test    rdx, rdx
        mov     dword [r15+24H], esi
        jz      L_169
        mov     edi, dword [rdx+24H]
        cmp     esi, edi
        cmovl   esi, edi
        mov     edi, dword [rcx+20H]
        test    edi, edi
        mov     edi, 0
        cmovns  edi, dword [rcx+20H]
        add     eax, edi
L_165:  mov     r8d, dword [rdx+1CH]
        mov     ecx, 0
        test    r8d, r8d
        cmovns  ecx, dword [rdx+1CH]
        add     eax, ecx
L_166:  cmp     eax, esi
        cmovl   eax, esi
        mov     dword [r15+24H], eax
        add     rsp, 136
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret





ALIGN   8
L_167:  mov     dword [r15+20H], eax
        mov     dword [r15+24H], eax
        mov     r8d, eax
        mov     esi, eax
        mov     edi, eax
L_168:  mov     r9d, dword [r15+20H]
        jmp     L_164





ALIGN   16
L_169:  mov     edx, dword [rcx+20H]
        test    edx, edx
        mov     edx, 0
        cmovns  edx, dword [rcx+20H]
        add     eax, edx
        jmp     L_166





ALIGN   8
L_170:  test    rdx, rdx
        jz      L_167
        mov     esi, dword [rdx+8H]
        mov     edi, eax
        mov     r8d, eax
        add     esi, 1
        mov     dword [r15+8H], esi
        mov     esi, dword [rdx+0CH]
        mov     dword [r15+1CH], eax
        mov     dword [r15+20H], eax
        mov     dword [r15+24H], eax
        add     esi, eax
        mov     dword [r15+0CH], esi
        mov     esi, eax
        jmp     L_163





ALIGN   16
L_171:  test    rdx, rdx
        mov     esi, dword [r15+24H]
        je      L_166
        mov     ecx, dword [rdx+24H]
        cmp     esi, ecx
        cmovl   esi, ecx
        jmp     L_165





ALIGN   8
L_172:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rbx, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r15+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], rbx
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbx+0CH], 0
        mov     qword [rbx+14H], 0
        mov     qword [rbx+1CH], 0
        mov     dword [rbx+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbx], eax
        mov     rax, qword 100000000H
        mov     qword [rbx+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        lea     ecx, [r14+1H]
        mov     qword [rax+30H], 0
        mov     qword [rbx+28H], rbp
        mov     edi, 56
        movups  oword [rax], xmm0
        mov     r14d, dword [rsp+68H]
        mov     dword [rsp+10H], ecx
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     r14d, ecx
        sar     r14d, 1
        mov     r13d, r14d
        mov     rax, qword [rbp]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [r15+28H]
        mov     qword [rbx+30H], 0
        mov     rax, qword [rax]
        mov     rbx, qword [rax+8H]
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        mov     rbp, rax
        mov     qword [rax+30H], 0
        movsxd  rdx, r13d
        mov     edi, 24
        movups  oword [rax+10H], xmm0
        mov     dword [rsp], r13d
        movups  oword [rax+20H], xmm0
        mov     eax, dword [rel LL_id_cnt]
        mov     dword [rbp+8H], 1
        lea     r14d, [rax+1H]
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], r14d
        mov     dword [rbp], r14d
        mov     rax, qword [rax]
        mov     r12d, dword [rax+rdx*4]
        mov     dword [rbp+0CH], r12d
        mov     dword [rbp+4H], r12d
        mov     dword [rbp+1CH], r12d
        mov     dword [rbp+20H], r12d
        mov     dword [rbp+24H], r12d
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r13], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+20H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+20H]
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r13
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [rbx+28H]
        mov     rax, qword [r13]
        mov     r13d, dword [rsp]
        cmp     dword [rsp+10H], r13d
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [rbx], r14d
        mov     dword [rbx+4H], r12d
        mov     dword [rbx+8H], 1
        mov     dword [rbx+0CH], r12d
        mov     qword [rbx+10H], 0
        mov     dword [rbx+18H], 0
        mov     dword [rbx+1CH], r12d
        mov     dword [rbx+20H], r12d
        mov     dword [rbx+24H], r12d
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [rbx+30H], r15
        jl      L_197
L_173:  mov     ecx, dword [rsp]
        cmp     dword [rsp+68H], ecx
        jg      L_190
L_174:  mov     rdx, qword [rbx+28H]
        mov     eax, dword [rbx+4H]
        mov     dword [rbx+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [rbx+0CH], eax
        mov     rdx, qword [rcx]
        test    rdx, rdx
        je      L_185
        mov     esi, dword [rdx+8H]
        mov     rcx, qword [rcx+8H]
        add     esi, 1
        mov     dword [rbx+8H], esi
        mov     esi, dword [rdx+0CH]
        add     esi, eax
        test    rcx, rcx
        mov     dword [rbx+0CH], esi
        je      L_187
        mov     esi, dword [rcx+8H]
        add     dword [rbx+8H], esi
        mov     esi, dword [rcx+0CH]
        add     dword [rbx+0CH], esi
        mov     esi, 0
        mov     dword [rbx+20H], eax
        mov     r10d, dword [rdx+0CH]
        mov     r13d, dword [rdx+20H]
        add     r10d, eax
        mov     dword [rbx+1CH], eax
        test    r13d, r13d
        cmovns  esi, dword [rdx+20H]
        mov     r9d, dword [rdx+1CH]
        mov     dword [rbx+24H], eax
        mov     dword [rbx+1CH], r9d
        add     esi, eax
L_175:  add     esi, dword [rcx+0CH]
        mov     r8d, dword [rcx+20H]
        mov     r12d, dword [rcx+1CH]
        cmp     esi, r8d
        cmovl   esi, r8d
        xor     r8d, r8d
        test    r12d, r12d
        mov     edi, r8d
        cmovns  edi, dword [rcx+1CH]
        mov     dword [rbx+20H], esi
        add     edi, r10d
        cmp     edi, r9d
        cmovl   edi, r9d
        test    rdx, rdx
        mov     dword [rbx+1CH], edi
        je      L_259
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     ebp, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [rbx+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    ebp, ebp
        cmovns  r8d, dword [rdx+20H]
        add     eax, r8d
L_176:  mov     ebp, dword [rcx+1CH]
        mov     edx, 0
        test    ebp, ebp
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_177:  cmp     eax, esi
        cmovl   eax, esi
        mov     dword [rbx+24H], eax
        jmp     L_161





ALIGN   8
L_178:  mov     edi, 56
        movaps  oword [rsp+10H], xmm0
        call    _Znwm
        mov     rbx, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+10H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r15+28H]
        mov     rax, qword [rax]
        mov     qword [rax], rbx
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbx+0CH], 0
        mov     qword [rbx+14H], 0
        mov     qword [rbx+1CH], 0
        mov     dword [rbx+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbx], eax
        mov     rax, qword 100000000H
        mov     qword [rbx+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        lea     ecx, [r14-1H]
        mov     qword [rax+30H], 0
        mov     qword [rbx+28H], rbp
        mov     edi, 56
        movups  oword [rax], xmm0
        mov     dword [rsp+20H], ecx
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbp]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [r15+28H]
        mov     qword [rbx+30H], 0
        mov     rax, qword [rax]
        mov     r13, qword [rax]
        mov     eax, dword [rsp]
        add     eax, ecx
        sar     eax, 1
        mov     ebp, eax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     rbx, rax
        mov     qword [rax+30H], 0
        mov     ecx, dword [rel LL_id_cnt]
        movsxd  rdx, ebp
        movups  oword [rax+10H], xmm0
        mov     dword [rsp+10H], ebp
        mov     edi, 24
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], ecx
        mov     dword [rbx], ecx
        mov     dword [rbx+8H], 1
        mov     dword [rsp+30H], ecx
        mov     rax, qword [rax]
        mov     ebp, dword [rax+rdx*4]
        mov     dword [rbx+0CH], ebp
        mov     dword [rbx+4H], ebp
        mov     dword [rbx+1CH], ebp
        mov     dword [rbx+20H], ebp
        mov     dword [rbx+24H], ebp
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     edi, 56
        mov     qword [r12], rax
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+40H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+40H]
        mov     qword [rax+30H], 0
        mov     ecx, dword [rsp+30H]
        movups  oword [rax], xmm0
        mov     qword [rbx+28H], r12
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [r13+28H]
        mov     rax, qword [r12]
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [r13+4H], ebp
        mov     dword [r13+0CH], ebp
        mov     dword [r13+1CH], ebp
        mov     dword [r13+20H], ebp
        mov     dword [r13+24H], ebp
        mov     ebp, dword [rsp+10H]
        cmp     dword [rsp], ebp
        mov     dword [r13], ecx
        mov     dword [r13+8H], 1
        mov     qword [r13+10H], 0
        mov     dword [r13+18H], 0
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [r13+30H], r15
        jl      L_211
L_179:  mov     ecx, dword [rsp+10H]
        cmp     dword [rsp+20H], ecx
        jg      L_204
L_180:  mov     rdx, qword [r13+28H]
        mov     eax, dword [r13+4H]
        mov     dword [r13+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [r13+0CH], eax
        mov     rdx, qword [rcx]
        mov     rcx, qword [rcx+8H]
        test    rdx, rdx
        je      L_186
        mov     esi, dword [rdx+8H]
        mov     edi, dword [rdx+0CH]
        add     esi, 1
        add     edi, eax
        test    rcx, rcx
        mov     dword [r13+8H], esi
        mov     dword [r13+0CH], edi
        jz      L_181
        add     esi, dword [rcx+8H]
        add     edi, dword [rcx+0CH]
        mov     dword [r13+8H], esi
        mov     dword [r13+0CH], edi
L_181:  mov     dword [r13+20H], eax
        mov     edi, dword [rdx+0CH]
        xor     r9d, r9d
        mov     ebx, dword [rdx+20H]
        mov     esi, r9d
        mov     dword [r13+1CH], eax
        mov     r8d, dword [rdx+1CH]
        mov     dword [r13+24H], eax
        add     edi, eax
        test    ebx, ebx
        cmovns  esi, dword [rdx+20H]
        mov     dword [r13+1CH], r8d
        add     esi, eax
        test    rcx, rcx
        je      L_189
L_182:  mov     r11d, dword [rcx+1CH]
        xor     r9d, r9d
        add     esi, dword [rcx+0CH]
        mov     r10d, dword [rcx+20H]
        test    r11d, r11d
        mov     r11d, r9d
        cmovns  r11d, dword [rcx+1CH]
        add     edi, r11d
        cmp     edi, r8d
        cmovl   edi, r8d
        cmp     r10d, esi
        cmovge  esi, r10d
        test    rdx, rdx
        mov     dword [r13+1CH], edi
        mov     dword [r13+20H], esi
        je      L_188
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     edi, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [r13+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    edi, edi
        cmovns  r9d, dword [rdx+20H]
        add     eax, r9d
L_183:  mov     edx, dword [rcx+1CH]
        test    edx, edx
        mov     edx, 0
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_184:  cmp     esi, eax
        cmovge  eax, esi
        mov     dword [r13+24H], eax
        jmp     L_160





ALIGN   8
L_185:  mov     rcx, qword [rcx+8H]
        test    rcx, rcx
        jne     L_261
        mov     dword [rbx+24H], eax
        mov     dword [rbx+1CH], eax
        mov     esi, eax
        mov     dword [rbx+20H], eax
        jmp     L_177





ALIGN   8
L_186:  test    rcx, rcx
        je      L_218
        mov     esi, dword [rcx+8H]
        mov     r8d, eax
        mov     edi, eax
        add     esi, 1
        mov     dword [r13+8H], esi
        mov     esi, dword [rcx+0CH]
        mov     dword [r13+1CH], eax
        mov     dword [r13+20H], eax
        mov     dword [r13+24H], eax
        add     esi, eax
        mov     dword [r13+0CH], esi
        mov     esi, eax
        jmp     L_182

L_187:  mov     dword [rbx+20H], eax
        mov     ecx, dword [rdx+20H]
        xor     edi, edi
        mov     esi, dword [rdx+0CH]
        mov     dword [rbx+1CH], eax
        mov     r8d, dword [rdx+1CH]
        mov     dword [rbx+24H], eax
        test    ecx, ecx
        mov     ecx, edi
        cmovns  ecx, dword [rdx+20H]
        add     ecx, eax
        cmp     ecx, eax
        cmovl   ecx, eax
        add     esi, eax
        cmp     esi, r8d
        mov     dword [rbx+20H], ecx
        cmovl   esi, r8d
        mov     r8d, dword [rdx+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [rbx+1CH], esi
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        test    r8d, r8d
        cmovns  edi, dword [rdx+20H]
        add     eax, edi
        jmp     L_177





ALIGN   8
L_188:  mov     esi, dword [r13+24H]
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        jmp     L_183

L_189:  cmp     r8d, edi
        cmovge  edi, r8d
        cmp     dword [r13+20H], esi
        cmovge  esi, dword [r13+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [r13+1CH], edi
        mov     dword [r13+20H], esi
        mov     r10d, dword [rdx+20H]
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        test    r10d, r10d
        cmovns  r9d, dword [rdx+20H]
        mov     dword [r13+24H], esi
        add     eax, r9d
        jmp     L_184





ALIGN   8
L_190:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rbp, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], rbp
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbp+0CH], 0
        mov     qword [rbp+14H], 0
        mov     qword [rbp+1CH], 0
        mov     dword [rbp+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbp], eax
        mov     rax, qword 100000000H
        mov     qword [rbp+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     edi, 56
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r12
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        movaps  oword [rsp+20H], xmm0
        mov     rax, qword [r12]
        mov     dword [rsp+10H], ecx
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbx+28H]
        mov     qword [rbp+30H], 0
        mov     rax, qword [rax]
        mov     rbp, qword [rax+8H]
        mov     eax, dword [rsp+68H]
        add     eax, ecx
        sar     eax, 1
        mov     r14d, eax
        call    _Znwm
        movdqa  xmm0, oword [rsp+20H]
        mov     r12, rax
        mov     qword [rax+30H], 0
        movsxd  rdx, r14d
        mov     edi, 24
        movups  oword [rax+10H], xmm0
        mov     dword [rsp], r14d
        movups  oword [rax+20H], xmm0
        mov     eax, dword [rel LL_id_cnt]
        mov     dword [r12+8H], 1
        lea     esi, [rax+1H]
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], esi
        mov     dword [r12], esi
        mov     rax, qword [rax]
        mov     dword [rsp+20H], esi
        mov     r13d, dword [rax+rdx*4]
        mov     dword [r12+0CH], r13d
        mov     dword [r12+4H], r13d
        mov     dword [r12+1CH], r13d
        mov     dword [r12+20H], r13d
        mov     dword [r12+24H], r13d
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r14, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r14], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r14+10H], rdx
        mov     qword [r14+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r14]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+30H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+30H]
        mov     qword [rax+30H], 0
        mov     esi, dword [rsp+20H]
        movups  oword [rax], xmm0
        mov     qword [r12+28H], r14
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [rbp+28H]
        mov     rax, qword [r14]
        mov     r14d, dword [rsp]
        cmp     dword [rsp+10H], r14d
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [rbp], esi
        mov     dword [rbp+4H], r13d
        mov     dword [rbp+8H], 1
        mov     dword [rbp+0CH], r13d
        mov     qword [rbp+10H], 0
        mov     dword [rbp+18H], 0
        mov     dword [rbp+1CH], r13d
        mov     dword [rbp+20H], r13d
        mov     dword [rbp+24H], r13d
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [rbp+30H], rbx
        jl      L_241
L_191:  mov     ecx, dword [rsp]
        cmp     dword [rsp+68H], ecx
        jg      L_234
L_192:  mov     rdx, qword [rbp+28H]
        mov     eax, dword [rbp+4H]
        mov     dword [rbp+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [rbp+0CH], eax
        mov     rdx, qword [rcx]
        mov     rcx, qword [rcx+8H]
        test    rdx, rdx
        je      L_219
        mov     esi, dword [rdx+8H]
        mov     edi, dword [rdx+0CH]
        add     esi, 1
        add     edi, eax
        test    rcx, rcx
        mov     dword [rbp+8H], esi
        mov     dword [rbp+0CH], edi
        jz      L_193
        add     esi, dword [rcx+8H]
        add     edi, dword [rcx+0CH]
        mov     dword [rbp+8H], esi
        mov     dword [rbp+0CH], edi
L_193:  mov     dword [rbp+20H], eax
        mov     r11d, dword [rdx+0CH]
        xor     r9d, r9d
        mov     r13d, dword [rdx+20H]
        mov     esi, r9d
        mov     dword [rbp+1CH], eax
        mov     r8d, dword [rdx+1CH]
        mov     dword [rbp+24H], eax
        add     r11d, eax
        test    r13d, r13d
        cmovns  esi, dword [rdx+20H]
        mov     dword [rbp+1CH], r8d
        add     esi, eax
        test    rcx, rcx
        je      L_226
L_194:  mov     r12d, dword [rcx+1CH]
        xor     r10d, r10d
        add     esi, dword [rcx+0CH]
        mov     edi, r10d
        mov     r9d, dword [rcx+20H]
        test    r12d, r12d
        cmovns  edi, dword [rcx+1CH]
        add     edi, r11d
        cmp     edi, r8d
        cmovl   edi, r8d
        cmp     r9d, esi
        cmovge  esi, r9d
        test    rdx, rdx
        mov     dword [rbp+1CH], edi
        mov     dword [rbp+20H], esi
        je      L_220
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     edi, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [rbp+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    edi, edi
        cmovns  r10d, dword [rdx+20H]
        add     eax, r10d
L_195:  mov     r14d, dword [rcx+1CH]
        mov     edx, 0
        test    r14d, r14d
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_196:  cmp     eax, esi
        cmovl   eax, esi
        mov     dword [rbp+24H], eax
        jmp     L_174





ALIGN   8
L_197:  mov     edi, 56
        movaps  oword [rsp+20H], xmm0
        call    _Znwm
        mov     rbp, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+20H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     qword [rax], rbp
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbp+0CH], 0
        mov     qword [rbp+14H], 0
        mov     qword [rbp+1CH], 0
        mov     dword [rbp+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbp], eax
        mov     rax, qword 100000000H
        mov     qword [rbp+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+20H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+20H]
        mov     edi, 56
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r12
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r12]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     eax, dword [rsp]
        mov     qword [rbp+30H], 0
        lea     ecx, [rax-1H]
        mov     rax, qword [rbx+28H]
        mov     dword [rsp+30H], ecx
        mov     rax, qword [rax]
        mov     rbp, qword [rax]
        mov     eax, dword [rsp+10H]
        add     eax, ecx
        sar     eax, 1
        mov     r14d, eax
        call    _Znwm
        movdqa  xmm0, oword [rsp+20H]
        mov     r12, rax
        mov     qword [rax+30H], 0
        mov     ecx, dword [rel LL_id_cnt]
        movsxd  rdx, r14d
        movups  oword [rax+10H], xmm0
        mov     dword [rsp+20H], r14d
        mov     edi, 24
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], ecx
        mov     dword [r12], ecx
        mov     dword [r12+8H], 1
        mov     dword [rsp+40H], ecx
        mov     rax, qword [rax]
        mov     r14d, dword [rax+rdx*4]
        mov     dword [r12+0CH], r14d
        mov     dword [r12+4H], r14d
        mov     dword [r12+1CH], r14d
        mov     dword [r12+20H], r14d
        mov     dword [r12+24H], r14d
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     edi, 56
        mov     qword [r13], rax
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+50H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+50H]
        mov     qword [rax+30H], 0
        mov     ecx, dword [rsp+40H]
        movups  oword [rax], xmm0
        mov     qword [r12+28H], r13
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [rbp+28H]
        mov     rax, qword [r13]
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [rbp+4H], r14d
        mov     dword [rbp+0CH], r14d
        mov     dword [rbp+1CH], r14d
        mov     dword [rbp+20H], r14d
        mov     dword [rbp+24H], r14d
        mov     r14d, dword [rsp+20H]
        cmp     dword [rsp+10H], r14d
        mov     dword [rbp], ecx
        mov     dword [rbp+8H], 1
        mov     qword [rbp+10H], 0
        mov     dword [rbp+18H], 0
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [rbp+30H], rbx
        jl      L_245
L_198:  mov     ecx, dword [rsp+20H]
        cmp     dword [rsp+30H], ecx
        jg      L_242
L_199:  mov     rdx, qword [rbp+28H]
        mov     eax, dword [rbp+4H]
        mov     dword [rbp+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [rbp+0CH], eax
        mov     rdx, qword [rcx]
        test    rdx, rdx
        je      L_224
        mov     esi, dword [rdx+8H]
        mov     rcx, qword [rcx+8H]
        add     esi, 1
        mov     dword [rbp+8H], esi
        mov     esi, dword [rdx+0CH]
        add     esi, eax
        test    rcx, rcx
        mov     dword [rbp+0CH], esi
        je      L_228
        mov     esi, dword [rcx+8H]
        add     dword [rbp+8H], esi
        mov     esi, dword [rcx+0CH]
        add     dword [rbp+0CH], esi
        mov     dword [rbp+1CH], eax
        mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
L_200:  mov     esi, 0
        mov     r8d, dword [rdx+0CH]
        mov     r12d, dword [rdx+20H]
        mov     edi, dword [rdx+1CH]
        add     r8d, eax
        test    r12d, r12d
        cmovns  esi, dword [rdx+20H]
        mov     dword [rbp+1CH], edi
        add     esi, eax
        test    rcx, rcx
        je      L_223
L_201:  mov     r11d, dword [rcx+1CH]
        xor     r10d, r10d
        add     esi, dword [rcx+0CH]
        mov     r9d, dword [rcx+20H]
        test    r11d, r11d
        mov     r11d, r10d
        cmovns  r11d, dword [rcx+1CH]
        add     r8d, r11d
        cmp     r8d, edi
        cmovl   r8d, edi
        cmp     r9d, esi
        cmovge  esi, r9d
        test    rdx, rdx
        mov     dword [rbp+1CH], r8d
        mov     dword [rbp+20H], esi
        je      L_221
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     r13d, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [rbp+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    r13d, r13d
        cmovns  r10d, dword [rdx+20H]
        add     eax, r10d
L_202:  mov     edx, dword [rcx+1CH]
        test    edx, edx
        mov     edx, 0
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_203:  cmp     eax, esi
        cmovl   eax, esi
        mov     dword [rbp+24H], eax
        jmp     L_173





ALIGN   8
L_204:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rbx, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r13+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], rbx
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbx+0CH], 0
        mov     qword [rbx+14H], 0
        mov     qword [rbx+1CH], 0
        mov     dword [rbx+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbx], eax
        mov     rax, qword 100000000H
        mov     qword [rbx+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        mov     edi, 56
        mov     qword [rax+30H], 0
        mov     qword [rbx+28H], rbp
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp+10H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [rbp]
        mov     dword [rsp+10H], ecx
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [r13+28H]
        mov     qword [rbx+30H], 0
        mov     rax, qword [rax]
        mov     rbx, qword [rax+8H]
        mov     eax, dword [rsp+20H]
        add     eax, ecx
        sar     eax, 1
        mov     r12d, eax
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        mov     rbp, rax
        mov     qword [rax+30H], 0
        movsxd  rdx, r12d
        mov     edi, 24
        movups  oword [rax+10H], xmm0
        mov     dword [rsp], r12d
        movups  oword [rax+20H], xmm0
        mov     eax, dword [rel LL_id_cnt]
        mov     dword [rbp+8H], 1
        lea     esi, [rax+1H]
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], esi
        mov     dword [rbp], esi
        mov     rax, qword [rax]
        mov     dword [rsp+30H], esi
        mov     eax, dword [rax+rdx*4]
        mov     dword [rbp+0CH], eax
        mov     dword [rbp+4H], eax
        mov     dword [rbp+1CH], eax
        mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
        mov     dword [rsp+40H], eax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+50H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+50H]
        mov     qword [rax+30H], 0
        mov     esi, dword [rsp+40H]
        movups  oword [rax], xmm0
        mov     edi, dword [rsp+30H]
        mov     qword [rbp+28H], r12
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [rbx+28H]
        mov     rax, qword [r12]
        mov     r12d, dword [rsp]
        cmp     dword [rsp+10H], r12d
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [rbx], edi
        mov     dword [rbx+4H], esi
        mov     dword [rbx+8H], 1
        mov     dword [rbx+0CH], esi
        mov     qword [rbx+10H], 0
        mov     dword [rbx+18H], 0
        mov     dword [rbx+1CH], esi
        mov     dword [rbx+20H], esi
        mov     dword [rbx+24H], esi
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [rbx+30H], r13
        jl      L_243
L_205:  mov     ecx, dword [rsp]
        cmp     dword [rsp+20H], ecx
        jg      L_231
L_206:  mov     rdx, qword [rbx+28H]
        mov     eax, dword [rbx+4H]
        mov     dword [rbx+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [rbx+0CH], eax
        mov     rdx, qword [rcx]
        mov     rcx, qword [rcx+8H]
        test    rdx, rdx
        je      L_225
        mov     esi, dword [rdx+8H]
        mov     edi, dword [rdx+0CH]
        add     esi, 1
        add     edi, eax
        test    rcx, rcx
        mov     dword [rbx+8H], esi
        mov     dword [rbx+0CH], edi
        jz      L_207
        add     esi, dword [rcx+8H]
        add     edi, dword [rcx+0CH]
        mov     dword [rbx+8H], esi
        mov     dword [rbx+0CH], edi
L_207:  mov     dword [rbx+20H], eax
        mov     r9d, dword [rdx+0CH]
        xor     r8d, r8d
        mov     ebp, dword [rdx+20H]
        mov     esi, r8d
        mov     dword [rbx+1CH], eax
        mov     edi, dword [rdx+1CH]
        mov     dword [rbx+24H], eax
        add     r9d, eax
        test    ebp, ebp
        cmovns  esi, dword [rdx+20H]
        mov     dword [rbx+1CH], edi
        add     esi, eax
        test    rcx, rcx
        je      L_230
L_208:  mov     r11d, dword [rcx+1CH]
        xor     r10d, r10d
        add     esi, dword [rcx+0CH]
        mov     r8d, dword [rcx+20H]
        test    r11d, r11d
        mov     r11d, r10d
        cmovns  r11d, dword [rcx+1CH]
        add     r9d, r11d
        cmp     r9d, edi
        cmovl   r9d, edi
        cmp     r8d, esi
        cmovge  esi, r8d
        test    rdx, rdx
        mov     dword [rbx+1CH], r9d
        mov     dword [rbx+20H], esi
        je      L_229
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     r12d, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [rbx+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    r12d, r12d
        cmovns  r10d, dword [rdx+20H]
        add     eax, r10d
L_209:  mov     ebp, dword [rcx+1CH]
        mov     edx, 0
        test    ebp, ebp
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_210:  cmp     eax, esi
        cmovl   eax, esi
        mov     dword [rbx+24H], eax
        jmp     L_180

L_211:  mov     edi, 56
        movaps  oword [rsp+30H], xmm0
        call    _Znwm
        mov     rbx, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+30H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r13+28H]
        mov     rax, qword [rax]
        mov     qword [rax], rbx
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbx+0CH], 0
        mov     qword [rbx+14H], 0
        mov     qword [rbx+1CH], 0
        mov     dword [rbx+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbx], eax
        mov     rax, qword 100000000H
        mov     qword [rbx+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+30H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+30H]
        mov     edi, 56
        mov     qword [rax+30H], 0
        mov     qword [rbx+28H], rbp
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbp]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     eax, dword [rsp+10H]
        mov     qword [rbx+30H], 0
        lea     ecx, [rax-1H]
        mov     rax, qword [r13+28H]
        mov     dword [rsp+40H], ecx
        mov     rax, qword [rax]
        mov     r12, qword [rax]
        mov     eax, dword [rsp]
        add     eax, ecx
        sar     eax, 1
        mov     ebp, eax
        call    _Znwm
        movdqa  xmm0, oword [rsp+30H]
        mov     rbx, rax
        mov     qword [rax+30H], 0
        mov     ecx, dword [rel LL_id_cnt]
        movsxd  rdx, ebp
        movups  oword [rax+10H], xmm0
        mov     edi, 24
        mov     dword [rsp+30H], ebp
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], ecx
        mov     dword [rbx], ecx
        mov     dword [rbx+8H], 1
        mov     dword [rsp+50H], ecx
        mov     rax, qword [rax]
        mov     eax, dword [rax+rdx*4]
        mov     dword [rbx+0CH], eax
        mov     dword [rbx+4H], eax
        mov     dword [rbx+1CH], eax
        mov     dword [rbx+20H], eax
        mov     dword [rbx+24H], eax
        mov     dword [rsp+6CH], eax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+70H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+70H]
        mov     qword [rax+30H], 0
        mov     ecx, dword [rsp+6CH]
        movups  oword [rax], xmm0
        mov     esi, dword [rsp+50H]
        mov     qword [rbx+28H], rbp
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [r12+28H]
        mov     rax, qword [rbp]
        mov     ebp, dword [rsp+30H]
        cmp     dword [rsp], ebp
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [r12], esi
        mov     dword [r12+4H], ecx
        mov     dword [r12+8H], 1
        mov     dword [r12+0CH], ecx
        mov     qword [r12+10H], 0
        mov     dword [r12+18H], 0
        mov     dword [r12+1CH], ecx
        mov     dword [r12+20H], ecx
        mov     dword [r12+24H], ecx
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [r12+30H], r13
        jl      L_247
L_212:  mov     ecx, dword [rsp+30H]
        cmp     dword [rsp+40H], ecx
        jg      L_244
L_213:  mov     rdx, qword [r12+28H]
        mov     eax, dword [r12+4H]
        mov     dword [r12+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [r12+0CH], eax
        mov     rdx, qword [rcx]
        mov     rcx, qword [rcx+8H]
        test    rdx, rdx
        je      L_227
        mov     esi, dword [rdx+8H]
        mov     edi, dword [rdx+0CH]
        add     esi, 1
        add     edi, eax
        test    rcx, rcx
        mov     dword [r12+8H], esi
        mov     dword [r12+0CH], edi
        jz      L_214
        add     esi, dword [rcx+8H]
        add     edi, dword [rcx+0CH]
        mov     dword [r12+8H], esi
        mov     dword [r12+0CH], edi
L_214:  mov     dword [r12+20H], eax
        mov     r9d, dword [rdx+0CH]
        xor     r8d, r8d
        mov     ebx, dword [rdx+20H]
        mov     esi, r8d
        mov     dword [r12+1CH], eax
        mov     edi, dword [rdx+1CH]
        mov     dword [r12+24H], eax
        add     r9d, eax
        test    ebx, ebx
        cmovns  esi, dword [rdx+20H]
        mov     dword [r12+1CH], edi
        add     esi, eax
        test    rcx, rcx
        je      L_233
L_215:  mov     r11d, dword [rcx+1CH]
        xor     r10d, r10d
        add     esi, dword [rcx+0CH]
        mov     r8d, dword [rcx+20H]
        test    r11d, r11d
        mov     r11d, r10d
        cmovns  r11d, dword [rcx+1CH]
        add     r9d, r11d
        cmp     r9d, edi
        cmovl   r9d, edi
        cmp     r8d, esi
        cmovge  esi, r8d
        test    rdx, rdx
        mov     dword [r12+1CH], r9d
        mov     dword [r12+20H], esi
        je      L_232
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     edi, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [r12+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    edi, edi
        cmovns  r10d, dword [rdx+20H]
        add     eax, r10d
L_216:  mov     edx, dword [rcx+1CH]
        test    edx, edx
        mov     edx, 0
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_217:  cmp     esi, eax
        cmovge  eax, esi
        mov     dword [r12+24H], eax
        jmp     L_179





ALIGN   8
L_218:  mov     dword [r13+20H], eax
        mov     dword [r13+24H], eax
        mov     esi, eax
        mov     dword [r13+1CH], eax
        jmp     L_184

L_219:  test    rcx, rcx
        je      L_246
        mov     esi, dword [rcx+8H]
        mov     r8d, eax
        mov     r11d, eax
        add     esi, 1
        mov     dword [rbp+8H], esi
        mov     esi, dword [rcx+0CH]
        mov     dword [rbp+1CH], eax
        mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
        add     esi, eax
        mov     dword [rbp+0CH], esi
        mov     esi, eax
        jmp     L_194

L_220:  mov     esi, dword [rcx+24H]
        cmp     dword [rbp+24H], esi
        cmovge  esi, dword [rbp+24H]
        jmp     L_195

L_221:  test    rcx, rcx
        mov     esi, dword [rbp+24H]
        je      L_203
        mov     edx, dword [rcx+24H]
        cmp     esi, edx
        cmovl   esi, edx
        jmp     L_202

L_222:  mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
        mov     edi, eax
        mov     r8d, eax
        mov     esi, eax
L_223:  mov     ecx, dword [rbp+20H]
        cmp     r8d, edi
        cmovge  edi, r8d
        mov     dword [rbp+1CH], edi
        cmp     esi, ecx
        cmovl   esi, ecx
        xor     ecx, ecx
        test    rdx, rdx
        mov     dword [rbp+20H], esi
        jz      L_221
        mov     r14d, dword [rdx+20H]
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     ecx, 0
        cmovge  esi, dword [rdx+24H]
        test    r14d, r14d
        cmovns  ecx, dword [rdx+20H]
        add     eax, ecx
        jmp     L_203

L_224:  mov     rcx, qword [rcx+8H]
        test    rcx, rcx
        jz      L_222
        mov     esi, dword [rcx+8H]
        mov     edi, eax
        add     dword [rbp+8H], esi
        mov     r8d, eax
        mov     esi, dword [rcx+0CH]
        mov     dword [rbp+1CH], eax
        add     dword [rbp+0CH], esi
        mov     dword [rbp+20H], eax
        mov     esi, eax
        mov     dword [rbp+24H], eax
        jmp     L_201

L_225:  test    rcx, rcx
        je      L_249
        mov     esi, dword [rcx+8H]
        mov     edi, eax
        mov     r9d, eax
        add     esi, 1
        mov     dword [rbx+8H], esi
        mov     esi, dword [rcx+0CH]
        mov     dword [rbx+1CH], eax
        mov     dword [rbx+20H], eax
        mov     dword [rbx+24H], eax
        add     esi, eax
        mov     dword [rbx+0CH], esi
        mov     esi, eax
        jmp     L_208

L_226:  cmp     r8d, r11d
        mov     edi, r11d
        cmovge  edi, r8d
        cmp     dword [rbp+20H], esi
        cmovge  esi, dword [rbp+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [rbp+1CH], edi
        mov     dword [rbp+20H], esi
        mov     r12d, dword [rdx+20H]
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        test    r12d, r12d
        cmovns  r9d, dword [rdx+20H]
        mov     dword [rbp+24H], esi
        add     eax, r9d
        jmp     L_196

L_227:  test    rcx, rcx
        je      L_248
        mov     esi, dword [rcx+8H]
        mov     edi, eax
        mov     r9d, eax
        add     esi, 1
        mov     dword [r12+8H], esi
        mov     esi, dword [rcx+0CH]
        mov     dword [r12+1CH], eax
        mov     dword [r12+20H], eax
        mov     dword [r12+24H], eax
        add     esi, eax
        mov     dword [r12+0CH], esi
        mov     esi, eax
        jmp     L_215

L_228:  mov     dword [rbp+1CH], eax
        mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
        jmp     L_200

L_229:  mov     esi, dword [rcx+24H]
        cmp     dword [rbx+24H], esi
        cmovge  esi, dword [rbx+24H]
        jmp     L_209

L_230:  cmp     edi, r9d
        cmovl   edi, r9d
        cmp     dword [rbx+20H], esi
        cmovge  esi, dword [rbx+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [rbx+1CH], edi
        mov     dword [rbx+20H], esi
        mov     r11d, dword [rdx+20H]
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        test    r11d, r11d
        cmovns  r8d, dword [rdx+20H]
        mov     dword [rbx+24H], esi
        add     eax, r8d
        jmp     L_210

L_231:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rbp, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], rbp
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbp+0CH], 0
        mov     qword [rbp+14H], 0
        mov     qword [rbp+1CH], 0
        mov     dword [rbp+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbp], eax
        mov     rax, qword 100000000H
        mov     qword [rbp+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     rdx, rbx
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r12
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp]
        mov     r8d, dword [rsp+20H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [r12]
        mov     rdi, qword [rsp+60H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbx+28H]
        mov     qword [rbp+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax+8H]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_206

L_232:  mov     esi, dword [r12+24H]
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        jmp     L_216

L_233:  cmp     edi, r9d
        cmovl   edi, r9d
        cmp     dword [r12+20H], esi
        cmovge  esi, dword [r12+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [r12+1CH], edi
        mov     dword [r12+20H], esi
        mov     ebx, dword [rdx+20H]
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        test    ebx, ebx
        cmovns  r8d, dword [rdx+20H]
        mov     dword [r12+24H], esi
        add     eax, r8d
        jmp     L_217

L_234:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     r12, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbp+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], r12
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [r12+0CH], 0
        mov     qword [r12+14H], 0
        mov     qword [r12+1CH], 0
        mov     dword [r12+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [r12], eax
        mov     rax, qword 100000000H
        mov     qword [r12+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r13], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     edi, 56
        mov     qword [rax+30H], 0
        mov     qword [r12+28H], r13
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        movaps  oword [rsp+20H], xmm0
        mov     rax, qword [r13]
        mov     dword [rsp+10H], ecx
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbp+28H]
        mov     qword [r12+30H], 0
        mov     rax, qword [rax]
        mov     r12, qword [rax+8H]
        mov     eax, dword [rsp+68H]
        add     eax, ecx
        sar     eax, 1
        mov     r14d, eax
        call    _Znwm
        movdqa  xmm0, oword [rsp+20H]
        mov     r13, rax
        mov     qword [rax+30H], 0
        movsxd  rdx, r14d
        mov     edi, 24
        movups  oword [rax+10H], xmm0
        mov     dword [rsp], r14d
        movups  oword [rax+20H], xmm0
        mov     eax, dword [rel LL_id_cnt]
        mov     dword [r13+8H], 1
        lea     esi, [rax+1H]
        mov     rax, qword [rel LL_din]
        mov     dword [rel LL_id_cnt], esi
        mov     dword [r13], esi
        mov     rax, qword [rax]
        mov     dword [rsp+20H], esi
        mov     eax, dword [rax+rdx*4]
        mov     dword [r13+0CH], eax
        mov     dword [r13+4H], eax
        mov     dword [r13+1CH], eax
        mov     dword [r13+20H], eax
        mov     dword [r13+24H], eax
        mov     dword [rsp+30H], eax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r14, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r14], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r14+10H], rdx
        mov     qword [r14+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r14]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+40H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+40H]
        mov     qword [rax+30H], 0
        mov     ecx, dword [rsp+30H]
        movups  oword [rax], xmm0
        mov     esi, dword [rsp+20H]
        mov     qword [r13+28H], r14
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rdx, qword [r12+28H]
        mov     rax, qword [r14]
        mov     r14d, dword [rsp]
        cmp     dword [rsp+10H], r14d
        mov     rdx, qword [rdx]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     dword [r12], esi
        mov     dword [r12+4H], ecx
        mov     dword [r12+8H], 1
        mov     dword [r12+0CH], ecx
        mov     qword [r12+10H], 0
        mov     dword [r12+18H], 0
        mov     dword [r12+1CH], ecx
        mov     dword [r12+20H], ecx
        mov     dword [r12+24H], ecx
        mov     qword [rdx], 0
        mov     rax, qword [rax+8H]
        mov     qword [rdx+8H], rax
        mov     qword [r12+30H], rbp
        jl      L_253
L_235:  mov     ecx, dword [rsp]
        cmp     dword [rsp+68H], ecx
        jg      L_251
L_236:  mov     rdx, qword [r12+28H]
        mov     eax, dword [r12+4H]
        mov     dword [r12+8H], 1
        mov     rcx, qword [rdx]
        mov     dword [r12+0CH], eax
        mov     rdx, qword [rcx]
        mov     rcx, qword [rcx+8H]
        test    rdx, rdx
        je      L_250
        mov     esi, dword [rdx+8H]
        mov     edi, dword [rdx+0CH]
        add     esi, 1
        add     edi, eax
        test    rcx, rcx
        mov     dword [r12+8H], esi
        mov     dword [r12+0CH], edi
        jz      L_237
        add     esi, dword [rcx+8H]
        add     edi, dword [rcx+0CH]
        mov     dword [r12+8H], esi
        mov     dword [r12+0CH], edi
L_237:  mov     dword [r12+20H], eax
        mov     r11d, dword [rdx+0CH]
        xor     edi, edi
        mov     r14d, dword [rdx+20H]
        mov     esi, edi
        mov     dword [r12+1CH], eax
        mov     r8d, dword [rdx+1CH]
        mov     dword [r12+24H], eax
        add     r11d, eax
        test    r14d, r14d
        cmovns  esi, dword [rdx+20H]
        mov     dword [r12+1CH], r8d
        add     esi, eax
        test    rcx, rcx
        je      L_255
L_238:  mov     r13d, dword [rcx+1CH]
        xor     r9d, r9d
        add     esi, dword [rcx+0CH]
        mov     edi, r9d
        mov     r10d, dword [rcx+20H]
        test    r13d, r13d
        cmovns  edi, dword [rcx+1CH]
        add     edi, r11d
        cmp     edi, r8d
        cmovl   edi, r8d
        cmp     r10d, esi
        cmovge  esi, r10d
        test    rdx, rdx
        mov     dword [r12+1CH], edi
        mov     dword [r12+20H], esi
        je      L_254
        cmp     dword [rdx+24H], eax
        mov     esi, eax
        mov     edi, dword [rdx+20H]
        cmovge  esi, dword [rdx+24H]
        mov     dword [r12+24H], esi
        cmp     dword [rcx+24H], esi
        cmovge  esi, dword [rcx+24H]
        test    edi, edi
        cmovns  r9d, dword [rdx+20H]
        add     eax, r9d
L_239:  mov     r14d, dword [rcx+1CH]
        mov     edx, 0
        test    r14d, r14d
        cmovns  edx, dword [rcx+1CH]
        add     eax, edx
L_240:  cmp     esi, eax
        cmovge  eax, esi
        mov     dword [r12+24H], eax
        jmp     L_192

L_241:  mov     edi, 56
        movaps  oword [rsp+20H], xmm0
        call    _Znwm
        mov     r12, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+20H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbp+28H]
        mov     rax, qword [rax]
        mov     qword [rax], r12
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [r12+0CH], 0
        mov     qword [r12+14H], 0
        mov     qword [r12+1CH], 0
        mov     dword [r12+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [r12], eax
        mov     rax, qword 100000000H
        mov     qword [r12+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r13], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+20H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+20H]
        mov     rdx, rbp
        mov     qword [rax+30H], 0
        mov     qword [r12+28H], r13
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp]
        mov     rdi, qword [rsp+60H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        lea     r8d, [rcx-1H]
        mov     rax, qword [r13]
        mov     ecx, dword [rsp+10H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbp+28H]
        mov     qword [r12+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_191

L_242:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     r12, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbp+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], r12
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [r12+0CH], 0
        mov     qword [r12+14H], 0
        mov     qword [r12+1CH], 0
        mov     dword [r12+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [r12], eax
        mov     rax, qword 100000000H
        mov     qword [r12+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r13], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+10H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+10H]
        mov     rdx, rbp
        mov     qword [rax+30H], 0
        mov     qword [r12+28H], r13
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp+20H]
        mov     r8d, dword [rsp+30H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [r13]
        mov     rdi, qword [rsp+60H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbp+28H]
        mov     qword [r12+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax+8H]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_199

L_243:  mov     edi, 56
        movaps  oword [rsp+30H], xmm0
        call    _Znwm
        mov     rbp, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+30H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     qword [rax], rbp
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbp+0CH], 0
        mov     qword [rbp+14H], 0
        mov     qword [rbp+1CH], 0
        mov     dword [rbp+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbp], eax
        mov     rax, qword 100000000H
        mov     qword [rbp+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r12, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r12], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r12+10H], rdx
        mov     qword [r12+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r12]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+30H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+30H]
        mov     rdx, rbx
        mov     qword [rax+30H], 0
        mov     qword [rbp+28H], r12
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp]
        mov     rdi, qword [rsp+60H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        lea     r8d, [rcx-1H]
        mov     rax, qword [r12]
        mov     ecx, dword [rsp+10H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbx+28H]
        mov     qword [rbp+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_205

L_244:  mov     edi, 56
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rbx, rax
        mov     qword [rax+30H], 0
        mov     edi, 24
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], rbx
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbx+0CH], 0
        mov     qword [rbx+14H], 0
        mov     qword [rbx+1CH], 0
        mov     dword [rbx+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbx], eax
        mov     rax, qword 100000000H
        mov     qword [rbx+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp]
        mov     rdx, r12
        mov     qword [rax+30H], 0
        mov     qword [rbx+28H], rbp
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp+30H]
        mov     r8d, dword [rsp+40H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        add     ecx, 1
        mov     rax, qword [rbp]
        mov     rdi, qword [rsp+60H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [r12+28H]
        mov     qword [rbx+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax+8H]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_213

L_245:  mov     edi, 56
        movaps  oword [rsp+40H], xmm0
        call    _Znwm
        mov     r12, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+40H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [rbp+28H]
        mov     rax, qword [rax]
        mov     qword [rax], r12
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [r12+0CH], 0
        mov     qword [r12+14H], 0
        mov     qword [r12+1CH], 0
        mov     dword [r12+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [r12], eax
        mov     rax, qword 100000000H
        mov     qword [r12+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r13, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r13], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r13+10H], rdx
        mov     qword [r13+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [r13]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+40H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+40H]
        mov     rdx, rbp
        mov     qword [rax+30H], 0
        mov     qword [r12+28H], r13
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp+20H]
        mov     rdi, qword [rsp+60H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        lea     r8d, [rcx-1H]
        mov     rax, qword [r13]
        mov     ecx, dword [rsp+10H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [rbp+28H]
        mov     qword [r12+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_198

L_246:  mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
        mov     esi, eax
        mov     dword [rbp+1CH], eax
        jmp     L_196

L_247:  mov     edi, 56
        movaps  oword [rsp+50H], xmm0
        call    _Znwm
        mov     rbx, rax
        mov     edi, 24
        movdqa  xmm0, oword [rsp+50H]
        mov     qword [rax+30H], 0
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     qword [rax], rbx
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [rbx+0CH], 0
        mov     qword [rbx+14H], 0
        mov     qword [rbx+1CH], 0
        mov     dword [rbx+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [rbx], eax
        mov     rax, qword 100000000H
        mov     qword [rbx+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     rbp, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [rbp], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rbp+10H], rdx
        mov     qword [rbp+8H], rdx
        call    _Znwm
        pxor    xmm0, xmm0
        mov     rdx, qword [rbp]
        mov     qword [rax+30H], 0
        mov     edi, 56
        movups  oword [rax], xmm0
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        movaps  oword [rsp+50H], xmm0
        mov     qword [rdx], rax
        call    _Znwm
        movdqa  xmm0, oword [rsp+50H]
        mov     rdx, r12
        mov     qword [rax+30H], 0
        mov     qword [rbx+28H], rbp
        movups  oword [rax], xmm0
        mov     ecx, dword [rsp+30H]
        mov     rdi, qword [rsp+60H]
        movups  oword [rax+10H], xmm0
        movups  oword [rax+20H], xmm0
        lea     r8d, [rcx-1H]
        mov     rax, qword [rbp]
        mov     ecx, dword [rsp]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     rax, qword [r12+28H]
        mov     qword [rbx+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_212

L_248:  mov     dword [r12+20H], eax
        mov     dword [r12+24H], eax
        mov     esi, eax
        mov     dword [r12+1CH], eax
        jmp     L_217

L_249:  mov     dword [rbx+20H], eax
        mov     dword [rbx+24H], eax
        mov     esi, eax
        mov     dword [rbx+1CH], eax
        jmp     L_210

L_250:  test    rcx, rcx
        je      L_252
        mov     esi, dword [rcx+8H]
        mov     r8d, eax
        mov     r11d, eax
        add     esi, 1
        mov     dword [r12+8H], esi
        mov     esi, dword [rcx+0CH]
        mov     dword [r12+1CH], eax
        mov     dword [r12+20H], eax
        mov     dword [r12+24H], eax
        add     esi, eax
        mov     dword [r12+0CH], esi
        mov     esi, eax
        jmp     L_238

L_251:  mov     edi, 56
        call    _Znwm
        mov     r13, rax
        mov     ecx, 14
        xor     eax, eax
        mov     rdi, r13
        rep stosd
        mov     edi, 24
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     qword [rax+8H], r13
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [r13+0CH], 0
        mov     qword [r13+14H], 0
        mov     qword [r13+1CH], 0
        mov     dword [r13+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [r13], eax
        mov     rax, qword 100000000H
        mov     qword [r13+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r14, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r14], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r14+10H], rdx
        mov     qword [r14+8H], rdx
        call    _Znwm
        xor     esi, esi
        mov     rdx, rax
        mov     rdi, rax
        mov     ecx, 14
        mov     eax, esi
        mov     dword [rsp+10H], esi
        rep stosd
        mov     rax, qword [r14]
        mov     edi, 56
        mov     qword [rax], rdx
        call    _Znwm
        mov     esi, dword [rsp+10H]
        mov     rdi, rax
        mov     ecx, 14
        mov     qword [r13+28H], r14
        mov     r8d, dword [rsp+68H]
        mov     rdx, r12
        mov     eax, esi
        rep stosd
        mov     rax, qword [r14]
        mov     ecx, dword [rsp]
        mov     rdi, qword [rsp+60H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        add     ecx, 1
        mov     rax, qword [r12+28H]
        mov     qword [r13+30H], 0
        mov     rax, qword [rax]
        mov     rsi, qword [rax+8H]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_236

L_252:  mov     dword [r12+20H], eax
        mov     dword [r12+24H], eax
        mov     esi, eax
        mov     dword [r12+1CH], eax
        jmp     L_240

L_253:  mov     edi, 56
        call    _Znwm
        mov     r13, rax
        mov     ecx, 14
        xor     eax, eax
        mov     rdi, r13
        rep stosd
        mov     edi, 24
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     qword [rax], r13
        mov     eax, dword [rel LL_id_cnt]
        mov     qword [r13+0CH], 0
        mov     qword [r13+14H], 0
        mov     qword [r13+1CH], 0
        mov     dword [r13+24H], 0
        add     eax, 1
        mov     dword [rel LL_id_cnt], eax
        mov     dword [r13], eax
        mov     rax, qword 100000000H
        mov     qword [r13+4H], rax
        call    _Znwm
        mov     edi, 16
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [rax+10H], 0
        mov     r14, rax
        call    _Znwm
        lea     rdx, [rax+10H]
        mov     qword [r14], rax
        mov     edi, 56
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        mov     qword [r14+10H], rdx
        mov     qword [r14+8H], rdx
        call    _Znwm
        xor     esi, esi
        mov     rdx, rax
        mov     rdi, rax
        mov     ecx, 14
        mov     eax, esi
        mov     dword [rsp+20H], esi
        rep stosd
        mov     rax, qword [r14]
        mov     edi, 56
        mov     qword [rax], rdx
        call    _Znwm
        mov     esi, dword [rsp+20H]
        mov     rdi, rax
        mov     ecx, 14
        mov     qword [r13+28H], r14
        mov     rdx, r12
        mov     eax, esi
        rep stosd
        mov     rax, qword [r14]
        mov     ecx, dword [rsp]
        mov     rdi, qword [rsp+60H]
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        lea     r8d, [rcx-1H]
        mov     rax, qword [r12+28H]
        mov     qword [r13+30H], 0
        mov     ecx, dword [rsp+10H]
        mov     rax, qword [rax]
        mov     rsi, qword [rax]
        call    _ZN10splay_tree5buildEP4NodeS1_ii
        jmp     L_235

L_254:  mov     esi, dword [rcx+24H]
        cmp     dword [r12+24H], esi
        cmovge  esi, dword [r12+24H]
        jmp     L_239

L_255:  cmp     r8d, r11d
        mov     ecx, r11d
        cmovge  ecx, r8d
        cmp     dword [r12+20H], esi
        cmovge  esi, dword [r12+20H]
        cmp     dword [rdx+24H], eax
        mov     dword [r12+1CH], ecx
        mov     dword [r12+20H], esi
        mov     esi, eax
        cmovge  esi, dword [rdx+24H]
        cmp     dword [rdx+20H], 0
        cmovns  edi, dword [rdx+20H]
        mov     dword [r12+24H], esi
        add     eax, edi
        jmp     L_240

L_256:  mov     rbx, rax
        mov     rdi, r14
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
        jmp     L_256

L_257:  mov     rbx, rax
        mov     rdi, r12
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
        jmp     L_257

L_258:  mov     rbx, rax
        mov     rdi, r13
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
L_259:  test    rcx, rcx
        mov     esi, dword [rbx+24H]
        je      L_177
        mov     edx, dword [rcx+24H]
        cmp     esi, edx
        cmovl   esi, edx
        jmp     L_176


        jmp     L_258


        jmp     L_256


        jmp     L_256


        jmp     L_257

L_260:  mov     rbx, rax
        mov     rdi, rbp
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
L_261:  mov     esi, dword [rcx+8H]
        mov     r9d, eax
        add     dword [rbx+8H], esi
        mov     r10d, eax
        mov     esi, dword [rcx+0CH]
        mov     dword [rbx+1CH], eax
        add     dword [rbx+0CH], esi
        mov     dword [rbx+20H], eax
        mov     esi, eax
        mov     dword [rbx+24H], eax
        jmp     L_175


        mov     rbp, rax
        mov     rdi, rbx
        call    _ZdlPv
        mov     rdi, rbp
        call    _Unwind_Resume
        jmp     L_260

        jmp     L_257

        jmp     L_260

        jmp     L_260

        jmp     L_257

        jmp     L_258

        jmp     L_258

        jmp     L_257

        jmp     L_258

        jmp     L_260

        jmp     L_258

        jmp     L_260

        jmp     L_257

        jmp     L_260


SECTION .gcc_except_table._ZN10splay_tree10build_treeEii 

        db 0FFH, 0FFH, 01H, 0B0H, 02H, 28H, 45H, 00H
        db 00H, 8CH, 01H, 05H, 0F1H, 5EH, 00H, 0B4H
        db 01H, 0E6H, 01H, 00H, 00H, 0B9H, 03H, 05H
        db 86H, 5FH, 00H, 0E4H, 03H, 0E3H, 05H, 00H
        db 00H, 0E6H, 09H, 05H, 84H, 5FH, 00H, 8FH
        db 0AH, 0FAH, 01H, 00H, 00H, 0A8H, 0CH, 05H
        db 0B4H, 5EH, 00H, 0D1H, 0CH, 0ACH, 04H, 00H
        db 00H, 9CH, 11H, 05H, 0BCH, 5EH, 00H, 0C5H
        db 11H, 0F1H, 01H, 00H, 00H, 0D5H, 13H, 05H
        db 0BAH, 5EH, 00H, 80H, 14H, 0B8H, 06H, 00H
        db 00H, 0D7H, 1AH, 05H, 0F3H, 5DH, 00H, 82H
        db 1BH, 8AH, 02H, 00H, 00H, 0ABH, 1DH, 05H
        db 0F1H, 5DH, 00H, 0D3H, 1DH, 0BBH, 04H, 00H
        db 00H, 0ADH, 22H, 05H, 9EH, 5FH, 00H, 0D8H
        db 22H, 85H, 02H, 00H, 00H, 0FCH, 24H, 05H
        db 99H, 5FH, 00H, 0A5H, 25H, 0BAH, 04H, 00H
        db 00H, 0FEH, 29H, 05H, 8DH, 5FH, 00H, 0A7H
        db 2AH, 0F9H, 01H, 00H, 00H, 0BFH, 2CH, 05H
        db 8FH, 5FH, 00H, 0EAH, 2CH, 0B3H, 04H, 00H
        db 00H, 0BCH, 31H, 05H, 8BH, 5FH, 00H, 0E5H
        db 31H, 0F8H, 01H, 00H, 00H, 0FCH, 33H, 05H
        db 0AFH, 5FH, 00H, 0A5H, 34H, 0B1H, 08H, 00H
        db 00H, 0F5H, 3CH, 05H, 86H, 5EH, 00H, 0A0H
        db 3DH, 0DEH, 02H, 00H, 00H, 9DH, 40H, 05H
        db 0AAH, 5FH, 00H, 0C6H, 40H, 89H, 02H, 00H
        db 00H, 0EEH, 42H, 05H, 0B8H, 5EH, 00H, 96H
        db 43H, 0EAH, 04H, 00H, 00H, 9FH, 48H, 05H
        db 0A3H, 5FH, 00H, 0C8H, 48H, 92H, 02H, 00H
        db 00H, 0F9H, 4AH, 05H, 94H, 5FH, 00H, 0A2H
        db 4BH, 93H, 02H, 00H, 00H, 0D4H, 4DH, 05H
        db 0B1H, 5FH, 00H, 0FFH, 4DH, 89H, 02H, 00H
        db 00H, 0A7H, 50H, 05H, 0A8H, 5FH, 00H, 0D0H
        db 50H, 97H, 02H, 00H, 00H, 86H, 53H, 05H
        db 88H, 5EH, 00H, 0AFH, 53H, 0A2H, 02H, 00H
        db 00H, 0F0H, 55H, 05H, 0B6H, 5FH, 00H, 99H
        db 56H, 0E2H, 02H, 00H, 00H, 9AH, 59H, 05H
        db 0B6H, 5EH, 00H, 0C2H, 59H, 86H, 02H, 00H
        db 00H, 0E7H, 5BH, 05H, 0DEH, 5DH, 00H, 8FH
        db 5CH, 0F5H, 02H, 00H, 00H


SECTION .text._ZN10splay_tree3rolEii 6

_ZN10splay_tree3rolEii:
        push    r12
        push    rbp
        add     edx, 1
        push    rbx
        mov     rbx, qword [rdi]
        mov     rbp, rdi
        mov     r12d, esi
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     rcx, qword [rax]
        mov     eax, 1
        test    rcx, rcx
        jz      L_262
        mov     eax, dword [rcx+8H]
        add     eax, 1
L_262:  xor     r8d, r8d
L_263:  add     eax, r8d
        cmp     edx, eax
        jz      L_267
L_264:  mov     rcx, qword [rbx+28H]
        mov     rcx, qword [rcx]
        jge     L_291
        mov     rbx, qword [rcx]
L_265:  xor     r9d, r9d
        cmp     dword [rbx+10H], 1
        mov     rdi, qword [rbx+28H]
        mov     rcx, qword [rdi]
        je      L_278
        cmp     dword [rbx+18H], 1
        je      L_281
L_266:  mov     rcx, qword [rcx]
        mov     eax, 1
        test    rcx, rcx
        jz      L_263
        mov     eax, dword [rcx+8H]
        add     eax, 1
        add     eax, r8d
        cmp     edx, eax
        jnz     L_264
L_267:  xor     esi, esi
        mov     rdi, rbx
        sub     r12d, 1
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [rbx+28H]
        mov     qword [rbp], rbx
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_268
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_268:  xor     r8d, r8d
L_269:  add     eax, r8d
        cmp     r12d, eax
        jz      L_273
L_270:  mov     rdx, qword [rbx+28H]
        mov     rdx, qword [rdx]
        jge     L_292
        mov     rbx, qword [rdx]
L_271:  xor     edi, edi
        cmp     dword [rbx+10H], 1
        mov     rsi, qword [rbx+28H]
        mov     rdx, qword [rsi]
        je      L_285
        cmp     dword [rbx+18H], 1
        je      L_288
L_272:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_269
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, r8d
        cmp     r12d, eax
        jnz     L_270
L_273:  mov     rsi, qword [rbp]
        mov     rdi, rbx
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [rbx+28H]
        mov     rax, qword [rax]
        mov     rbx, qword [rax+8H]
        cmp     dword [rbx+10H], 1
        mov     rsi, qword [rbx+28H]
        je      L_300
L_274:  mov     edx, dword [rbx+18H]
        mov     rax, qword [rsi]
        cmp     edx, 1
        je      L_295
        mov     rcx, qword [rax+8H]
        xor     edx, 01H
L_275:  mov     rdi, qword [rax]
        mov     qword [rax], rcx
        cmp     edx, 1
        mov     ecx, dword [rbx+20H]
        mov     qword [rax+8H], rdi
        mov     eax, dword [rbx+1CH]
        mov     dword [rbx+18H], edx
        mov     dword [rbx+1CH], ecx
        mov     dword [rbx+20H], eax
        je      L_297
L_276:  mov     rdi, rbx
        xor     esi, esi
        call    _ZN4Node5rottoEPS_
        mov     qword [rbp], rbx
        pop     rbx
        pop     rbp
        pop     r12
        ret





ALIGN   8
L_277:  mov     r9d, 1
L_278:  mov     rax, qword [rcx+r9*8]
        test    rax, rax
        jz      L_280
        mov     esi, dword [rbx+14H]
        mov     r10d, dword [rax+8H]
        imul    r10d, esi
        test    esi, esi
        mov     dword [rax+4H], esi
        mov     dword [rax+0CH], r10d
        js      L_293
        mov     dword [rax+1CH], r10d
        mov     dword [rax+20H], r10d
        mov     dword [rax+24H], r10d
L_279:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], esi
L_280:  cmp     r9, 1
        jnz     L_277
        cmp     dword [rbx+18H], 1
        mov     dword [rbx+10H], 0
        mov     rcx, qword [rdi]
        jne     L_266
L_281:  mov     rax, qword [rcx]
        test    rax, rax
        jz      L_282
        mov     rsi, qword [rax+28H]
        mov     rsi, qword [rsi]
        mov     rdi, qword [rsi]
        mov     r9, qword [rsi+8H]
        mov     qword [rsi+8H], rdi
        mov     qword [rsi], r9
        mov     edi, dword [rax+20H]
        mov     esi, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], esi
L_282:  mov     rax, qword [rcx+8H]
        test    rax, rax
        jz      L_283
        mov     rsi, qword [rax+28H]
        mov     rsi, qword [rsi]
        mov     rdi, qword [rsi]
        mov     r9, qword [rsi+8H]
        mov     qword [rsi+8H], rdi
        mov     qword [rsi], r9
        mov     edi, dword [rax+20H]
        mov     esi, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], esi
L_283:  mov     dword [rbx+18H], 0
        jmp     L_266

L_284:  mov     edi, 1
L_285:  mov     rax, qword [rdx+rdi*8]
        test    rax, rax
        jz      L_287
        mov     ecx, dword [rbx+14H]
        mov     r9d, dword [rax+8H]
        imul    r9d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r9d
        js      L_294
        mov     dword [rax+1CH], r9d
        mov     dword [rax+20H], r9d
        mov     dword [rax+24H], r9d
L_286:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_287:  cmp     rdi, 1
        jnz     L_284
        cmp     dword [rbx+18H], 1
        mov     dword [rbx+10H], 0
        mov     rdx, qword [rsi]
        jne     L_272
L_288:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_289
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rsi, qword [rcx]
        mov     rdi, qword [rcx+8H]
        mov     qword [rcx+8H], rsi
        mov     qword [rcx], rdi
        mov     esi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], ecx
L_289:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_290
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rsi, qword [rcx]
        mov     rdi, qword [rcx+8H]
        mov     qword [rcx+8H], rsi
        mov     qword [rcx], rdi
        mov     esi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], ecx
L_290:  mov     dword [rbx+18H], 0
        jmp     L_272





ALIGN   8
L_291:  mov     rbx, qword [rcx+8H]
        mov     r8d, eax
        jmp     L_265





ALIGN   8
L_292:  mov     rbx, qword [rdx+8H]
        mov     r8d, eax
        jmp     L_271





ALIGN   8
L_293:  mov     dword [rax+1CH], esi
        mov     dword [rax+20H], esi
        mov     dword [rax+24H], esi
        jmp     L_279





ALIGN   8
L_294:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_286





ALIGN   8
L_295:  mov     rcx, qword [rax]
        test    rcx, rcx
        jz      L_296
        mov     rdi, qword [rcx+28H]
        mov     rdi, qword [rdi]
        mov     r8, qword [rdi]
        mov     r9, qword [rdi+8H]
        mov     qword [rdi+8H], r8
        mov     qword [rdi], r9
        mov     r8d, dword [rcx+20H]
        mov     edi, dword [rcx+1CH]
        xor     dword [rcx+18H], 01H
        mov     dword [rcx+1CH], r8d
        mov     dword [rcx+20H], edi
L_296:  mov     rcx, qword [rax+8H]
        test    rcx, rcx
        je      L_275
        mov     rdi, qword [rcx+28H]
        mov     rdi, qword [rdi]
        mov     r8, qword [rdi]
        mov     r9, qword [rdi+8H]
        mov     qword [rdi+8H], r8
        mov     qword [rdi], r9
        mov     r8d, dword [rcx+20H]
        mov     edi, dword [rcx+1CH]
        xor     dword [rcx+18H], 01H
        mov     dword [rcx+1CH], r8d
        mov     dword [rcx+20H], edi
        mov     rcx, qword [rax+8H]
        jmp     L_275





ALIGN   8
L_297:  mov     rcx, qword [rsi]
        mov     rax, qword [rcx]
        test    rax, rax
        jz      L_298
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rsi, qword [rdx]
        mov     rdi, qword [rdx+8H]
        mov     qword [rdx+8H], rsi
        mov     qword [rdx], rdi
        mov     esi, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], edx
L_298:  mov     rax, qword [rcx+8H]
        test    rax, rax
        jz      L_299
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rcx, qword [rdx]
        mov     rsi, qword [rdx+8H]
        mov     qword [rdx+8H], rcx
        mov     qword [rdx], rsi
        mov     ecx, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], edx
L_299:  mov     dword [rbx+18H], 0
        jmp     L_276





ALIGN   8
L_300:  mov     r8, qword [rsi]
        xor     ecx, ecx
L_301:  mov     rax, qword [r8+rcx*8]
        test    rax, rax
        jz      L_303
        mov     edx, dword [rbx+14H]
        mov     edi, dword [rax+8H]
        imul    edi, edx
        test    edx, edx
        mov     dword [rax+4H], edx
        mov     dword [rax+0CH], edi
        js      L_305
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], edi
        mov     dword [rax+24H], edi
L_302:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], edx
L_303:  cmp     rcx, 1
        jnz     L_304
        mov     dword [rbx+10H], 0
        jmp     L_274






ALIGN   16
L_304:  mov     ecx, 1
        jmp     L_301






ALIGN   16
L_305:  mov     dword [rax+1CH], edx
        mov     dword [rax+20H], edx
        mov     dword [rax+24H], edx
        jmp     L_302



SECTION .rodata.str1.1 

LC2:
        db 25H, 64H, 00H

LC3:
        db 30H, 0AH, 00H

LC4:
        db 0AH, 00H

LC5:
        db 49H, 44H, 00H


SECTION .text._ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z 6

_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z:
        push    rbp
        mov     r10, rsi
        mov     rsi, rdx
        mov     rdx, rcx
        mov     rbp, rsp
        push    r12
        push    rbx
        mov     r12, rdi
        sub     rsp, 208
        test    al, al
        mov     qword [rbp-0A0H], r8
        mov     qword [rbp-98H], r9
        jz      L_306
        movaps  oword [rbp-90H], xmm0
        movaps  oword [rbp-80H], xmm1
        movaps  oword [rbp-70H], xmm2
        movaps  oword [rbp-60H], xmm3
        movaps  oword [rbp-50H], xmm4
        movaps  oword [rbp-40H], xmm5
        movaps  oword [rbp-30H], xmm6
        movaps  oword [rbp-20H], xmm7
L_306:


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-0C8H], rax
        xor     eax, eax
        lea     rax, [rsi+1EH]
        lea     rcx, [rbp-0E0H]
        and     rax, 0FFFFFFFFFFFFFFF0H
        mov     dword [rbp-0E0H], 32
        mov     dword [rbp-0DCH], 48
        sub     rsp, rax
        lea     rax, [rbp+10H]
        lea     rbx, [rsp+0FH]
        mov     qword [rbp-0D8H], rax
        lea     rax, [rbp-0C0H]
        and     rbx, 0FFFFFFFFFFFFFFF0H
        mov     rdi, rbx
        mov     qword [rbp-0D0H], rax
        call    r10
        lea     rdx, [r12+10H]
        mov     rdi, r12
        mov     rsi, rbx
        mov     qword [r12], rdx
        movsxd  rdx, eax
        add     rdx, rbx
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30
        mov     rdi, qword [rbp-0C8H]


        xor     rdi, qword [fs:abs 28H]
        mov     rax, r12
        jnz     L_307
        lea     rsp, [rbp-10H]
        pop     rbx
        pop     r12
        pop     rbp
        ret


L_307:

        call    __stack_chk_fail


SECTION .text._Z14__lib_toStringi 6

_Z14__lib_toStringi:
        push    r12
        push    rbp
        lea     rcx, [rel LC2]
        push    rbx
        mov     r8d, edi
        mov     edx, 16
        sub     rsp, 48

        mov     rsi, qword [rel vsnprintf+$+??]


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+28H], rax
        xor     eax, eax
        mov     rbx, rsp
        mov     rdi, rbx
        call    _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
        mov     edi, 32
        call    _Znwm
        mov     rsi, qword [rsp]
        mov     rdx, qword [rsp+8H]
        mov     rbp, rax
        lea     rax, [rax+10H]
        mov     rdi, rbp
        mov     qword [rbp], rax
        add     rdx, rsi
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30
        mov     rdi, qword [rsp]
        add     rbx, 16
        cmp     rdi, rbx
        jz      L_308
        call    _ZdlPv
L_308:  mov     rcx, qword [rsp+28H]


        xor     rcx, qword [fs:abs 28H]
        mov     rax, rbp
        jnz     L_309
        add     rsp, 48
        pop     rbx
        pop     rbp
        pop     r12
        ret


L_309:
        call    __stack_chk_fail
        mov     r12, rax
        mov     rdi, rbp
        mov     rbp, r12
        call    _ZdlPv
L_310:  mov     rdi, qword [rsp]
        add     rbx, 16
        cmp     rdi, rbx
        jz      L_311
        call    _ZdlPv
L_311:  mov     rdi, rbp
        call    _Unwind_Resume
        mov     rbp, rax
        jmp     L_310


SECTION .gcc_except_table._Z14__lib_toStringi 

        db 0FFH, 0FFH, 01H, 13H, 34H, 05H, 00H, 00H
        db 3EH, 05H, 0BDH, 01H, 00H, 5DH, 05H, 95H
        db 01H, 00H, 0B8H, 01H, 05H, 00H, 00H


SECTION .text.startup 6

main:
        push    r15
        push    r14
        lea     rdi, [rel LC2]
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 136
        lea     rbx, [rsp+4CH]


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+78H], rax
        xor     eax, eax
        mov     rsi, rbx
        call    scanf
        mov     eax, dword [rsp+4CH]
        lea     rdi, [rel LC2]
        mov     rsi, rbx
        mov     dword [rel LL_n], eax
        xor     eax, eax
        call    scanf
        mov     eax, dword [rsp+4CH]
        mov     edi, 8
        mov     dword [rel LL_m], eax
        call    _Znwm
        mov     edi, 8
        mov     qword [rax], 0
        mov     qword [rel LL_sp], rax
        call    _Znwm
        mov     qword [rax], 0
        mov     qword [rel LL_dintree], rax
        mov     rax, qword [rel LL_din]
        mov     r13, qword [rax]
        mov     eax, dword [rel LL_INF]
        neg     eax
        mov     dword [r13], eax
        mov     eax, dword [rel LL_n]
        mov     edx, dword [rel LL_INF]
        add     eax, 1
        neg     edx
        cdqe
        mov     dword [r13+rax*4], edx
        mov     edx, dword [rel LL_n]
        test    edx, edx
        jle     L_314
        mov     r12d, 4
        mov     ebp, 1
        lea     r14, [rel LC2]
        jmp     L_313






ALIGN   16
L_312:  mov     rax, qword [rel LL_din]
        mov     r13, qword [rax]
L_313:  xor     eax, eax
        mov     rsi, rbx
        mov     rdi, r14
        call    scanf
        mov     eax, dword [rsp+4CH]
        add     ebp, 1
        mov     dword [r13+r12], eax
        mov     edx, dword [rel LL_n]
        add     r12, 4
        cmp     edx, ebp
        jge     L_312
L_314:  mov     rdi, qword [rel LL_sp]
        add     edx, 1
        xor     esi, esi
        call    _ZN10splay_tree10build_treeEii
        mov     eax, dword [rel LL_m]
        test    eax, eax
        jle     L_322
        mov     r15d, 1
        jmp     L_316





ALIGN   16
L_315:  add     r15d, 1
        cmp     dword [rel LL_m], r15d
        jl      L_322
L_316:  call    _Z15__lib_getStringv
        mov     rcx, qword [rel LL_char_ID]
        mov     rdx, qword [rax]
        mov     rbp, rax
        mov     rcx, qword [rcx]
        movzx   eax, byte [rdx]
        cmp     byte [rcx], al
        je      L_391
L_317:  cmp     byte [rcx+1H], al
        je      L_355
L_318:  cmp     al, 82
        je      L_354
L_319:  cmp     al, 71
        je      L_323
L_320:  cmp     al, 77
        jnz     L_315
        cmp     byte [rdx+2H], 75
        je      L_394
        mov     rbp, qword [rel LL_sp]
        mov     rdi, qword [rbp]
        call    _ZN4Node9push_downEv
        mov     rax, qword [rbp]
        mov     edi, dword [rax+24H]
        call    _Z14__lib_toStringi
        mov     edi, 32
        mov     r14, rax
        call    _Znwm
        lea     rsi, [rel LC4]
        mov     rdi, rax
        mov     r13, rax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.35
        lea     rbp, [rsp+50H]
        mov     edi, 32
        call    _Znwm
        mov     r12, rax
        lea     rax, [rbp+10H]
        mov     rdx, qword [r14+8H]
        mov     rdi, rbp
        mov     qword [rsp+50H], rax
        mov     rsi, qword [r14]
        add     rdx, rsi
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30
        mov     rdx, qword [r13+8H]
        mov     rsi, qword [r13]
        mov     rdi, rbp
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
        mov     rsi, qword [rsp+50H]
        mov     rdx, qword [rsp+58H]
        lea     rax, [r12+10H]
        mov     rdi, r12
        mov     qword [r12], rax
        add     rdx, rsi
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.30
        mov     rdi, qword [rsp+50H]
        add     rbp, 16
        cmp     rdi, rbp
        jz      L_321
        call    _ZdlPv
L_321:  mov     rsi, qword [rel stdout]
        mov     rdi, qword [r12]
        add     r15d, 1
        call    fputs
        cmp     dword [rel LL_m], r15d
        jge     L_316




ALIGN   8
L_322:  xor     eax, eax
        mov     rbx, qword [rsp+78H]


        xor     rbx, qword [fs:abs 28H]
        jne     L_474
        add     rsp, 136
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret

L_323:  lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        call    scanf
        lea     rdi, [rel LC2]
        xor     eax, eax
        mov     rsi, rbx
        mov     r14d, dword [rsp+4CH]
        call    scanf
        mov     eax, dword [rsp+4CH]
        test    eax, eax
        jle     L_439
        mov     r13, qword [rel LL_sp]
        lea     esi, [rax+r14+1H]
        mov     r12, qword [r13]
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_324
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_324:  xor     edi, edi
L_325:  add     eax, edi
        cmp     esi, eax
        jz      L_329
L_326:  mov     rdx, qword [r12+28H]
        mov     rdx, qword [rdx]
        jge     L_353
        mov     r12, qword [rdx]
L_327:  xor     r9d, r9d
        cmp     dword [r12+10H], 1
        mov     r8, qword [r12+28H]
        mov     rdx, qword [r8]
        je      L_339
        cmp     dword [r12+18H], 1
        je      L_342
L_328:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_325
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, edi
        cmp     esi, eax
        jnz     L_326
L_329:  xor     esi, esi
        mov     rdi, r12
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [r12+28H]
        mov     qword [r13], r12
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_330
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_330:  xor     esi, esi
L_331:  add     eax, esi
        cmp     r14d, eax
        jz      L_335
L_332:  mov     rdx, qword [r12+28H]
        mov     rdx, qword [rdx]
        jge     L_352
        mov     r12, qword [rdx]
L_333:  xor     r8d, r8d
        cmp     dword [r12+10H], 1
        mov     rdi, qword [r12+28H]
        mov     rdx, qword [rdi]
        je      L_346
        cmp     dword [r12+18H], 1
        je      L_349
L_334:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_331
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, esi
        cmp     r14d, eax
        jnz     L_332
L_335:  mov     rsi, qword [r13]
        mov     rdi, r12
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     r12, qword [rax+8H]
        cmp     dword [r12+10H], 1
        je      L_431
L_336:  cmp     dword [r12+18H], 1
        je      L_428
L_337:  mov     r14d, dword [r12+0CH]
        xor     esi, esi
        mov     rdi, r12
        call    _ZN4Node5rottoEPS_
        mov     qword [r13], r12
        mov     edi, r14d
        call    _Z14__lib_toStringi
        mov     rdi, qword [rax]
        call    puts
        mov     rdx, qword [rbp]
        movzx   eax, byte [rdx]
        jmp     L_320





ALIGN   8
L_338:  mov     r9d, 1
L_339:  mov     rax, qword [rdx+r9*8]
        test    rax, rax
        jz      L_341
        mov     ecx, dword [r12+14H]
        mov     r10d, dword [rax+8H]
        imul    r10d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r10d
        js      L_390
        mov     dword [rax+1CH], r10d
        mov     dword [rax+20H], r10d
        mov     dword [rax+24H], r10d
L_340:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_341:  cmp     r9, 1
        jnz     L_338
        cmp     dword [r12+18H], 1
        mov     dword [r12+10H], 0
        mov     rdx, qword [r8]
        jne     L_328
L_342:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_343
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_343:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_344
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_344:  mov     dword [r12+18H], 0
        jmp     L_328





ALIGN   8
L_345:  mov     r8d, 1
L_346:  mov     rax, qword [rdx+r8*8]
        test    rax, rax
        jz      L_348
        mov     ecx, dword [r12+14H]
        mov     r9d, dword [rax+8H]
        imul    r9d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r9d
        js      L_389
        mov     dword [rax+1CH], r9d
        mov     dword [rax+20H], r9d
        mov     dword [rax+24H], r9d
L_347:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_348:  cmp     r8, 1
        jnz     L_345
        cmp     dword [r12+18H], 1
        mov     dword [r12+10H], 0
        mov     rdx, qword [rdi]
        jne     L_334
L_349:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_350
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rdi
        mov     qword [rcx], r8
        mov     edi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], ecx
L_350:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_351
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rdi
        mov     qword [rcx], r8
        mov     edi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], ecx
L_351:  mov     dword [r12+18H], 0
        jmp     L_334

L_352:  mov     r12, qword [rdx+8H]
        mov     esi, eax
        jmp     L_333





ALIGN   8
L_353:  mov     r12, qword [rdx+8H]
        mov     edi, eax
        jmp     L_327





ALIGN   8
L_354:  lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        call    scanf
        lea     rdi, [rel LC2]
        mov     r12d, dword [rsp+4CH]
        mov     rsi, rbx
        xor     eax, eax
        call    scanf
        mov     edx, dword [rsp+4CH]
        mov     rdi, qword [rel LL_sp]
        lea     esi, [r12+1H]
        add     edx, r12d
        call    _ZN10splay_tree3rolEii
        mov     rdx, qword [rbp]
        movzx   eax, byte [rdx]
        jmp     L_319





ALIGN   8
L_355:  lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        call    scanf
        lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        mov     r14d, dword [rsp+4CH]
        call    scanf
        mov     r13, qword [rel LL_sp]
        mov     esi, dword [rsp+4CH]
        mov     r12, qword [r13]
        add     esi, r14d
        add     esi, 1
        mov     rax, qword [r12+28H]
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_356
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_356:  xor     edi, edi
L_357:  add     eax, edi
        cmp     esi, eax
        jz      L_361
L_358:  mov     rdx, qword [r12+28H]
        mov     rdx, qword [rdx]
        jge     L_385
        mov     r12, qword [rdx]
L_359:  xor     r9d, r9d
        cmp     dword [r12+10H], 1
        mov     r8, qword [r12+28H]
        mov     rdx, qword [r8]
        je      L_371
        cmp     dword [r12+18H], 1
        je      L_374
L_360:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_357
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, edi
        cmp     esi, eax
        jnz     L_358
L_361:  xor     esi, esi
        mov     rdi, r12
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [r12+28H]
        mov     qword [r13], r12
        mov     rax, qword [rax]
        mov     rdx, qword [rax]
        mov     eax, 1
        test    rdx, rdx
        jz      L_362
        mov     eax, dword [rdx+8H]
        add     eax, 1
L_362:  xor     esi, esi
L_363:  add     eax, esi
        cmp     r14d, eax
        jz      L_367
L_364:  mov     rdx, qword [r12+28H]
        mov     rdx, qword [rdx]
        jge     L_384
        mov     r12, qword [rdx]
L_365:  xor     r8d, r8d
        cmp     dword [r12+10H], 1
        mov     rdi, qword [r12+28H]
        mov     rdx, qword [rdi]
        je      L_378
        cmp     dword [r12+18H], 1
        je      L_381
L_366:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_363
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, esi
        cmp     r14d, eax
        jnz     L_364
L_367:  mov     rsi, qword [r13]
        mov     rdi, r12
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [r12+28H]
        mov     rcx, qword [rax]
        mov     rax, qword [rcx+8H]
        test    rax, rax
        je      L_386
        mov     rax, qword [rax+28H]
        xor     r14d, r14d
        mov     r11, qword [rax]
L_368:  mov     rax, qword [r11+r14*8]
        test    rax, rax
        jne     L_440
L_369:  cmp     r14, 1
        je      L_386
        mov     r14d, 1
        jmp     L_368






ALIGN   16
L_370:  mov     r9d, 1
L_371:  mov     rax, qword [rdx+r9*8]
        test    rax, rax
        jz      L_373
        mov     ecx, dword [r12+14H]
        mov     r10d, dword [rax+8H]
        imul    r10d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r10d
        js      L_388
        mov     dword [rax+1CH], r10d
        mov     dword [rax+20H], r10d
        mov     dword [rax+24H], r10d
L_372:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_373:  cmp     r9, 1
        jnz     L_370
        cmp     dword [r12+18H], 1
        mov     dword [r12+10H], 0
        mov     rdx, qword [r8]
        jne     L_360
L_374:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_375
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_375:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_376
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_376:  mov     dword [r12+18H], 0
        jmp     L_360





ALIGN   8
L_377:  mov     r8d, 1
L_378:  mov     rax, qword [rdx+r8*8]
        test    rax, rax
        jz      L_380
        mov     ecx, dword [r12+14H]
        mov     r9d, dword [rax+8H]
        imul    r9d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r9d
        js      L_387
        mov     dword [rax+1CH], r9d
        mov     dword [rax+20H], r9d
        mov     dword [rax+24H], r9d
L_379:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_380:  cmp     r8, 1
        jnz     L_377
        cmp     dword [r12+18H], 1
        mov     dword [r12+10H], 0
        mov     rdx, qword [rdi]
        jne     L_366
L_381:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_382
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rdi
        mov     qword [rcx], r8
        mov     edi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], ecx
L_382:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_383
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rdi
        mov     qword [rcx], r8
        mov     edi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], ecx
L_383:  mov     dword [r12+18H], 0
        jmp     L_366





ALIGN   16
L_384:  mov     r12, qword [rdx+8H]
        mov     esi, eax
        jmp     L_365





ALIGN   8
L_385:  mov     r12, qword [rdx+8H]
        mov     edi, eax
        jmp     L_359





ALIGN   8
L_386:  mov     qword [rcx+8H], 0
        xor     esi, esi
        mov     rdi, r12
        call    _ZN4Node5rottoEPS_
        mov     qword [r13], r12
        mov     rdx, qword [rbp]
        movzx   eax, byte [rdx]
        jmp     L_318





ALIGN   8
L_387:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_379






ALIGN   16
L_388:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_372





ALIGN   8
L_389:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_347





ALIGN   8
L_390:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_340

L_391:  lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        call    scanf
        mov     eax, dword [rsp+4CH]
        lea     rdi, [rel LC2]
        mov     rsi, rbx
        mov     dword [rsp+10H], eax
        xor     eax, eax
        call    scanf
        mov     eax, dword [rsp+4CH]
        test    eax, eax
        mov     dword [rsp+8H], eax
        jle     L_393
        sub     eax, 1
        mov     r14d, 4
        lea     r13, [rax*4+8H]




ALIGN   8
L_392:  mov     rax, qword [rel LL_din]
        lea     rdi, [rel LC2]
        mov     rsi, rbx
        mov     r12, qword [rax]
        xor     eax, eax
        call    scanf
        mov     eax, dword [rsp+4CH]
        add     r12, r14
        add     r14, 4
        cmp     r14, r13
        mov     dword [r12], eax
        jnz     L_392
L_393:  mov     edx, dword [rsp+8H]
        mov     rdi, qword [rel LL_dintree]
        mov     esi, 1
        call    _ZN10splay_tree10build_treeEii
        mov     edi, dword [rsp+10H]
        mov     rdx, qword [rel LL_dintree]
        mov     rsi, qword [rel LL_sp]
        add     edi, 1
        call    _Z5mergeiP10splay_treeS0_
        mov     rax, qword [rel LL_char_ID]
        mov     rdx, qword [rbp]
        mov     rcx, qword [rax]
        movzx   eax, byte [rdx]
        jmp     L_317

L_394:  lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        call    scanf
        lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        mov     r13d, dword [rsp+4CH]
        call    scanf
        lea     rdi, [rel LC2]
        mov     rsi, rbx
        xor     eax, eax
        mov     ebp, dword [rsp+4CH]
        call    scanf
        mov     r12, qword [rel LL_sp]
        mov     r14d, dword [rsp+4CH]
        lea     esi, [rbp+r13+1H]
        mov     rbp, qword [r12]
        mov     rax, qword [rbp+28H]
        mov     rax, qword [rax]
        mov     rax, qword [rax]
        test    rax, rax
        je      L_460
        mov     eax, dword [rax+8H]
        add     eax, 1
L_395:  xor     edi, edi
L_396:  add     eax, edi
        cmp     esi, eax
        jz      L_400
L_397:  mov     rdx, qword [rbp+28H]
        mov     rdx, qword [rdx]
        jge     L_436
        mov     rbp, qword [rdx]
L_398:  xor     r9d, r9d
        cmp     dword [rbp+10H], 1
        mov     r8, qword [rbp+28H]
        mov     rdx, qword [r8]
        je      L_415
        cmp     dword [rbp+18H], 1
        je      L_418
L_399:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_396
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, edi
        cmp     esi, eax
        jnz     L_397
L_400:  xor     esi, esi
        mov     rdi, rbp
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [rbp+28H]
        mov     qword [r12], rbp
        mov     rax, qword [rax]
        mov     rax, qword [rax]
        test    rax, rax
        je      L_461
        mov     eax, dword [rax+8H]
        add     eax, 1
L_401:  xor     esi, esi
L_402:  add     eax, esi
        cmp     r13d, eax
        jz      L_406
L_403:  mov     rdx, qword [rbp+28H]
        mov     rdx, qword [rdx]
        jge     L_435
        mov     rbp, qword [rdx]
L_404:  xor     r8d, r8d
        cmp     dword [rbp+10H], 1
        mov     rdi, qword [rbp+28H]
        mov     rdx, qword [rdi]
        je      L_422
        cmp     dword [rbp+18H], 1
        je      L_425
L_405:  mov     rdx, qword [rdx]
        mov     eax, 1
        test    rdx, rdx
        jz      L_402
        mov     eax, dword [rdx+8H]
        add     eax, 1
        add     eax, esi
        cmp     r13d, eax
        jnz     L_403
L_406:  mov     rsi, qword [r12]
        mov     rdi, rbp
        call    _ZN4Node5rottoEPS_
        mov     rax, qword [rbp+28H]
        mov     rax, qword [rax]
        mov     rbp, qword [rax+8H]
        cmp     dword [rbp+10H], 1
        mov     rcx, qword [rbp+28H]
        je      L_451
L_407:  cmp     dword [rbp+18H], 1
        mov     rsi, qword [rcx]
        je      L_448
L_408:  mov     eax, dword [rbp+8H]
        mov     dword [rbp+4H], r14d
        imul    eax, r14d
        test    r14d, r14d
        mov     dword [rbp+0CH], eax
        js      L_443
        mov     dword [rbp+1CH], eax
        mov     dword [rbp+20H], eax
        mov     dword [rbp+24H], eax
L_409:  mov     dword [rbp+10H], 1
        mov     dword [rbp+14H], r14d
        xor     edi, edi
L_410:  mov     rax, qword [rsi+rdi*8]
        test    rax, rax
        jz      L_412
        mov     edx, dword [rbp+14H]
        mov     r8d, dword [rax+8H]
        imul    r8d, edx
        test    edx, edx
        mov     dword [rax+4H], edx
        mov     dword [rax+0CH], r8d
        js      L_463
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], r8d
        mov     dword [rax+24H], r8d
L_411:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], edx
L_412:  sub     rdi, 1
        jne     L_478
        cmp     dword [rbp+18H], 1
        mov     dword [rbp+10H], 0
        je      L_445
L_413:  xor     esi, esi
        mov     rdi, rbp
        call    _ZN4Node5rottoEPS_
        mov     qword [r12], rbp
        jmp     L_315





ALIGN   8
L_414:  mov     r9d, 1
L_415:  mov     rax, qword [rdx+r9*8]
        test    rax, rax
        jz      L_417
        mov     ecx, dword [rbp+14H]
        mov     r10d, dword [rax+8H]
        imul    r10d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r10d
        js      L_438
        mov     dword [rax+1CH], r10d
        mov     dword [rax+20H], r10d
        mov     dword [rax+24H], r10d
L_416:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_417:  cmp     r9, 1
        jnz     L_414
        cmp     dword [rbp+18H], 1
        mov     dword [rbp+10H], 0
        mov     rdx, qword [r8]
        jne     L_399
L_418:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_419
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_419:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_420
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     r8, qword [rcx]
        mov     r9, qword [rcx+8H]
        mov     qword [rcx+8H], r8
        mov     qword [rcx], r9
        mov     r8d, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], r8d
        mov     dword [rax+20H], ecx
L_420:  mov     dword [rbp+18H], 0
        jmp     L_399





ALIGN   8
L_421:  mov     r8d, 1
L_422:  mov     rax, qword [rdx+r8*8]
        test    rax, rax
        jz      L_424
        mov     ecx, dword [rbp+14H]
        mov     r9d, dword [rax+8H]
        imul    r9d, ecx
        test    ecx, ecx
        mov     dword [rax+4H], ecx
        mov     dword [rax+0CH], r9d
        js      L_437
        mov     dword [rax+1CH], r9d
        mov     dword [rax+20H], r9d
        mov     dword [rax+24H], r9d
L_423:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], ecx
L_424:  cmp     r8, 1
        jnz     L_421
        cmp     dword [rbp+18H], 1
        mov     dword [rbp+10H], 0
        mov     rdx, qword [rdi]
        jne     L_405
L_425:  mov     rax, qword [rdx]
        test    rax, rax
        jz      L_426
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rdi
        mov     qword [rcx], r8
        mov     edi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], ecx
L_426:  mov     rax, qword [rdx+8H]
        test    rax, rax
        jz      L_427
        mov     rcx, qword [rax+28H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     r8, qword [rcx+8H]
        mov     qword [rcx+8H], rdi
        mov     qword [rcx], r8
        mov     edi, dword [rax+20H]
        mov     ecx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], ecx
L_427:  mov     dword [rbp+18H], 0
        jmp     L_405

L_428:  mov     rax, qword [r12+28H]
        mov     rcx, qword [rax]
        mov     rax, qword [rcx]
        test    rax, rax
        jz      L_429
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rsi, qword [rdx]
        mov     rdi, qword [rdx+8H]
        mov     qword [rdx+8H], rsi
        mov     qword [rdx], rdi
        mov     esi, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], edx
L_429:  mov     rax, qword [rcx+8H]
        test    rax, rax
        jz      L_430
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rcx, qword [rdx]
        mov     rsi, qword [rdx+8H]
        mov     qword [rdx+8H], rcx
        mov     qword [rdx], rsi
        mov     ecx, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], edx
L_430:  mov     dword [r12+18H], 0
        jmp     L_337

L_431:  mov     rax, qword [r12+28H]
        xor     ecx, ecx
        mov     rdi, qword [rax]
L_432:  mov     rax, qword [rdi+rcx*8]
        test    rax, rax
        jz      L_434
        mov     edx, dword [r12+14H]
        mov     esi, dword [rax+8H]
        imul    esi, edx
        test    edx, edx
        mov     dword [rax+4H], edx
        mov     dword [rax+0CH], esi
        js      L_462
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], esi
        mov     dword [rax+24H], esi
L_433:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], edx
L_434:  sub     rcx, 1
        jne     L_444
        mov     dword [r12+10H], 0
        jmp     L_336





ALIGN   16
L_435:  mov     rbp, qword [rdx+8H]
        mov     esi, eax
        jmp     L_404





ALIGN   8
L_436:  mov     rbp, qword [rdx+8H]
        mov     edi, eax
        jmp     L_398

L_437:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_423

L_438:  mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], ecx
        mov     dword [rax+24H], ecx
        jmp     L_416

L_439:  mov     edi, 32
        call    _Znwm
        lea     rsi, [rel LC3]
        mov     rdi, rax
        mov     r12, rax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.35
        mov     rsi, qword [rel stdout]
        mov     rdi, qword [r12]
        call    fputs
        mov     rdx, qword [rbp]
        movzx   eax, byte [rdx]
        jmp     L_320

L_440:  mov     rax, qword [rax+28H]
        xor     r10d, r10d
        mov     r9, qword [rax]
L_441:  mov     rax, qword [r9+r10*8]
        test    rax, rax
        jne     L_456
L_442:  cmp     r10, 1
        je      L_369
        mov     r10d, 1
        jmp     L_441

L_443:  mov     dword [rbp+1CH], r14d
        mov     dword [rbp+20H], r14d
        mov     dword [rbp+24H], r14d
        jmp     L_409

L_444:  mov     ecx, 1
        jmp     L_432

L_445:  mov     rcx, qword [rcx]
        mov     rax, qword [rcx]
        test    rax, rax
        jz      L_446
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rsi, qword [rdx]
        mov     rdi, qword [rdx+8H]
        mov     qword [rdx+8H], rsi
        mov     qword [rdx], rdi
        mov     esi, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], esi
        mov     dword [rax+20H], edx
L_446:  mov     rax, qword [rcx+8H]
        test    rax, rax
        jz      L_447
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rcx, qword [rdx]
        mov     rsi, qword [rdx+8H]
        mov     qword [rdx+8H], rcx
        mov     qword [rdx], rsi
        mov     ecx, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], ecx
        mov     dword [rax+20H], edx
L_447:  mov     dword [rbp+18H], 0
        jmp     L_413

L_448:  mov     rax, qword [rsi]
        test    rax, rax
        jz      L_449
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rdi, qword [rdx]
        mov     r8, qword [rdx+8H]
        mov     qword [rdx+8H], rdi
        mov     qword [rdx], r8
        mov     edi, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], edx
L_449:  mov     rax, qword [rsi+8H]
        test    rax, rax
        jz      L_450
        mov     rdx, qword [rax+28H]
        mov     rdx, qword [rdx]
        mov     rdi, qword [rdx]
        mov     r8, qword [rdx+8H]
        mov     qword [rdx+8H], rdi
        mov     qword [rdx], r8
        mov     edi, dword [rax+20H]
        mov     edx, dword [rax+1CH]
        xor     dword [rax+18H], 01H
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], edx
L_450:  mov     dword [rbp+18H], 0
        jmp     L_408

L_451:  mov     r8, qword [rcx]
        xor     esi, esi
L_452:  mov     rax, qword [r8+rsi*8]
        test    rax, rax
        jz      L_454
        mov     edx, dword [rbp+14H]
        mov     edi, dword [rax+8H]
        imul    edi, edx
        test    edx, edx
        mov     dword [rax+4H], edx
        mov     dword [rax+0CH], edi
        js      L_467
        mov     dword [rax+1CH], edi
        mov     dword [rax+20H], edi
        mov     dword [rax+24H], edi
L_453:  mov     dword [rax+10H], 1
        mov     dword [rax+14H], edx
L_454:  sub     rsi, 1
        jnz     L_455
        mov     dword [rbp+10H], 0
        jmp     L_407

L_455:  mov     esi, 1
        jmp     L_452

L_456:  mov     rax, qword [rax+28H]
        xor     r8d, r8d
        mov     qword [rsp+10H], rcx
        mov     rax, qword [rax]
        mov     qword [rsp+8H], rax
L_457:  mov     rax, qword [rsp+8H]
        mov     rax, qword [rax+r8*8]
        test    rax, rax
        jnz     L_464
L_458:  sub     r8, 1
        jnz     L_459
        mov     rcx, qword [rsp+10H]
        jmp     L_442

L_459:  mov     r8d, 1
        jmp     L_457

L_460:  mov     eax, 1
        jmp     L_395

L_461:  mov     eax, 1
        jmp     L_401

L_462:  mov     dword [rax+1CH], edx
        mov     dword [rax+20H], edx
        mov     dword [rax+24H], edx
        jmp     L_433

L_463:  mov     dword [rax+1CH], edx
        mov     dword [rax+20H], edx
        mov     dword [rax+24H], edx
        jmp     L_411

L_464:  mov     rax, qword [rax+28H]
        xor     edx, edx
        mov     rax, qword [rax]
        mov     qword [rsp+18H], rax
L_465:  mov     rax, qword [rsp+18H]
        mov     rax, qword [rax+rdx*8]
        test    rax, rax
        jnz     L_468
L_466:  sub     rdx, 1
        jz      L_458
        mov     edx, 1
        jmp     L_465

L_467:  mov     dword [rax+1CH], edx
        mov     dword [rax+20H], edx
        mov     dword [rax+24H], edx
        jmp     L_453

L_468:  mov     rax, qword [rax+28H]
        mov     rax, qword [rax]
        mov     qword [rsp+20H], rax
        xor     eax, eax
L_469:  mov     rsi, qword [rsp+20H]
        mov     rcx, qword [rsi+rax*8]
        test    rcx, rcx
        jnz     L_471
L_470:  sub     rax, 1
        jz      L_466
        mov     eax, 1
        jmp     L_469

L_471:  mov     rcx, qword [rcx+28H]
        mov     rcx, qword [rcx]
        mov     rsi, qword [rcx]
        test    rsi, rsi
        jnz     L_473
L_472:  mov     rcx, qword [rcx+8H]
        test    rcx, rcx
        jz      L_470
        lea     rsi, [rcx+28H]
        mov     rdi, r13
        mov     qword [rsp+30H], rdx
        mov     qword [rsp+28H], rax
        call    _ZN10splay_tree3dfsEP4Node.isra.11
        mov     rdx, qword [rsp+30H]
        mov     rax, qword [rsp+28H]
        jmp     L_470

L_473:  add     rsi, 40
        mov     rdi, r13
        mov     qword [rsp+38H], rdx
        mov     qword [rsp+30H], rax
        mov     qword [rsp+28H], rcx
        call    _ZN10splay_tree3dfsEP4Node.isra.11
        mov     rdx, qword [rsp+38H]
        mov     rax, qword [rsp+30H]
        mov     rcx, qword [rsp+28H]
        jmp     L_472

L_474:  call    __stack_chk_fail
L_475:  mov     rdi, qword [rsp+50H]
        add     rbp, 16
        mov     rbx, rax
        cmp     rdi, rbp
        jz      L_476
        call    _ZdlPv
L_476:  mov     rdi, r12
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
        mov     rbx, rax
        mov     rdi, r13
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
        jmp     L_475

L_477:  mov     rbx, rax
        jmp     L_476


L_478:
        mov     edi, 1
        jmp     L_410

        jmp     L_477






ALIGN   16

_GLOBAL__sub_I_LL_INF:
        push    r12
        push    rbp
        mov     edi, 24
        push    rbx
        movsxd  rbx, dword [rel LL_nMax]
        call    _Znwm
        mov     rbp, rax
        mov     qword [rax], 0
        mov     qword [rax+8H], 0
        test    rbx, rbx
        mov     qword [rax+10H], 0
        jz      L_481
        mov     rax, qword 3FFFFFFFFFFFFFFFH
        cmp     rbx, rax
        ja      L_482
        lea     r12, [rbx*4]
        mov     rdi, r12
        call    _Znwm
        lea     rdi, [rax+r12]
        mov     qword [rbp], rax
        xor     edx, edx
        mov     qword [rbp+10H], rdi




ALIGN   8
L_479:  mov     dword [rax+rdx*4], 0
        add     rdx, 1
        cmp     rbx, rdx
        jnz     L_479
L_480:  mov     qword [rbp+8H], rdi
        mov     edi, 32
        mov     qword [rel LL_din], rbp
        call    _Znwm
        lea     rsi, [rel LC5]
        mov     rdi, rax
        mov     rbx, rax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.35
        mov     qword [rel LL_char_ID], rbx
        pop     rbx
        pop     rbp
        pop     r12
        ret

L_481:  xor     edi, edi
        jmp     L_480

L_482:
        call    _ZSt17__throw_bad_allocv
        mov     rbx, rax
        mov     rdi, rbp
        call    _ZdlPv
        mov     rdi, rbx
        call    _Unwind_Resume
        mov     rbp, rax
        mov     rdi, rbx
        call    _ZdlPv
        mov     rdi, rbp

        call    _Unwind_Resume


SECTION .gcc_except_table 

        db 0FFH, 0FFH, 01H, 34H, 30H, 91H, 03H, 00H
        db 00H, 0CEH, 03H, 05H, 0A0H, 24H, 00H, 0DDH
        db 03H, 05H, 00H, 00H, 0FBH, 03H, 05H, 0B5H
        db 24H, 00H, 8BH, 04H, 05H, 0FAH, 23H, 00H
        db 0A9H, 04H, 05H, 0B3H, 24H, 00H, 0D0H, 04H
        db 0E1H, 19H, 00H, 00H, 0BEH, 1EH, 05H, 0C4H
        db 24H, 00H, 0CEH, 1EH, 0E5H, 05H, 00H, 00H
        db 0FFH, 0FFH, 01H, 13H, 34H, 05H, 00H, 00H
        db 3EH, 05H, 0BDH, 01H, 00H, 5DH, 05H, 95H
        db 01H, 00H, 0B8H, 01H, 05H, 00H, 00H, 0FFH
        db 0FFH, 01H, 1FH, 10H, 05H, 00H, 00H, 4EH
        db 05H, 0B4H, 01H, 00H, 88H, 01H, 05H, 00H
        db 00H, 9AH, 01H, 05H, 0C7H, 01H, 00H, 0AFH
        db 01H, 05H, 0B4H, 01H, 00H, 0C2H, 01H, 18H
        db 00H, 00H


SECTION .init_array align=8

        dq _GLOBAL__sub_I_LL_INF


SECTION .data.rel.local.DW.ref.__gxx_personality_v0 align=8

DW.ref.__gxx_personality_v0:
        dq __gxx_personality_v0


