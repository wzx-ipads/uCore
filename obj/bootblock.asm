
obj/bootblock.o:	file format ELF32-i386


Disassembly of section .text:

00007c00 start:
    7c00: fa                           	cli
    7c01: fc                           	cld
    7c02: 31 c0                        	xorl	%eax, %eax
    7c04: 8e d8                        	movl	%eax, %ds
    7c06: 8e c0                        	movl	%eax, %es
    7c08: 8e d0                        	movl	%eax, %ss

00007c0a seta20.1:
    7c0a: e4 64                        	inb	$100, %al
    7c0c: a8 02                        	testb	$2, %al
    7c0e: 75 fa                        	jne	-6 <seta20.1>
    7c10: b0 d1                        	movb	$-47, %al
    7c12: e6 64                        	outb	%al, $100

00007c14 seta20.2:
    7c14: e4 64                        	inb	$100, %al
    7c16: a8 02                        	testb	$2, %al
    7c18: 75 fa                        	jne	-6 <seta20.2>
    7c1a: b0 df                        	movb	$-33, %al
    7c1c: e6 60                        	outb	%al, $96
    7c1e: 0f 01 16                     	lgdtl	(%esi)
    7c21: 6c                           	insb	%dx, %es:(%edi)
    7c22: 7c 0f                        	jl	15 <protcseg+0x1>
    7c24: 20 c0                        	andb	%al, %al
    7c26: 66 83 c8 01                  	orw	$1, %ax
    7c2a: 0f 22 c0                     	movl	%eax, %cr0
    7c2d: ea 32 7c 08 00 66 b8         	ljmpl	$-18330, $556082

00007c32 protcseg:
    7c32: 66 b8 10 00                  	movw	$16, %ax
    7c36: 8e d8                        	movl	%eax, %ds
    7c38: 8e c0                        	movl	%eax, %es
    7c3a: 8e e0                        	movl	%eax, %fs
    7c3c: 8e e8                        	movl	%eax, %gs
    7c3e: 8e d0                        	movl	%eax, %ss
    7c40: bd 00 00 00 00               	movl	$0, %ebp
    7c45: bc 00 7c 00 00               	movl	$31744, %esp
    7c4a: e8 c0 00 00 00               	calll	192 <bootmain>

00007c4f spin:
    7c4f: eb fe                        	jmp	-2 <spin>
    7c51: 8d 76 00                     	leal	(%esi), %esi

00007c54 gdt:
		...
    7c5c: ff ff                        	<unknown>
    7c5e: 00 00                        	addb	%al, (%eax)
    7c60: 00 9a cf 00 ff ff            	addb	%bl, -65329(%edx)
    7c66: 00 00                        	addb	%al, (%eax)
    7c68: 00 92 cf 00 17 00            	addb	%dl, 1507535(%edx)

00007c6c gdtdesc:
    7c6c: 17                           	popl	%ss
    7c6d: 00 54 7c 00                  	addb	%dl, (%esp,%edi,2)
    7c71: 00 55 89                     	addb	%dl, -119(%ebp)

00007c72 readseg:
    7c72: 55                           	pushl	%ebp
    7c73: 89 e5                        	movl	%esp, %ebp
    7c75: 57                           	pushl	%edi
    7c76: 56                           	pushl	%esi
    7c77: 89 c6                        	movl	%eax, %esi
    7c79: 53                           	pushl	%ebx
    7c7a: 01 d0                        	addl	%edx, %eax
    7c7c: 83 ec 08                     	subl	$8, %esp
    7c7f: bb f7 01 00 00               	movl	$503, %ebx
    7c84: 89 45 ec                     	movl	%eax, -20(%ebp)
    7c87: 89 c8                        	movl	%ecx, %eax
    7c89: c1 e9 09                     	shrl	$9, %ecx
    7c8c: 25 ff 01 00 00               	andl	$511, %eax
    7c91: 29 c6                        	subl	%eax, %esi
    7c93: 8d 41 01                     	leal	1(%ecx), %eax
    7c96: 89 45 f0                     	movl	%eax, -16(%ebp)
    7c99: 3b 75 ec                     	cmpl	-20(%ebp), %esi
    7c9c: 73 6a                        	jae	106 <readseg+0x96>
    7c9e: 89 da                        	movl	%ebx, %edx
    7ca0: ec                           	inb	%dx, %al
    7ca1: 24 c0                        	andb	$-64, %al
    7ca3: 3c 40                        	cmpb	$64, %al
    7ca5: 75 f7                        	jne	-9 <readseg+0x2c>
    7ca7: ba f2 01 00 00               	movl	$498, %edx
    7cac: b0 01                        	movb	$1, %al
    7cae: ee                           	outb	%al, %dx
    7caf: ba f3 01 00 00               	movl	$499, %edx
    7cb4: 8a 45 f0                     	movb	-16(%ebp), %al
    7cb7: ee                           	outb	%al, %dx
    7cb8: 8b 45 f0                     	movl	-16(%ebp), %eax
    7cbb: ba f4 01 00 00               	movl	$500, %edx
    7cc0: c1 e8 08                     	shrl	$8, %eax
    7cc3: ee                           	outb	%al, %dx
    7cc4: 8b 45 f0                     	movl	-16(%ebp), %eax
    7cc7: ba f5 01 00 00               	movl	$501, %edx
    7ccc: c1 e8 10                     	shrl	$16, %eax
    7ccf: ee                           	outb	%al, %dx
    7cd0: 8b 45 f0                     	movl	-16(%ebp), %eax
    7cd3: ba f6 01 00 00               	movl	$502, %edx
    7cd8: c1 e8 18                     	shrl	$24, %eax
    7cdb: 24 0f                        	andb	$15, %al
    7cdd: 0c e0                        	orb	$-32, %al
    7cdf: ee                           	outb	%al, %dx
    7ce0: b0 20                        	movb	$32, %al
    7ce2: 89 da                        	movl	%ebx, %edx
    7ce4: ee                           	outb	%al, %dx
    7ce5: 89 da                        	movl	%ebx, %edx
    7ce7: ec                           	inb	%dx, %al
    7ce8: 24 c0                        	andb	$-64, %al
    7cea: 3c 40                        	cmpb	$64, %al
    7cec: 75 f7                        	jne	-9 <readseg+0x73>
    7cee: 89 f7                        	movl	%esi, %edi
    7cf0: b9 80 00 00 00               	movl	$128, %ecx
    7cf5: ba f0 01 00 00               	movl	$496, %edx
    7cfa: fc                           	cld
    7cfb: f2 6d                        	repne		insl	%dx, %es:(%edi)
    7cfd: ff 45 f0                     	incl	-16(%ebp)
    7d00: 81 c6 00 02 00 00            	addl	$512, %esi
    7d06: eb 91                        	jmp	-111 <readseg+0x27>
    7d08: 58                           	popl	%eax
    7d09: 5a                           	popl	%edx
    7d0a: 5b                           	popl	%ebx
    7d0b: 5e                           	popl	%esi
    7d0c: 5f                           	popl	%edi
    7d0d: 5d                           	popl	%ebp
    7d0e: c3                           	retl

00007d0f bootmain:
    7d0f: 55                           	pushl	%ebp
    7d10: 31 c9                        	xorl	%ecx, %ecx
    7d12: 89 e5                        	movl	%esp, %ebp
    7d14: ba 00 10 00 00               	movl	$4096, %edx
    7d19: 56                           	pushl	%esi
    7d1a: b8 00 00 01 00               	movl	$65536, %eax
    7d1f: 53                           	pushl	%ebx
    7d20: e8 4d ff ff ff               	calll	-179 <readseg>
    7d25: 81 3d 00 00 01 00 7f 45 4c 46	cmpl	$1179403647, 65536
    7d2f: 75 3f                        	jne	63 <bootmain+0x61>
    7d31: a1 1c 00 01 00               	movl	65564, %eax
    7d36: 0f b7 35 2c 00 01 00         	movzwl	65580, %esi
    7d3d: 8d 98 00 00 01 00            	leal	65536(%eax), %ebx
    7d43: c1 e6 05                     	shll	$5, %esi
    7d46: 01 de                        	addl	%ebx, %esi
    7d48: 39 f3                        	cmpl	%esi, %ebx
    7d4a: 73 18                        	jae	24 <bootmain+0x55>
    7d4c: 8b 43 08                     	movl	8(%ebx), %eax
    7d4f: 83 c3 20                     	addl	$32, %ebx
    7d52: 8b 4b e4                     	movl	-28(%ebx), %ecx
    7d55: 8b 53 f4                     	movl	-12(%ebx), %edx
    7d58: 25 ff ff ff 00               	andl	$16777215, %eax
    7d5d: e8 10 ff ff ff               	calll	-240 <readseg>
    7d62: eb e4                        	jmp	-28 <bootmain+0x39>
    7d64: a1 18 00 01 00               	movl	65560, %eax
    7d69: 25 ff ff ff 00               	andl	$16777215, %eax
    7d6e: ff d0                        	calll	*%eax
    7d70: ba 00 8a ff ff               	movl	$4294937088, %edx
    7d75: 89 d0                        	movl	%edx, %eax
    7d77: 66 ef                        	outw	%ax, %dx
    7d79: b8 00 8e ff ff               	movl	$4294938112, %eax
    7d7e: 66 ef                        	outw	%ax, %dx
    7d80: eb fe                        	jmp	-2 <bootmain+0x71>
