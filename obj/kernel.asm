
bin/kernel:	file format ELF32-i386


Disassembly of section .text:

00100000 kern_init:
  100000: 55                           	pushl	%ebp
  100001: 89 e5                        	movl	%esp, %ebp
  100003: 83 ec 28                     	subl	$40, %esp
  100006: b8 08 0d 11 00               	movl	$1117448, %eax
  10000b: 2d 16 fa 10 00               	subl	$1112598, %eax
  100010: 89 44 24 08                  	movl	%eax, 8(%esp)
  100014: c7 44 24 04 00 00 00 00      	movl	$0, 4(%esp)
  10001c: c7 04 24 16 fa 10 00         	movl	$1112598, (%esp)
  100023: e8 72 31 00 00               	calll	12658 <memset>
  100028: e8 7f 15 00 00               	calll	5503 <cons_init>
  10002d: c7 45 f4 40 33 10 00         	movl	$1061696, -12(%ebp)
  100034: 8b 45 f4                     	movl	-12(%ebp), %eax
  100037: 89 44 24 04                  	movl	%eax, 4(%esp)
  10003b: c7 04 24 5c 33 10 00         	movl	$1061724, (%esp)
  100042: e8 d9 02 00 00               	calll	729 <cprintf>
  100047: e8 f7 07 00 00               	calll	2039 <print_kerninfo>
  10004c: e8 90 00 00 00               	calll	144 <grade_backtrace>
  100051: e8 9b 27 00 00               	calll	10139 <pmm_init>
  100056: e8 ac 16 00 00               	calll	5804 <pic_init>
  10005b: e8 10 18 00 00               	calll	6160 <idt_init>
  100060: e8 e8 0c 00 00               	calll	3304 <clock_init>
  100065: e8 fb 15 00 00               	calll	5627 <intr_enable>
  10006a: eb fe                        	jmp	-2 <kern_init+0x6a>

0010006c grade_backtrace2:
  10006c: 55                           	pushl	%ebp
  10006d: 89 e5                        	movl	%esp, %ebp
  10006f: 83 ec 18                     	subl	$24, %esp
  100072: c7 44 24 08 00 00 00 00      	movl	$0, 8(%esp)
  10007a: c7 44 24 04 00 00 00 00      	movl	$0, 4(%esp)
  100082: c7 04 24 00 00 00 00         	movl	$0, (%esp)
  100089: e8 da 0b 00 00               	calll	3034 <mon_backtrace>
  10008e: 90                           	nop
  10008f: 89 ec                        	movl	%ebp, %esp
  100091: 5d                           	popl	%ebp
  100092: c3                           	retl

00100093 grade_backtrace1:
  100093: 55                           	pushl	%ebp
  100094: 89 e5                        	movl	%esp, %ebp
  100096: 83 ec 18                     	subl	$24, %esp
  100099: 89 5d fc                     	movl	%ebx, -4(%ebp)
  10009c: 8d 4d 0c                     	leal	12(%ebp), %ecx
  10009f: 8b 55 0c                     	movl	12(%ebp), %edx
  1000a2: 8d 5d 08                     	leal	8(%ebp), %ebx
  1000a5: 8b 45 08                     	movl	8(%ebp), %eax
  1000a8: 89 4c 24 0c                  	movl	%ecx, 12(%esp)
  1000ac: 89 54 24 08                  	movl	%edx, 8(%esp)
  1000b0: 89 5c 24 04                  	movl	%ebx, 4(%esp)
  1000b4: 89 04 24                     	movl	%eax, (%esp)
  1000b7: e8 b0 ff ff ff               	calll	-80 <grade_backtrace2>
  1000bc: 90                           	nop
  1000bd: 8b 5d fc                     	movl	-4(%ebp), %ebx
  1000c0: 89 ec                        	movl	%ebp, %esp
  1000c2: 5d                           	popl	%ebp
  1000c3: c3                           	retl

001000c4 grade_backtrace0:
  1000c4: 55                           	pushl	%ebp
  1000c5: 89 e5                        	movl	%esp, %ebp
  1000c7: 83 ec 18                     	subl	$24, %esp
  1000ca: 8b 45 10                     	movl	16(%ebp), %eax
  1000cd: 89 44 24 04                  	movl	%eax, 4(%esp)
  1000d1: 8b 45 08                     	movl	8(%ebp), %eax
  1000d4: 89 04 24                     	movl	%eax, (%esp)
  1000d7: e8 b7 ff ff ff               	calll	-73 <grade_backtrace1>
  1000dc: 90                           	nop
  1000dd: 89 ec                        	movl	%ebp, %esp
  1000df: 5d                           	popl	%ebp
  1000e0: c3                           	retl

001000e1 grade_backtrace:
  1000e1: 55                           	pushl	%ebp
  1000e2: 89 e5                        	movl	%esp, %ebp
  1000e4: 83 ec 18                     	subl	$24, %esp
  1000e7: b8 00 00 10 00               	movl	$1048576, %eax
  1000ec: c7 44 24 08 00 00 ff ff      	movl	$4294901760, 8(%esp)
  1000f4: 89 44 24 04                  	movl	%eax, 4(%esp)
  1000f8: c7 04 24 00 00 00 00         	movl	$0, (%esp)
  1000ff: e8 c0 ff ff ff               	calll	-64 <grade_backtrace0>
  100104: 90                           	nop
  100105: 89 ec                        	movl	%ebp, %esp
  100107: 5d                           	popl	%ebp
  100108: c3                           	retl

00100109 lab1_print_cur_status:
  100109: 55                           	pushl	%ebp
  10010a: 89 e5                        	movl	%esp, %ebp
  10010c: 83 ec 28                     	subl	$40, %esp
  10010f: 8c 4d f6                     	movw	%cs, -10(%ebp)
  100112: 8c 5d f4                     	movw	%ds, -12(%ebp)
  100115: 8c 45 f2                     	movw	%es, -14(%ebp)
  100118: 8c 55 f0                     	movw	%ss, -16(%ebp)
  10011b: 0f b7 45 f6                  	movzwl	-10(%ebp), %eax
  10011f: 83 e0 03                     	andl	$3, %eax
  100122: 89 c2                        	movl	%eax, %edx
  100124: a1 20 fa 10 00               	movl	1112608, %eax
  100129: 89 54 24 08                  	movl	%edx, 8(%esp)
  10012d: 89 44 24 04                  	movl	%eax, 4(%esp)
  100131: c7 04 24 61 33 10 00         	movl	$1061729, (%esp)
  100138: e8 e3 01 00 00               	calll	483 <cprintf>
  10013d: 0f b7 45 f6                  	movzwl	-10(%ebp), %eax
  100141: 89 c2                        	movl	%eax, %edx
  100143: a1 20 fa 10 00               	movl	1112608, %eax
  100148: 89 54 24 08                  	movl	%edx, 8(%esp)
  10014c: 89 44 24 04                  	movl	%eax, 4(%esp)
  100150: c7 04 24 6f 33 10 00         	movl	$1061743, (%esp)
  100157: e8 c4 01 00 00               	calll	452 <cprintf>
  10015c: 0f b7 45 f4                  	movzwl	-12(%ebp), %eax
  100160: 89 c2                        	movl	%eax, %edx
  100162: a1 20 fa 10 00               	movl	1112608, %eax
  100167: 89 54 24 08                  	movl	%edx, 8(%esp)
  10016b: 89 44 24 04                  	movl	%eax, 4(%esp)
  10016f: c7 04 24 7d 33 10 00         	movl	$1061757, (%esp)
  100176: e8 a5 01 00 00               	calll	421 <cprintf>
  10017b: 0f b7 45 f2                  	movzwl	-14(%ebp), %eax
  10017f: 89 c2                        	movl	%eax, %edx
  100181: a1 20 fa 10 00               	movl	1112608, %eax
  100186: 89 54 24 08                  	movl	%edx, 8(%esp)
  10018a: 89 44 24 04                  	movl	%eax, 4(%esp)
  10018e: c7 04 24 8b 33 10 00         	movl	$1061771, (%esp)
  100195: e8 86 01 00 00               	calll	390 <cprintf>
  10019a: 0f b7 45 f0                  	movzwl	-16(%ebp), %eax
  10019e: 89 c2                        	movl	%eax, %edx
  1001a0: a1 20 fa 10 00               	movl	1112608, %eax
  1001a5: 89 54 24 08                  	movl	%edx, 8(%esp)
  1001a9: 89 44 24 04                  	movl	%eax, 4(%esp)
  1001ad: c7 04 24 99 33 10 00         	movl	$1061785, (%esp)
  1001b4: e8 67 01 00 00               	calll	359 <cprintf>
  1001b9: a1 20 fa 10 00               	movl	1112608, %eax
  1001be: 40                           	incl	%eax
  1001bf: a3 20 fa 10 00               	movl	%eax, 1112608
  1001c4: 90                           	nop
  1001c5: 89 ec                        	movl	%ebp, %esp
  1001c7: 5d                           	popl	%ebp
  1001c8: c3                           	retl

001001c9 lab1_switch_to_user:
  1001c9: 55                           	pushl	%ebp
  1001ca: 89 e5                        	movl	%esp, %ebp
  1001cc: 90                           	nop
  1001cd: 5d                           	popl	%ebp
  1001ce: c3                           	retl

001001cf lab1_switch_to_kernel:
  1001cf: 55                           	pushl	%ebp
  1001d0: 89 e5                        	movl	%esp, %ebp
  1001d2: 90                           	nop
  1001d3: 5d                           	popl	%ebp
  1001d4: c3                           	retl

001001d5 lab1_switch_test:
  1001d5: 55                           	pushl	%ebp
  1001d6: 89 e5                        	movl	%esp, %ebp
  1001d8: 83 ec 18                     	subl	$24, %esp
  1001db: e8 29 ff ff ff               	calll	-215 <lab1_print_cur_status>
  1001e0: c7 04 24 a8 33 10 00         	movl	$1061800, (%esp)
  1001e7: e8 34 01 00 00               	calll	308 <cprintf>
  1001ec: e8 d8 ff ff ff               	calll	-40 <lab1_switch_to_user>
  1001f1: e8 13 ff ff ff               	calll	-237 <lab1_print_cur_status>
  1001f6: c7 04 24 c8 33 10 00         	movl	$1061832, (%esp)
  1001fd: e8 1e 01 00 00               	calll	286 <cprintf>
  100202: e8 c8 ff ff ff               	calll	-56 <lab1_switch_to_kernel>
  100207: e8 fd fe ff ff               	calll	-259 <lab1_print_cur_status>
  10020c: 90                           	nop
  10020d: 89 ec                        	movl	%ebp, %esp
  10020f: 5d                           	popl	%ebp
  100210: c3                           	retl

00100211 readline:
  100211: 55                           	pushl	%ebp
  100212: 89 e5                        	movl	%esp, %ebp
  100214: 83 ec 28                     	subl	$40, %esp
  100217: 83 7d 08 00                  	cmpl	$0, 8(%ebp)
  10021b: 74 13                        	je	19 <readline+0x1f>
  10021d: 8b 45 08                     	movl	8(%ebp), %eax
  100220: 89 44 24 04                  	movl	%eax, 4(%esp)
  100224: c7 04 24 e7 33 10 00         	movl	$1061863, (%esp)
  10022b: e8 f0 00 00 00               	calll	240 <cprintf>
  100230: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  100237: e8 73 01 00 00               	calll	371 <getchar>
  10023c: 89 45 f0                     	movl	%eax, -16(%ebp)
  10023f: 83 7d f0 00                  	cmpl	$0, -16(%ebp)
  100243: 79 07                        	jns	7 <readline+0x3b>
  100245: b8 00 00 00 00               	movl	$0, %eax
  10024a: eb 78                        	jmp	120 <readline+0xb3>
  10024c: 83 7d f0 1f                  	cmpl	$31, -16(%ebp)
  100250: 7e 28                        	jle	40 <readline+0x69>
  100252: 81 7d f4 fe 03 00 00         	cmpl	$1022, -12(%ebp)
  100259: 7f 1f                        	jg	31 <readline+0x69>
  10025b: 8b 45 f0                     	movl	-16(%ebp), %eax
  10025e: 89 04 24                     	movl	%eax, (%esp)
  100261: e8 e2 00 00 00               	calll	226 <cputchar>
  100266: 8b 45 f4                     	movl	-12(%ebp), %eax
  100269: 8d 50 01                     	leal	1(%eax), %edx
  10026c: 89 55 f4                     	movl	%edx, -12(%ebp)
  10026f: 8b 55 f0                     	movl	-16(%ebp), %edx
  100272: 88 90 40 fa 10 00            	movb	%dl, 1112640(%eax)
  100278: eb 45                        	jmp	69 <readline+0xae>
  10027a: 83 7d f0 08                  	cmpl	$8, -16(%ebp)
  10027e: 75 16                        	jne	22 <readline+0x85>
  100280: 83 7d f4 00                  	cmpl	$0, -12(%ebp)
  100284: 7e 10                        	jle	16 <readline+0x85>
  100286: 8b 45 f0                     	movl	-16(%ebp), %eax
  100289: 89 04 24                     	movl	%eax, (%esp)
  10028c: e8 b7 00 00 00               	calll	183 <cputchar>
  100291: ff 4d f4                     	decl	-12(%ebp)
  100294: eb 29                        	jmp	41 <readline+0xae>
  100296: 83 7d f0 0a                  	cmpl	$10, -16(%ebp)
  10029a: 74 06                        	je	6 <readline+0x91>
  10029c: 83 7d f0 0d                  	cmpl	$13, -16(%ebp)
  1002a0: 75 95                        	jne	-107 <readline+0x26>
  1002a2: 8b 45 f0                     	movl	-16(%ebp), %eax
  1002a5: 89 04 24                     	movl	%eax, (%esp)
  1002a8: e8 9b 00 00 00               	calll	155 <cputchar>
  1002ad: 8b 45 f4                     	movl	-12(%ebp), %eax
  1002b0: 05 40 fa 10 00               	addl	$1112640, %eax
  1002b5: c6 00 00                     	movb	$0, (%eax)
  1002b8: b8 40 fa 10 00               	movl	$1112640, %eax
  1002bd: eb 05                        	jmp	5 <readline+0xb3>
  1002bf: e9 73 ff ff ff               	jmp	-141 <readline+0x26>
  1002c4: 89 ec                        	movl	%ebp, %esp
  1002c6: 5d                           	popl	%ebp
  1002c7: c3                           	retl

001002c8 cputch:
  1002c8: 55                           	pushl	%ebp
  1002c9: 89 e5                        	movl	%esp, %ebp
  1002cb: 83 ec 18                     	subl	$24, %esp
  1002ce: 8b 45 08                     	movl	8(%ebp), %eax
  1002d1: 89 04 24                     	movl	%eax, (%esp)
  1002d4: e8 02 13 00 00               	calll	4866 <cons_putc>
  1002d9: 8b 45 0c                     	movl	12(%ebp), %eax
  1002dc: 8b 00                        	movl	(%eax), %eax
  1002de: 8d 50 01                     	leal	1(%eax), %edx
  1002e1: 8b 45 0c                     	movl	12(%ebp), %eax
  1002e4: 89 10                        	movl	%edx, (%eax)
  1002e6: 90                           	nop
  1002e7: 89 ec                        	movl	%ebp, %esp
  1002e9: 5d                           	popl	%ebp
  1002ea: c3                           	retl

001002eb vcprintf:
  1002eb: 55                           	pushl	%ebp
  1002ec: 89 e5                        	movl	%esp, %ebp
  1002ee: 83 ec 28                     	subl	$40, %esp
  1002f1: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  1002f8: 8b 45 0c                     	movl	12(%ebp), %eax
  1002fb: 89 44 24 0c                  	movl	%eax, 12(%esp)
  1002ff: 8b 45 08                     	movl	8(%ebp), %eax
  100302: 89 44 24 08                  	movl	%eax, 8(%esp)
  100306: 8d 45 f4                     	leal	-12(%ebp), %eax
  100309: 89 44 24 04                  	movl	%eax, 4(%esp)
  10030d: c7 04 24 c8 02 10 00         	movl	$1049288, (%esp)
  100314: e8 ac 26 00 00               	calll	9900 <vprintfmt>
  100319: 8b 45 f4                     	movl	-12(%ebp), %eax
  10031c: 89 ec                        	movl	%ebp, %esp
  10031e: 5d                           	popl	%ebp
  10031f: c3                           	retl

00100320 cprintf:
  100320: 55                           	pushl	%ebp
  100321: 89 e5                        	movl	%esp, %ebp
  100323: 83 ec 28                     	subl	$40, %esp
  100326: 8d 45 0c                     	leal	12(%ebp), %eax
  100329: 89 45 f0                     	movl	%eax, -16(%ebp)
  10032c: 8b 45 f0                     	movl	-16(%ebp), %eax
  10032f: 89 44 24 04                  	movl	%eax, 4(%esp)
  100333: 8b 45 08                     	movl	8(%ebp), %eax
  100336: 89 04 24                     	movl	%eax, (%esp)
  100339: e8 ad ff ff ff               	calll	-83 <vcprintf>
  10033e: 89 45 f4                     	movl	%eax, -12(%ebp)
  100341: 8b 45 f4                     	movl	-12(%ebp), %eax
  100344: 89 ec                        	movl	%ebp, %esp
  100346: 5d                           	popl	%ebp
  100347: c3                           	retl

00100348 cputchar:
  100348: 55                           	pushl	%ebp
  100349: 89 e5                        	movl	%esp, %ebp
  10034b: 83 ec 18                     	subl	$24, %esp
  10034e: 8b 45 08                     	movl	8(%ebp), %eax
  100351: 89 04 24                     	movl	%eax, (%esp)
  100354: e8 82 12 00 00               	calll	4738 <cons_putc>
  100359: 90                           	nop
  10035a: 89 ec                        	movl	%ebp, %esp
  10035c: 5d                           	popl	%ebp
  10035d: c3                           	retl

0010035e cputs:
  10035e: 55                           	pushl	%ebp
  10035f: 89 e5                        	movl	%esp, %ebp
  100361: 83 ec 28                     	subl	$40, %esp
  100364: c7 45 f0 00 00 00 00         	movl	$0, -16(%ebp)
  10036b: eb 13                        	jmp	19 <cputs+0x22>
  10036d: 0f be 45 f7                  	movsbl	-9(%ebp), %eax
  100371: 8d 55 f0                     	leal	-16(%ebp), %edx
  100374: 89 54 24 04                  	movl	%edx, 4(%esp)
  100378: 89 04 24                     	movl	%eax, (%esp)
  10037b: e8 48 ff ff ff               	calll	-184 <cputch>
  100380: 8b 45 08                     	movl	8(%ebp), %eax
  100383: 8d 50 01                     	leal	1(%eax), %edx
  100386: 89 55 08                     	movl	%edx, 8(%ebp)
  100389: 0f b6 00                     	movzbl	(%eax), %eax
  10038c: 88 45 f7                     	movb	%al, -9(%ebp)
  10038f: 80 7d f7 00                  	cmpb	$0, -9(%ebp)
  100393: 75 d8                        	jne	-40 <cputs+0xf>
  100395: 8d 45 f0                     	leal	-16(%ebp), %eax
  100398: 89 44 24 04                  	movl	%eax, 4(%esp)
  10039c: c7 04 24 0a 00 00 00         	movl	$10, (%esp)
  1003a3: e8 20 ff ff ff               	calll	-224 <cputch>
  1003a8: 8b 45 f0                     	movl	-16(%ebp), %eax
  1003ab: 89 ec                        	movl	%ebp, %esp
  1003ad: 5d                           	popl	%ebp
  1003ae: c3                           	retl

001003af getchar:
  1003af: 55                           	pushl	%ebp
  1003b0: 89 e5                        	movl	%esp, %ebp
  1003b2: 83 ec 18                     	subl	$24, %esp
  1003b5: 90                           	nop
  1003b6: e8 4c 12 00 00               	calll	4684 <cons_getc>
  1003bb: 89 45 f4                     	movl	%eax, -12(%ebp)
  1003be: 83 7d f4 00                  	cmpl	$0, -12(%ebp)
  1003c2: 74 f2                        	je	-14 <getchar+0x7>
  1003c4: 8b 45 f4                     	movl	-12(%ebp), %eax
  1003c7: 89 ec                        	movl	%ebp, %esp
  1003c9: 5d                           	popl	%ebp
  1003ca: c3                           	retl

001003cb stab_binsearch:
  1003cb: 55                           	pushl	%ebp
  1003cc: 89 e5                        	movl	%esp, %ebp
  1003ce: 83 ec 20                     	subl	$32, %esp
  1003d1: 8b 45 0c                     	movl	12(%ebp), %eax
  1003d4: 8b 00                        	movl	(%eax), %eax
  1003d6: 89 45 fc                     	movl	%eax, -4(%ebp)
  1003d9: 8b 45 10                     	movl	16(%ebp), %eax
  1003dc: 8b 00                        	movl	(%eax), %eax
  1003de: 89 45 f8                     	movl	%eax, -8(%ebp)
  1003e1: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  1003e8: e9 ca 00 00 00               	jmp	202 <stab_binsearch+0xec>
  1003ed: 8b 55 fc                     	movl	-4(%ebp), %edx
  1003f0: 8b 45 f8                     	movl	-8(%ebp), %eax
  1003f3: 01 d0                        	addl	%edx, %eax
  1003f5: 89 c2                        	movl	%eax, %edx
  1003f7: c1 ea 1f                     	shrl	$31, %edx
  1003fa: 01 d0                        	addl	%edx, %eax
  1003fc: d1 f8                        	sarl	%eax
  1003fe: 89 45 ec                     	movl	%eax, -20(%ebp)
  100401: 8b 45 ec                     	movl	-20(%ebp), %eax
  100404: 89 45 f0                     	movl	%eax, -16(%ebp)
  100407: eb 03                        	jmp	3 <stab_binsearch+0x41>
  100409: ff 4d f0                     	decl	-16(%ebp)
  10040c: 8b 45 f0                     	movl	-16(%ebp), %eax
  10040f: 3b 45 fc                     	cmpl	-4(%ebp), %eax
  100412: 7c 1f                        	jl	31 <stab_binsearch+0x68>
  100414: 8b 55 f0                     	movl	-16(%ebp), %edx
  100417: 89 d0                        	movl	%edx, %eax
  100419: 01 c0                        	addl	%eax, %eax
  10041b: 01 d0                        	addl	%edx, %eax
  10041d: c1 e0 02                     	shll	$2, %eax
  100420: 89 c2                        	movl	%eax, %edx
  100422: 8b 45 08                     	movl	8(%ebp), %eax
  100425: 01 d0                        	addl	%edx, %eax
  100427: 0f b6 40 04                  	movzbl	4(%eax), %eax
  10042b: 0f b6 c0                     	movzbl	%al, %eax
  10042e: 39 45 14                     	cmpl	%eax, 20(%ebp)
  100431: 75 d6                        	jne	-42 <stab_binsearch+0x3e>
  100433: 8b 45 f0                     	movl	-16(%ebp), %eax
  100436: 3b 45 fc                     	cmpl	-4(%ebp), %eax
  100439: 7d 09                        	jge	9 <stab_binsearch+0x79>
  10043b: 8b 45 ec                     	movl	-20(%ebp), %eax
  10043e: 40                           	incl	%eax
  10043f: 89 45 fc                     	movl	%eax, -4(%ebp)
  100442: eb 73                        	jmp	115 <stab_binsearch+0xec>
  100444: c7 45 f4 01 00 00 00         	movl	$1, -12(%ebp)
  10044b: 8b 55 f0                     	movl	-16(%ebp), %edx
  10044e: 89 d0                        	movl	%edx, %eax
  100450: 01 c0                        	addl	%eax, %eax
  100452: 01 d0                        	addl	%edx, %eax
  100454: c1 e0 02                     	shll	$2, %eax
  100457: 89 c2                        	movl	%eax, %edx
  100459: 8b 45 08                     	movl	8(%ebp), %eax
  10045c: 01 d0                        	addl	%edx, %eax
  10045e: 8b 40 08                     	movl	8(%eax), %eax
  100461: 39 45 18                     	cmpl	%eax, 24(%ebp)
  100464: 76 11                        	jbe	17 <stab_binsearch+0xac>
  100466: 8b 45 0c                     	movl	12(%ebp), %eax
  100469: 8b 55 f0                     	movl	-16(%ebp), %edx
  10046c: 89 10                        	movl	%edx, (%eax)
  10046e: 8b 45 ec                     	movl	-20(%ebp), %eax
  100471: 40                           	incl	%eax
  100472: 89 45 fc                     	movl	%eax, -4(%ebp)
  100475: eb 40                        	jmp	64 <stab_binsearch+0xec>
  100477: 8b 55 f0                     	movl	-16(%ebp), %edx
  10047a: 89 d0                        	movl	%edx, %eax
  10047c: 01 c0                        	addl	%eax, %eax
  10047e: 01 d0                        	addl	%edx, %eax
  100480: c1 e0 02                     	shll	$2, %eax
  100483: 89 c2                        	movl	%eax, %edx
  100485: 8b 45 08                     	movl	8(%ebp), %eax
  100488: 01 d0                        	addl	%edx, %eax
  10048a: 8b 40 08                     	movl	8(%eax), %eax
  10048d: 39 45 18                     	cmpl	%eax, 24(%ebp)
  100490: 73 14                        	jae	20 <stab_binsearch+0xdb>
  100492: 8b 45 f0                     	movl	-16(%ebp), %eax
  100495: 8d 50 ff                     	leal	-1(%eax), %edx
  100498: 8b 45 10                     	movl	16(%ebp), %eax
  10049b: 89 10                        	movl	%edx, (%eax)
  10049d: 8b 45 f0                     	movl	-16(%ebp), %eax
  1004a0: 48                           	decl	%eax
  1004a1: 89 45 f8                     	movl	%eax, -8(%ebp)
  1004a4: eb 11                        	jmp	17 <stab_binsearch+0xec>
  1004a6: 8b 45 0c                     	movl	12(%ebp), %eax
  1004a9: 8b 55 f0                     	movl	-16(%ebp), %edx
  1004ac: 89 10                        	movl	%edx, (%eax)
  1004ae: 8b 45 f0                     	movl	-16(%ebp), %eax
  1004b1: 89 45 fc                     	movl	%eax, -4(%ebp)
  1004b4: ff 45 18                     	incl	24(%ebp)
  1004b7: 8b 45 fc                     	movl	-4(%ebp), %eax
  1004ba: 3b 45 f8                     	cmpl	-8(%ebp), %eax
  1004bd: 0f 8e 2a ff ff ff            	jle	-214 <stab_binsearch+0x22>
  1004c3: 83 7d f4 00                  	cmpl	$0, -12(%ebp)
  1004c7: 75 0f                        	jne	15 <stab_binsearch+0x10d>
  1004c9: 8b 45 0c                     	movl	12(%ebp), %eax
  1004cc: 8b 00                        	movl	(%eax), %eax
  1004ce: 8d 50 ff                     	leal	-1(%eax), %edx
  1004d1: 8b 45 10                     	movl	16(%ebp), %eax
  1004d4: 89 10                        	movl	%edx, (%eax)
  1004d6: eb 3e                        	jmp	62 <stab_binsearch+0x14b>
  1004d8: 8b 45 10                     	movl	16(%ebp), %eax
  1004db: 8b 00                        	movl	(%eax), %eax
  1004dd: 89 45 fc                     	movl	%eax, -4(%ebp)
  1004e0: eb 03                        	jmp	3 <stab_binsearch+0x11a>
  1004e2: ff 4d fc                     	decl	-4(%ebp)
  1004e5: 8b 45 0c                     	movl	12(%ebp), %eax
  1004e8: 8b 00                        	movl	(%eax), %eax
  1004ea: 39 45 fc                     	cmpl	%eax, -4(%ebp)
  1004ed: 7e 1f                        	jle	31 <stab_binsearch+0x143>
  1004ef: 8b 55 fc                     	movl	-4(%ebp), %edx
  1004f2: 89 d0                        	movl	%edx, %eax
  1004f4: 01 c0                        	addl	%eax, %eax
  1004f6: 01 d0                        	addl	%edx, %eax
  1004f8: c1 e0 02                     	shll	$2, %eax
  1004fb: 89 c2                        	movl	%eax, %edx
  1004fd: 8b 45 08                     	movl	8(%ebp), %eax
  100500: 01 d0                        	addl	%edx, %eax
  100502: 0f b6 40 04                  	movzbl	4(%eax), %eax
  100506: 0f b6 c0                     	movzbl	%al, %eax
  100509: 39 45 14                     	cmpl	%eax, 20(%ebp)
  10050c: 75 d4                        	jne	-44 <stab_binsearch+0x117>
  10050e: 8b 45 0c                     	movl	12(%ebp), %eax
  100511: 8b 55 fc                     	movl	-4(%ebp), %edx
  100514: 89 10                        	movl	%edx, (%eax)
  100516: 90                           	nop
  100517: 89 ec                        	movl	%ebp, %esp
  100519: 5d                           	popl	%ebp
  10051a: c3                           	retl

0010051b debuginfo_eip:
  10051b: 55                           	pushl	%ebp
  10051c: 89 e5                        	movl	%esp, %ebp
  10051e: 83 ec 58                     	subl	$88, %esp
  100521: 8b 45 0c                     	movl	12(%ebp), %eax
  100524: c7 00 ec 33 10 00            	movl	$1061868, (%eax)
  10052a: 8b 45 0c                     	movl	12(%ebp), %eax
  10052d: c7 40 04 00 00 00 00         	movl	$0, 4(%eax)
  100534: 8b 45 0c                     	movl	12(%ebp), %eax
  100537: c7 40 08 ec 33 10 00         	movl	$1061868, 8(%eax)
  10053e: 8b 45 0c                     	movl	12(%ebp), %eax
  100541: c7 40 0c 09 00 00 00         	movl	$9, 12(%eax)
  100548: 8b 45 0c                     	movl	12(%ebp), %eax
  10054b: 8b 55 08                     	movl	8(%ebp), %edx
  10054e: 89 50 10                     	movl	%edx, 16(%eax)
  100551: 8b 45 0c                     	movl	12(%ebp), %eax
  100554: c7 40 14 00 00 00 00         	movl	$0, 20(%eax)
  10055b: c7 45 f4 6c 3c 10 00         	movl	$1064044, -12(%ebp)
  100562: c7 45 f0 38 b8 10 00         	movl	$1095736, -16(%ebp)
  100569: c7 45 ec 39 b8 10 00         	movl	$1095737, -20(%ebp)
  100570: c7 45 e8 e1 e1 10 00         	movl	$1106401, -24(%ebp)
  100577: 8b 45 e8                     	movl	-24(%ebp), %eax
  10057a: 3b 45 ec                     	cmpl	-20(%ebp), %eax
  10057d: 76 0b                        	jbe	11 <debuginfo_eip+0x6f>
  10057f: 8b 45 e8                     	movl	-24(%ebp), %eax
  100582: 48                           	decl	%eax
  100583: 0f b6 00                     	movzbl	(%eax), %eax
  100586: 84 c0                        	testb	%al, %al
  100588: 74 0a                        	je	10 <debuginfo_eip+0x79>
  10058a: b8 ff ff ff ff               	movl	$4294967295, %eax
  10058f: e9 ab 02 00 00               	jmp	683 <debuginfo_eip+0x324>
  100594: c7 45 e4 00 00 00 00         	movl	$0, -28(%ebp)
  10059b: 8b 45 f0                     	movl	-16(%ebp), %eax
  10059e: 2b 45 f4                     	subl	-12(%ebp), %eax
  1005a1: c1 f8 02                     	sarl	$2, %eax
  1005a4: 69 c0 ab aa aa aa            	imull	$2863311531, %eax, %eax
  1005aa: 48                           	decl	%eax
  1005ab: 89 45 e0                     	movl	%eax, -32(%ebp)
  1005ae: 8b 45 08                     	movl	8(%ebp), %eax
  1005b1: 89 44 24 10                  	movl	%eax, 16(%esp)
  1005b5: c7 44 24 0c 64 00 00 00      	movl	$100, 12(%esp)
  1005bd: 8d 45 e0                     	leal	-32(%ebp), %eax
  1005c0: 89 44 24 08                  	movl	%eax, 8(%esp)
  1005c4: 8d 45 e4                     	leal	-28(%ebp), %eax
  1005c7: 89 44 24 04                  	movl	%eax, 4(%esp)
  1005cb: 8b 45 f4                     	movl	-12(%ebp), %eax
  1005ce: 89 04 24                     	movl	%eax, (%esp)
  1005d1: e8 f5 fd ff ff               	calll	-523 <stab_binsearch>
  1005d6: 8b 45 e4                     	movl	-28(%ebp), %eax
  1005d9: 85 c0                        	testl	%eax, %eax
  1005db: 75 0a                        	jne	10 <debuginfo_eip+0xcc>
  1005dd: b8 ff ff ff ff               	movl	$4294967295, %eax
  1005e2: e9 58 02 00 00               	jmp	600 <debuginfo_eip+0x324>
  1005e7: 8b 45 e4                     	movl	-28(%ebp), %eax
  1005ea: 89 45 dc                     	movl	%eax, -36(%ebp)
  1005ed: 8b 45 e0                     	movl	-32(%ebp), %eax
  1005f0: 89 45 d8                     	movl	%eax, -40(%ebp)
  1005f3: 8b 45 08                     	movl	8(%ebp), %eax
  1005f6: 89 44 24 10                  	movl	%eax, 16(%esp)
  1005fa: c7 44 24 0c 24 00 00 00      	movl	$36, 12(%esp)
  100602: 8d 45 d8                     	leal	-40(%ebp), %eax
  100605: 89 44 24 08                  	movl	%eax, 8(%esp)
  100609: 8d 45 dc                     	leal	-36(%ebp), %eax
  10060c: 89 44 24 04                  	movl	%eax, 4(%esp)
  100610: 8b 45 f4                     	movl	-12(%ebp), %eax
  100613: 89 04 24                     	movl	%eax, (%esp)
  100616: e8 b0 fd ff ff               	calll	-592 <stab_binsearch>
  10061b: 8b 55 dc                     	movl	-36(%ebp), %edx
  10061e: 8b 45 d8                     	movl	-40(%ebp), %eax
  100621: 39 c2                        	cmpl	%eax, %edx
  100623: 7f 78                        	jg	120 <debuginfo_eip+0x182>
  100625: 8b 45 dc                     	movl	-36(%ebp), %eax
  100628: 89 c2                        	movl	%eax, %edx
  10062a: 89 d0                        	movl	%edx, %eax
  10062c: 01 c0                        	addl	%eax, %eax
  10062e: 01 d0                        	addl	%edx, %eax
  100630: c1 e0 02                     	shll	$2, %eax
  100633: 89 c2                        	movl	%eax, %edx
  100635: 8b 45 f4                     	movl	-12(%ebp), %eax
  100638: 01 d0                        	addl	%edx, %eax
  10063a: 8b 10                        	movl	(%eax), %edx
  10063c: 8b 45 e8                     	movl	-24(%ebp), %eax
  10063f: 2b 45 ec                     	subl	-20(%ebp), %eax
  100642: 39 c2                        	cmpl	%eax, %edx
  100644: 73 22                        	jae	34 <debuginfo_eip+0x14d>
  100646: 8b 45 dc                     	movl	-36(%ebp), %eax
  100649: 89 c2                        	movl	%eax, %edx
  10064b: 89 d0                        	movl	%edx, %eax
  10064d: 01 c0                        	addl	%eax, %eax
  10064f: 01 d0                        	addl	%edx, %eax
  100651: c1 e0 02                     	shll	$2, %eax
  100654: 89 c2                        	movl	%eax, %edx
  100656: 8b 45 f4                     	movl	-12(%ebp), %eax
  100659: 01 d0                        	addl	%edx, %eax
  10065b: 8b 10                        	movl	(%eax), %edx
  10065d: 8b 45 ec                     	movl	-20(%ebp), %eax
  100660: 01 c2                        	addl	%eax, %edx
  100662: 8b 45 0c                     	movl	12(%ebp), %eax
  100665: 89 50 08                     	movl	%edx, 8(%eax)
  100668: 8b 45 dc                     	movl	-36(%ebp), %eax
  10066b: 89 c2                        	movl	%eax, %edx
  10066d: 89 d0                        	movl	%edx, %eax
  10066f: 01 c0                        	addl	%eax, %eax
  100671: 01 d0                        	addl	%edx, %eax
  100673: c1 e0 02                     	shll	$2, %eax
  100676: 89 c2                        	movl	%eax, %edx
  100678: 8b 45 f4                     	movl	-12(%ebp), %eax
  10067b: 01 d0                        	addl	%edx, %eax
  10067d: 8b 50 08                     	movl	8(%eax), %edx
  100680: 8b 45 0c                     	movl	12(%ebp), %eax
  100683: 89 50 10                     	movl	%edx, 16(%eax)
  100686: 8b 45 0c                     	movl	12(%ebp), %eax
  100689: 8b 40 10                     	movl	16(%eax), %eax
  10068c: 29 45 08                     	subl	%eax, 8(%ebp)
  10068f: 8b 45 dc                     	movl	-36(%ebp), %eax
  100692: 89 45 d4                     	movl	%eax, -44(%ebp)
  100695: 8b 45 d8                     	movl	-40(%ebp), %eax
  100698: 89 45 d0                     	movl	%eax, -48(%ebp)
  10069b: eb 15                        	jmp	21 <debuginfo_eip+0x197>
  10069d: 8b 45 0c                     	movl	12(%ebp), %eax
  1006a0: 8b 55 08                     	movl	8(%ebp), %edx
  1006a3: 89 50 10                     	movl	%edx, 16(%eax)
  1006a6: 8b 45 e4                     	movl	-28(%ebp), %eax
  1006a9: 89 45 d4                     	movl	%eax, -44(%ebp)
  1006ac: 8b 45 e0                     	movl	-32(%ebp), %eax
  1006af: 89 45 d0                     	movl	%eax, -48(%ebp)
  1006b2: 8b 45 0c                     	movl	12(%ebp), %eax
  1006b5: 8b 40 08                     	movl	8(%eax), %eax
  1006b8: c7 44 24 04 3a 00 00 00      	movl	$58, 4(%esp)
  1006c0: 89 04 24                     	movl	%eax, (%esp)
  1006c3: e8 4a 29 00 00               	calll	10570 <strfind>
  1006c8: 8b 55 0c                     	movl	12(%ebp), %edx
  1006cb: 8b 4a 08                     	movl	8(%edx), %ecx
  1006ce: 29 c8                        	subl	%ecx, %eax
  1006d0: 89 c2                        	movl	%eax, %edx
  1006d2: 8b 45 0c                     	movl	12(%ebp), %eax
  1006d5: 89 50 0c                     	movl	%edx, 12(%eax)
  1006d8: 8b 45 08                     	movl	8(%ebp), %eax
  1006db: 89 44 24 10                  	movl	%eax, 16(%esp)
  1006df: c7 44 24 0c 44 00 00 00      	movl	$68, 12(%esp)
  1006e7: 8d 45 d0                     	leal	-48(%ebp), %eax
  1006ea: 89 44 24 08                  	movl	%eax, 8(%esp)
  1006ee: 8d 45 d4                     	leal	-44(%ebp), %eax
  1006f1: 89 44 24 04                  	movl	%eax, 4(%esp)
  1006f5: 8b 45 f4                     	movl	-12(%ebp), %eax
  1006f8: 89 04 24                     	movl	%eax, (%esp)
  1006fb: e8 cb fc ff ff               	calll	-821 <stab_binsearch>
  100700: 8b 55 d4                     	movl	-44(%ebp), %edx
  100703: 8b 45 d0                     	movl	-48(%ebp), %eax
  100706: 39 c2                        	cmpl	%eax, %edx
  100708: 7f 23                        	jg	35 <debuginfo_eip+0x212>
  10070a: 8b 45 d0                     	movl	-48(%ebp), %eax
  10070d: 89 c2                        	movl	%eax, %edx
  10070f: 89 d0                        	movl	%edx, %eax
  100711: 01 c0                        	addl	%eax, %eax
  100713: 01 d0                        	addl	%edx, %eax
  100715: c1 e0 02                     	shll	$2, %eax
  100718: 89 c2                        	movl	%eax, %edx
  10071a: 8b 45 f4                     	movl	-12(%ebp), %eax
  10071d: 01 d0                        	addl	%edx, %eax
  10071f: 0f b7 40 06                  	movzwl	6(%eax), %eax
  100723: 89 c2                        	movl	%eax, %edx
  100725: 8b 45 0c                     	movl	12(%ebp), %eax
  100728: 89 50 04                     	movl	%edx, 4(%eax)
  10072b: eb 11                        	jmp	17 <debuginfo_eip+0x223>
  10072d: b8 ff ff ff ff               	movl	$4294967295, %eax
  100732: e9 08 01 00 00               	jmp	264 <debuginfo_eip+0x324>
  100737: 8b 45 d4                     	movl	-44(%ebp), %eax
  10073a: 48                           	decl	%eax
  10073b: 89 45 d4                     	movl	%eax, -44(%ebp)
  10073e: 8b 55 d4                     	movl	-44(%ebp), %edx
  100741: 8b 45 e4                     	movl	-28(%ebp), %eax
  100744: 39 c2                        	cmpl	%eax, %edx
  100746: 7c 56                        	jl	86 <debuginfo_eip+0x283>
  100748: 8b 45 d4                     	movl	-44(%ebp), %eax
  10074b: 89 c2                        	movl	%eax, %edx
  10074d: 89 d0                        	movl	%edx, %eax
  10074f: 01 c0                        	addl	%eax, %eax
  100751: 01 d0                        	addl	%edx, %eax
  100753: c1 e0 02                     	shll	$2, %eax
  100756: 89 c2                        	movl	%eax, %edx
  100758: 8b 45 f4                     	movl	-12(%ebp), %eax
  10075b: 01 d0                        	addl	%edx, %eax
  10075d: 0f b6 40 04                  	movzbl	4(%eax), %eax
  100761: 3c 84                        	cmpb	$-124, %al
  100763: 74 39                        	je	57 <debuginfo_eip+0x283>
  100765: 8b 45 d4                     	movl	-44(%ebp), %eax
  100768: 89 c2                        	movl	%eax, %edx
  10076a: 89 d0                        	movl	%edx, %eax
  10076c: 01 c0                        	addl	%eax, %eax
  10076e: 01 d0                        	addl	%edx, %eax
  100770: c1 e0 02                     	shll	$2, %eax
  100773: 89 c2                        	movl	%eax, %edx
  100775: 8b 45 f4                     	movl	-12(%ebp), %eax
  100778: 01 d0                        	addl	%edx, %eax
  10077a: 0f b6 40 04                  	movzbl	4(%eax), %eax
  10077e: 3c 64                        	cmpb	$100, %al
  100780: 75 b5                        	jne	-75 <debuginfo_eip+0x21c>
  100782: 8b 45 d4                     	movl	-44(%ebp), %eax
  100785: 89 c2                        	movl	%eax, %edx
  100787: 89 d0                        	movl	%edx, %eax
  100789: 01 c0                        	addl	%eax, %eax
  10078b: 01 d0                        	addl	%edx, %eax
  10078d: c1 e0 02                     	shll	$2, %eax
  100790: 89 c2                        	movl	%eax, %edx
  100792: 8b 45 f4                     	movl	-12(%ebp), %eax
  100795: 01 d0                        	addl	%edx, %eax
  100797: 8b 40 08                     	movl	8(%eax), %eax
  10079a: 85 c0                        	testl	%eax, %eax
  10079c: 74 99                        	je	-103 <debuginfo_eip+0x21c>
  10079e: 8b 55 d4                     	movl	-44(%ebp), %edx
  1007a1: 8b 45 e4                     	movl	-28(%ebp), %eax
  1007a4: 39 c2                        	cmpl	%eax, %edx
  1007a6: 7c 42                        	jl	66 <debuginfo_eip+0x2cf>
  1007a8: 8b 45 d4                     	movl	-44(%ebp), %eax
  1007ab: 89 c2                        	movl	%eax, %edx
  1007ad: 89 d0                        	movl	%edx, %eax
  1007af: 01 c0                        	addl	%eax, %eax
  1007b1: 01 d0                        	addl	%edx, %eax
  1007b3: c1 e0 02                     	shll	$2, %eax
  1007b6: 89 c2                        	movl	%eax, %edx
  1007b8: 8b 45 f4                     	movl	-12(%ebp), %eax
  1007bb: 01 d0                        	addl	%edx, %eax
  1007bd: 8b 10                        	movl	(%eax), %edx
  1007bf: 8b 45 e8                     	movl	-24(%ebp), %eax
  1007c2: 2b 45 ec                     	subl	-20(%ebp), %eax
  1007c5: 39 c2                        	cmpl	%eax, %edx
  1007c7: 73 21                        	jae	33 <debuginfo_eip+0x2cf>
  1007c9: 8b 45 d4                     	movl	-44(%ebp), %eax
  1007cc: 89 c2                        	movl	%eax, %edx
  1007ce: 89 d0                        	movl	%edx, %eax
  1007d0: 01 c0                        	addl	%eax, %eax
  1007d2: 01 d0                        	addl	%edx, %eax
  1007d4: c1 e0 02                     	shll	$2, %eax
  1007d7: 89 c2                        	movl	%eax, %edx
  1007d9: 8b 45 f4                     	movl	-12(%ebp), %eax
  1007dc: 01 d0                        	addl	%edx, %eax
  1007de: 8b 10                        	movl	(%eax), %edx
  1007e0: 8b 45 ec                     	movl	-20(%ebp), %eax
  1007e3: 01 c2                        	addl	%eax, %edx
  1007e5: 8b 45 0c                     	movl	12(%ebp), %eax
  1007e8: 89 10                        	movl	%edx, (%eax)
  1007ea: 8b 55 dc                     	movl	-36(%ebp), %edx
  1007ed: 8b 45 d8                     	movl	-40(%ebp), %eax
  1007f0: 39 c2                        	cmpl	%eax, %edx
  1007f2: 7d 46                        	jge	70 <debuginfo_eip+0x31f>
  1007f4: 8b 45 dc                     	movl	-36(%ebp), %eax
  1007f7: 40                           	incl	%eax
  1007f8: 89 45 d4                     	movl	%eax, -44(%ebp)
  1007fb: eb 16                        	jmp	22 <debuginfo_eip+0x2f8>
  1007fd: 8b 45 0c                     	movl	12(%ebp), %eax
  100800: 8b 40 14                     	movl	20(%eax), %eax
  100803: 8d 50 01                     	leal	1(%eax), %edx
  100806: 8b 45 0c                     	movl	12(%ebp), %eax
  100809: 89 50 14                     	movl	%edx, 20(%eax)
  10080c: 8b 45 d4                     	movl	-44(%ebp), %eax
  10080f: 40                           	incl	%eax
  100810: 89 45 d4                     	movl	%eax, -44(%ebp)
  100813: 8b 55 d4                     	movl	-44(%ebp), %edx
  100816: 8b 45 d8                     	movl	-40(%ebp), %eax
  100819: 39 c2                        	cmpl	%eax, %edx
  10081b: 7d 1d                        	jge	29 <debuginfo_eip+0x31f>
  10081d: 8b 45 d4                     	movl	-44(%ebp), %eax
  100820: 89 c2                        	movl	%eax, %edx
  100822: 89 d0                        	movl	%edx, %eax
  100824: 01 c0                        	addl	%eax, %eax
  100826: 01 d0                        	addl	%edx, %eax
  100828: c1 e0 02                     	shll	$2, %eax
  10082b: 89 c2                        	movl	%eax, %edx
  10082d: 8b 45 f4                     	movl	-12(%ebp), %eax
  100830: 01 d0                        	addl	%edx, %eax
  100832: 0f b6 40 04                  	movzbl	4(%eax), %eax
  100836: 3c a0                        	cmpb	$-96, %al
  100838: 74 c3                        	je	-61 <debuginfo_eip+0x2e2>
  10083a: b8 00 00 00 00               	movl	$0, %eax
  10083f: 89 ec                        	movl	%ebp, %esp
  100841: 5d                           	popl	%ebp
  100842: c3                           	retl

00100843 print_kerninfo:
  100843: 55                           	pushl	%ebp
  100844: 89 e5                        	movl	%esp, %ebp
  100846: 83 ec 18                     	subl	$24, %esp
  100849: c7 04 24 f6 33 10 00         	movl	$1061878, (%esp)
  100850: e8 cb fa ff ff               	calll	-1333 <cprintf>
  100855: c7 44 24 04 00 00 10 00      	movl	$1048576, 4(%esp)
  10085d: c7 04 24 0f 34 10 00         	movl	$1061903, (%esp)
  100864: e8 b7 fa ff ff               	calll	-1353 <cprintf>
  100869: c7 44 24 04 26 33 10 00      	movl	$1061670, 4(%esp)
  100871: c7 04 24 27 34 10 00         	movl	$1061927, (%esp)
  100878: e8 a3 fa ff ff               	calll	-1373 <cprintf>
  10087d: c7 44 24 04 16 fa 10 00      	movl	$1112598, 4(%esp)
  100885: c7 04 24 3f 34 10 00         	movl	$1061951, (%esp)
  10088c: e8 8f fa ff ff               	calll	-1393 <cprintf>
  100891: c7 44 24 04 08 0d 11 00      	movl	$1117448, 4(%esp)
  100899: c7 04 24 57 34 10 00         	movl	$1061975, (%esp)
  1008a0: e8 7b fa ff ff               	calll	-1413 <cprintf>
  1008a5: b8 08 0d 11 00               	movl	$1117448, %eax
  1008aa: 2d 00 00 10 00               	subl	$1048576, %eax
  1008af: 05 ff 03 00 00               	addl	$1023, %eax
  1008b4: 8d 90 ff 03 00 00            	leal	1023(%eax), %edx
  1008ba: 85 c0                        	testl	%eax, %eax
  1008bc: 0f 48 c2                     	cmovsl	%edx, %eax
  1008bf: c1 f8 0a                     	sarl	$10, %eax
  1008c2: 89 44 24 04                  	movl	%eax, 4(%esp)
  1008c6: c7 04 24 70 34 10 00         	movl	$1062000, (%esp)
  1008cd: e8 4e fa ff ff               	calll	-1458 <cprintf>
  1008d2: 90                           	nop
  1008d3: 89 ec                        	movl	%ebp, %esp
  1008d5: 5d                           	popl	%ebp
  1008d6: c3                           	retl

001008d7 print_debuginfo:
  1008d7: 55                           	pushl	%ebp
  1008d8: 89 e5                        	movl	%esp, %ebp
  1008da: 81 ec 48 01 00 00            	subl	$328, %esp
  1008e0: 8d 45 dc                     	leal	-36(%ebp), %eax
  1008e3: 89 44 24 04                  	movl	%eax, 4(%esp)
  1008e7: 8b 45 08                     	movl	8(%ebp), %eax
  1008ea: 89 04 24                     	movl	%eax, (%esp)
  1008ed: e8 29 fc ff ff               	calll	-983 <debuginfo_eip>
  1008f2: 85 c0                        	testl	%eax, %eax
  1008f4: 74 15                        	je	21 <print_debuginfo+0x34>
  1008f6: 8b 45 08                     	movl	8(%ebp), %eax
  1008f9: 89 44 24 04                  	movl	%eax, 4(%esp)
  1008fd: c7 04 24 9a 34 10 00         	movl	$1062042, (%esp)
  100904: e8 17 fa ff ff               	calll	-1513 <cprintf>
  100909: eb 6c                        	jmp	108 <print_debuginfo+0xa0>
  10090b: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  100912: eb 1b                        	jmp	27 <print_debuginfo+0x58>
  100914: 8b 55 e4                     	movl	-28(%ebp), %edx
  100917: 8b 45 f4                     	movl	-12(%ebp), %eax
  10091a: 01 d0                        	addl	%edx, %eax
  10091c: 0f b6 10                     	movzbl	(%eax), %edx
  10091f: 8d 8d dc fe ff ff            	leal	-292(%ebp), %ecx
  100925: 8b 45 f4                     	movl	-12(%ebp), %eax
  100928: 01 c8                        	addl	%ecx, %eax
  10092a: 88 10                        	movb	%dl, (%eax)
  10092c: ff 45 f4                     	incl	-12(%ebp)
  10092f: 8b 45 e8                     	movl	-24(%ebp), %eax
  100932: 39 45 f4                     	cmpl	%eax, -12(%ebp)
  100935: 7c dd                        	jl	-35 <print_debuginfo+0x3d>
  100937: 8d 95 dc fe ff ff            	leal	-292(%ebp), %edx
  10093d: 8b 45 f4                     	movl	-12(%ebp), %eax
  100940: 01 d0                        	addl	%edx, %eax
  100942: c6 00 00                     	movb	$0, (%eax)
  100945: 8b 55 ec                     	movl	-20(%ebp), %edx
  100948: 8b 45 08                     	movl	8(%ebp), %eax
  10094b: 29 d0                        	subl	%edx, %eax
  10094d: 89 c1                        	movl	%eax, %ecx
  10094f: 8b 55 e0                     	movl	-32(%ebp), %edx
  100952: 8b 45 dc                     	movl	-36(%ebp), %eax
  100955: 89 4c 24 10                  	movl	%ecx, 16(%esp)
  100959: 8d 8d dc fe ff ff            	leal	-292(%ebp), %ecx
  10095f: 89 4c 24 0c                  	movl	%ecx, 12(%esp)
  100963: 89 54 24 08                  	movl	%edx, 8(%esp)
  100967: 89 44 24 04                  	movl	%eax, 4(%esp)
  10096b: c7 04 24 b6 34 10 00         	movl	$1062070, (%esp)
  100972: e8 a9 f9 ff ff               	calll	-1623 <cprintf>
  100977: 90                           	nop
  100978: 89 ec                        	movl	%ebp, %esp
  10097a: 5d                           	popl	%ebp
  10097b: c3                           	retl

0010097c read_eip:
  10097c: 55                           	pushl	%ebp
  10097d: 89 e5                        	movl	%esp, %ebp
  10097f: 83 ec 10                     	subl	$16, %esp
  100982: 8b 45 04                     	movl	4(%ebp), %eax
  100985: 89 45 fc                     	movl	%eax, -4(%ebp)
  100988: 8b 45 fc                     	movl	-4(%ebp), %eax
  10098b: 89 ec                        	movl	%ebp, %esp
  10098d: 5d                           	popl	%ebp
  10098e: c3                           	retl

0010098f print_stackframe:
  10098f: 55                           	pushl	%ebp
  100990: 89 e5                        	movl	%esp, %ebp
  100992: 83 ec 38                     	subl	$56, %esp
  100995: 89 5d fc                     	movl	%ebx, -4(%ebp)
  100998: 89 e8                        	movl	%ebp, %eax
  10099a: 89 45 ec                     	movl	%eax, -20(%ebp)
  10099d: 8b 45 ec                     	movl	-20(%ebp), %eax
  1009a0: 89 45 f4                     	movl	%eax, -12(%ebp)
  1009a3: e8 d4 ff ff ff               	calll	-44 <read_eip>
  1009a8: 89 45 f0                     	movl	%eax, -16(%ebp)
  1009ab: eb 68                        	jmp	104 <print_stackframe+0x86>
  1009ad: 8b 45 f4                     	movl	-12(%ebp), %eax
  1009b0: 83 c0 14                     	addl	$20, %eax
  1009b3: 8b 18                        	movl	(%eax), %ebx
  1009b5: 8b 45 f4                     	movl	-12(%ebp), %eax
  1009b8: 83 c0 10                     	addl	$16, %eax
  1009bb: 8b 08                        	movl	(%eax), %ecx
  1009bd: 8b 45 f4                     	movl	-12(%ebp), %eax
  1009c0: 83 c0 0c                     	addl	$12, %eax
  1009c3: 8b 10                        	movl	(%eax), %edx
  1009c5: 8b 45 f4                     	movl	-12(%ebp), %eax
  1009c8: 83 c0 08                     	addl	$8, %eax
  1009cb: 8b 00                        	movl	(%eax), %eax
  1009cd: 89 5c 24 18                  	movl	%ebx, 24(%esp)
  1009d1: 89 4c 24 14                  	movl	%ecx, 20(%esp)
  1009d5: 89 54 24 10                  	movl	%edx, 16(%esp)
  1009d9: 89 44 24 0c                  	movl	%eax, 12(%esp)
  1009dd: 8b 45 f0                     	movl	-16(%ebp), %eax
  1009e0: 89 44 24 08                  	movl	%eax, 8(%esp)
  1009e4: 8b 45 f4                     	movl	-12(%ebp), %eax
  1009e7: 89 44 24 04                  	movl	%eax, 4(%esp)
  1009eb: c7 04 24 c8 34 10 00         	movl	$1062088, (%esp)
  1009f2: e8 29 f9 ff ff               	calll	-1751 <cprintf>
  1009f7: 8b 45 f0                     	movl	-16(%ebp), %eax
  1009fa: 89 04 24                     	movl	%eax, (%esp)
  1009fd: e8 d5 fe ff ff               	calll	-299 <print_debuginfo>
  100a02: 8b 45 f4                     	movl	-12(%ebp), %eax
  100a05: 83 c0 04                     	addl	$4, %eax
  100a08: 8b 00                        	movl	(%eax), %eax
  100a0a: 89 45 f0                     	movl	%eax, -16(%ebp)
  100a0d: 8b 45 f4                     	movl	-12(%ebp), %eax
  100a10: 8b 00                        	movl	(%eax), %eax
  100a12: 89 45 f4                     	movl	%eax, -12(%ebp)
  100a15: 83 7d f4 00                  	cmpl	$0, -12(%ebp)
  100a19: 75 92                        	jne	-110 <print_stackframe+0x1e>
  100a1b: 90                           	nop
  100a1c: 90                           	nop
  100a1d: 8b 5d fc                     	movl	-4(%ebp), %ebx
  100a20: 89 ec                        	movl	%ebp, %esp
  100a22: 5d                           	popl	%ebp
  100a23: c3                           	retl

00100a24 parse:
  100a24: 55                           	pushl	%ebp
  100a25: 89 e5                        	movl	%esp, %ebp
  100a27: 83 ec 28                     	subl	$40, %esp
  100a2a: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  100a31: eb 0c                        	jmp	12 <parse+0x1b>
  100a33: 8b 45 08                     	movl	8(%ebp), %eax
  100a36: 8d 50 01                     	leal	1(%eax), %edx
  100a39: 89 55 08                     	movl	%edx, 8(%ebp)
  100a3c: c6 00 00                     	movb	$0, (%eax)
  100a3f: 8b 45 08                     	movl	8(%ebp), %eax
  100a42: 0f b6 00                     	movzbl	(%eax), %eax
  100a45: 84 c0                        	testb	%al, %al
  100a47: 74 1d                        	je	29 <parse+0x42>
  100a49: 8b 45 08                     	movl	8(%ebp), %eax
  100a4c: 0f b6 00                     	movzbl	(%eax), %eax
  100a4f: 0f be c0                     	movsbl	%al, %eax
  100a52: 89 44 24 04                  	movl	%eax, 4(%esp)
  100a56: c7 04 24 80 35 10 00         	movl	$1062272, (%esp)
  100a5d: e8 7c 25 00 00               	calll	9596 <strchr>
  100a62: 85 c0                        	testl	%eax, %eax
  100a64: 75 cd                        	jne	-51 <parse+0xf>
  100a66: 8b 45 08                     	movl	8(%ebp), %eax
  100a69: 0f b6 00                     	movzbl	(%eax), %eax
  100a6c: 84 c0                        	testb	%al, %al
  100a6e: 74 65                        	je	101 <parse+0xb1>
  100a70: 83 7d f4 0f                  	cmpl	$15, -12(%ebp)
  100a74: 75 14                        	jne	20 <parse+0x66>
  100a76: c7 44 24 04 10 00 00 00      	movl	$16, 4(%esp)
  100a7e: c7 04 24 85 35 10 00         	movl	$1062277, (%esp)
  100a85: e8 96 f8 ff ff               	calll	-1898 <cprintf>
  100a8a: 8b 45 f4                     	movl	-12(%ebp), %eax
  100a8d: 8d 50 01                     	leal	1(%eax), %edx
  100a90: 89 55 f4                     	movl	%edx, -12(%ebp)
  100a93: 8d 14 85 00 00 00 00         	leal	(,%eax,4), %edx
  100a9a: 8b 45 0c                     	movl	12(%ebp), %eax
  100a9d: 01 c2                        	addl	%eax, %edx
  100a9f: 8b 45 08                     	movl	8(%ebp), %eax
  100aa2: 89 02                        	movl	%eax, (%edx)
  100aa4: eb 03                        	jmp	3 <parse+0x85>
  100aa6: ff 45 08                     	incl	8(%ebp)
  100aa9: 8b 45 08                     	movl	8(%ebp), %eax
  100aac: 0f b6 00                     	movzbl	(%eax), %eax
  100aaf: 84 c0                        	testb	%al, %al
  100ab1: 74 8c                        	je	-116 <parse+0x1b>
  100ab3: 8b 45 08                     	movl	8(%ebp), %eax
  100ab6: 0f b6 00                     	movzbl	(%eax), %eax
  100ab9: 0f be c0                     	movsbl	%al, %eax
  100abc: 89 44 24 04                  	movl	%eax, 4(%esp)
  100ac0: c7 04 24 80 35 10 00         	movl	$1062272, (%esp)
  100ac7: e8 12 25 00 00               	calll	9490 <strchr>
  100acc: 85 c0                        	testl	%eax, %eax
  100ace: 74 d6                        	je	-42 <parse+0x82>
  100ad0: e9 6a ff ff ff               	jmp	-150 <parse+0x1b>
  100ad5: 90                           	nop
  100ad6: 8b 45 f4                     	movl	-12(%ebp), %eax
  100ad9: 89 ec                        	movl	%ebp, %esp
  100adb: 5d                           	popl	%ebp
  100adc: c3                           	retl

00100add runcmd:
  100add: 55                           	pushl	%ebp
  100ade: 89 e5                        	movl	%esp, %ebp
  100ae0: 83 ec 68                     	subl	$104, %esp
  100ae3: 89 5d fc                     	movl	%ebx, -4(%ebp)
  100ae6: 8d 45 b0                     	leal	-80(%ebp), %eax
  100ae9: 89 44 24 04                  	movl	%eax, 4(%esp)
  100aed: 8b 45 08                     	movl	8(%ebp), %eax
  100af0: 89 04 24                     	movl	%eax, (%esp)
  100af3: e8 2c ff ff ff               	calll	-212 <parse>
  100af8: 89 45 f0                     	movl	%eax, -16(%ebp)
  100afb: 83 7d f0 00                  	cmpl	$0, -16(%ebp)
  100aff: 75 0a                        	jne	10 <runcmd+0x2e>
  100b01: b8 00 00 00 00               	movl	$0, %eax
  100b06: e9 83 00 00 00               	jmp	131 <runcmd+0xb1>
  100b0b: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  100b12: eb 5a                        	jmp	90 <runcmd+0x91>
  100b14: 8b 55 b0                     	movl	-80(%ebp), %edx
  100b17: 8b 4d f4                     	movl	-12(%ebp), %ecx
  100b1a: 89 c8                        	movl	%ecx, %eax
  100b1c: 01 c0                        	addl	%eax, %eax
  100b1e: 01 c8                        	addl	%ecx, %eax
  100b20: c1 e0 02                     	shll	$2, %eax
  100b23: 05 00 f0 10 00               	addl	$1110016, %eax
  100b28: 8b 00                        	movl	(%eax), %eax
  100b2a: 89 54 24 04                  	movl	%edx, 4(%esp)
  100b2e: 89 04 24                     	movl	%eax, (%esp)
  100b31: e8 0c 24 00 00               	calll	9228 <strcmp>
  100b36: 85 c0                        	testl	%eax, %eax
  100b38: 75 31                        	jne	49 <runcmd+0x8e>
  100b3a: 8b 55 f4                     	movl	-12(%ebp), %edx
  100b3d: 89 d0                        	movl	%edx, %eax
  100b3f: 01 c0                        	addl	%eax, %eax
  100b41: 01 d0                        	addl	%edx, %eax
  100b43: c1 e0 02                     	shll	$2, %eax
  100b46: 05 08 f0 10 00               	addl	$1110024, %eax
  100b4b: 8b 10                        	movl	(%eax), %edx
  100b4d: 8d 45 b0                     	leal	-80(%ebp), %eax
  100b50: 83 c0 04                     	addl	$4, %eax
  100b53: 8b 4d f0                     	movl	-16(%ebp), %ecx
  100b56: 8d 59 ff                     	leal	-1(%ecx), %ebx
  100b59: 8b 4d 0c                     	movl	12(%ebp), %ecx
  100b5c: 89 4c 24 08                  	movl	%ecx, 8(%esp)
  100b60: 89 44 24 04                  	movl	%eax, 4(%esp)
  100b64: 89 1c 24                     	movl	%ebx, (%esp)
  100b67: ff d2                        	calll	*%edx
  100b69: eb 23                        	jmp	35 <runcmd+0xb1>
  100b6b: ff 45 f4                     	incl	-12(%ebp)
  100b6e: 8b 45 f4                     	movl	-12(%ebp), %eax
  100b71: 83 f8 02                     	cmpl	$2, %eax
  100b74: 76 9e                        	jbe	-98 <runcmd+0x37>
  100b76: 8b 45 b0                     	movl	-80(%ebp), %eax
  100b79: 89 44 24 04                  	movl	%eax, 4(%esp)
  100b7d: c7 04 24 a3 35 10 00         	movl	$1062307, (%esp)
  100b84: e8 97 f7 ff ff               	calll	-2153 <cprintf>
  100b89: b8 00 00 00 00               	movl	$0, %eax
  100b8e: 8b 5d fc                     	movl	-4(%ebp), %ebx
  100b91: 89 ec                        	movl	%ebp, %esp
  100b93: 5d                           	popl	%ebp
  100b94: c3                           	retl

00100b95 kmonitor:
  100b95: 55                           	pushl	%ebp
  100b96: 89 e5                        	movl	%esp, %ebp
  100b98: 83 ec 28                     	subl	$40, %esp
  100b9b: c7 04 24 bc 35 10 00         	movl	$1062332, (%esp)
  100ba2: e8 79 f7 ff ff               	calll	-2183 <cprintf>
  100ba7: c7 04 24 e4 35 10 00         	movl	$1062372, (%esp)
  100bae: e8 6d f7 ff ff               	calll	-2195 <cprintf>
  100bb3: 83 7d 08 00                  	cmpl	$0, 8(%ebp)
  100bb7: 74 0b                        	je	11 <kmonitor+0x2f>
  100bb9: 8b 45 08                     	movl	8(%ebp), %eax
  100bbc: 89 04 24                     	movl	%eax, (%esp)
  100bbf: e8 f8 0c 00 00               	calll	3320 <print_trapframe>
  100bc4: c7 04 24 09 36 10 00         	movl	$1062409, (%esp)
  100bcb: e8 41 f6 ff ff               	calll	-2495 <readline>
  100bd0: 89 45 f4                     	movl	%eax, -12(%ebp)
  100bd3: 83 7d f4 00                  	cmpl	$0, -12(%ebp)
  100bd7: 74 eb                        	je	-21 <kmonitor+0x2f>
  100bd9: 8b 45 08                     	movl	8(%ebp), %eax
  100bdc: 89 44 24 04                  	movl	%eax, 4(%esp)
  100be0: 8b 45 f4                     	movl	-12(%ebp), %eax
  100be3: 89 04 24                     	movl	%eax, (%esp)
  100be6: e8 f2 fe ff ff               	calll	-270 <runcmd>
  100beb: 85 c0                        	testl	%eax, %eax
  100bed: 78 02                        	js	2 <kmonitor+0x5c>
  100bef: eb d3                        	jmp	-45 <kmonitor+0x2f>
  100bf1: 90                           	nop
  100bf2: 90                           	nop
  100bf3: 89 ec                        	movl	%ebp, %esp
  100bf5: 5d                           	popl	%ebp
  100bf6: c3                           	retl

00100bf7 mon_help:
  100bf7: 55                           	pushl	%ebp
  100bf8: 89 e5                        	movl	%esp, %ebp
  100bfa: 83 ec 28                     	subl	$40, %esp
  100bfd: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  100c04: eb 3d                        	jmp	61 <mon_help+0x4c>
  100c06: 8b 55 f4                     	movl	-12(%ebp), %edx
  100c09: 89 d0                        	movl	%edx, %eax
  100c0b: 01 c0                        	addl	%eax, %eax
  100c0d: 01 d0                        	addl	%edx, %eax
  100c0f: c1 e0 02                     	shll	$2, %eax
  100c12: 05 04 f0 10 00               	addl	$1110020, %eax
  100c17: 8b 10                        	movl	(%eax), %edx
  100c19: 8b 4d f4                     	movl	-12(%ebp), %ecx
  100c1c: 89 c8                        	movl	%ecx, %eax
  100c1e: 01 c0                        	addl	%eax, %eax
  100c20: 01 c8                        	addl	%ecx, %eax
  100c22: c1 e0 02                     	shll	$2, %eax
  100c25: 05 00 f0 10 00               	addl	$1110016, %eax
  100c2a: 8b 00                        	movl	(%eax), %eax
  100c2c: 89 54 24 08                  	movl	%edx, 8(%esp)
  100c30: 89 44 24 04                  	movl	%eax, 4(%esp)
  100c34: c7 04 24 0d 36 10 00         	movl	$1062413, (%esp)
  100c3b: e8 e0 f6 ff ff               	calll	-2336 <cprintf>
  100c40: ff 45 f4                     	incl	-12(%ebp)
  100c43: 8b 45 f4                     	movl	-12(%ebp), %eax
  100c46: 83 f8 02                     	cmpl	$2, %eax
  100c49: 76 bb                        	jbe	-69 <mon_help+0xf>
  100c4b: b8 00 00 00 00               	movl	$0, %eax
  100c50: 89 ec                        	movl	%ebp, %esp
  100c52: 5d                           	popl	%ebp
  100c53: c3                           	retl

00100c54 mon_kerninfo:
  100c54: 55                           	pushl	%ebp
  100c55: 89 e5                        	movl	%esp, %ebp
  100c57: 83 ec 08                     	subl	$8, %esp
  100c5a: e8 e4 fb ff ff               	calll	-1052 <print_kerninfo>
  100c5f: b8 00 00 00 00               	movl	$0, %eax
  100c64: 89 ec                        	movl	%ebp, %esp
  100c66: 5d                           	popl	%ebp
  100c67: c3                           	retl

00100c68 mon_backtrace:
  100c68: 55                           	pushl	%ebp
  100c69: 89 e5                        	movl	%esp, %ebp
  100c6b: 83 ec 08                     	subl	$8, %esp
  100c6e: e8 1c fd ff ff               	calll	-740 <print_stackframe>
  100c73: b8 00 00 00 00               	movl	$0, %eax
  100c78: 89 ec                        	movl	%ebp, %esp
  100c7a: 5d                           	popl	%ebp
  100c7b: c3                           	retl

00100c7c __panic:
  100c7c: 55                           	pushl	%ebp
  100c7d: 89 e5                        	movl	%esp, %ebp
  100c7f: 83 ec 28                     	subl	$40, %esp
  100c82: a1 40 fe 10 00               	movl	1113664, %eax
  100c87: 85 c0                        	testl	%eax, %eax
  100c89: 75 5b                        	jne	91 <__panic+0x6a>
  100c8b: c7 05 40 fe 10 00 01 00 00 00	movl	$1, 1113664
  100c95: 8d 45 14                     	leal	20(%ebp), %eax
  100c98: 89 45 f4                     	movl	%eax, -12(%ebp)
  100c9b: 8b 45 0c                     	movl	12(%ebp), %eax
  100c9e: 89 44 24 08                  	movl	%eax, 8(%esp)
  100ca2: 8b 45 08                     	movl	8(%ebp), %eax
  100ca5: 89 44 24 04                  	movl	%eax, 4(%esp)
  100ca9: c7 04 24 16 36 10 00         	movl	$1062422, (%esp)
  100cb0: e8 6b f6 ff ff               	calll	-2453 <cprintf>
  100cb5: 8b 45 f4                     	movl	-12(%ebp), %eax
  100cb8: 89 44 24 04                  	movl	%eax, 4(%esp)
  100cbc: 8b 45 10                     	movl	16(%ebp), %eax
  100cbf: 89 04 24                     	movl	%eax, (%esp)
  100cc2: e8 24 f6 ff ff               	calll	-2524 <vcprintf>
  100cc7: c7 04 24 32 36 10 00         	movl	$1062450, (%esp)
  100cce: e8 4d f6 ff ff               	calll	-2483 <cprintf>
  100cd3: c7 04 24 34 36 10 00         	movl	$1062452, (%esp)
  100cda: e8 41 f6 ff ff               	calll	-2495 <cprintf>
  100cdf: e8 ab fc ff ff               	calll	-853 <print_stackframe>
  100ce4: eb 01                        	jmp	1 <__panic+0x6b>
  100ce6: 90                           	nop
  100ce7: e8 81 09 00 00               	calll	2433 <intr_disable>
  100cec: c7 04 24 00 00 00 00         	movl	$0, (%esp)
  100cf3: e8 9d fe ff ff               	calll	-355 <kmonitor>
  100cf8: eb f2                        	jmp	-14 <__panic+0x70>

00100cfa __warn:
  100cfa: 55                           	pushl	%ebp
  100cfb: 89 e5                        	movl	%esp, %ebp
  100cfd: 83 ec 28                     	subl	$40, %esp
  100d00: 8d 45 14                     	leal	20(%ebp), %eax
  100d03: 89 45 f4                     	movl	%eax, -12(%ebp)
  100d06: 8b 45 0c                     	movl	12(%ebp), %eax
  100d09: 89 44 24 08                  	movl	%eax, 8(%esp)
  100d0d: 8b 45 08                     	movl	8(%ebp), %eax
  100d10: 89 44 24 04                  	movl	%eax, 4(%esp)
  100d14: c7 04 24 46 36 10 00         	movl	$1062470, (%esp)
  100d1b: e8 00 f6 ff ff               	calll	-2560 <cprintf>
  100d20: 8b 45 f4                     	movl	-12(%ebp), %eax
  100d23: 89 44 24 04                  	movl	%eax, 4(%esp)
  100d27: 8b 45 10                     	movl	16(%ebp), %eax
  100d2a: 89 04 24                     	movl	%eax, (%esp)
  100d2d: e8 b9 f5 ff ff               	calll	-2631 <vcprintf>
  100d32: c7 04 24 32 36 10 00         	movl	$1062450, (%esp)
  100d39: e8 e2 f5 ff ff               	calll	-2590 <cprintf>
  100d3e: 90                           	nop
  100d3f: 89 ec                        	movl	%ebp, %esp
  100d41: 5d                           	popl	%ebp
  100d42: c3                           	retl

00100d43 is_kernel_panic:
  100d43: 55                           	pushl	%ebp
  100d44: 89 e5                        	movl	%esp, %ebp
  100d46: a1 40 fe 10 00               	movl	1113664, %eax
  100d4b: 5d                           	popl	%ebp
  100d4c: c3                           	retl

00100d4d clock_init:
  100d4d: 55                           	pushl	%ebp
  100d4e: 89 e5                        	movl	%esp, %ebp
  100d50: 83 ec 28                     	subl	$40, %esp
  100d53: 66 c7 45 ee 43 00            	movw	$67, -18(%ebp)
  100d59: c6 45 ed 34                  	movb	$52, -19(%ebp)
  100d5d: 0f b6 45 ed                  	movzbl	-19(%ebp), %eax
  100d61: 0f b7 55 ee                  	movzwl	-18(%ebp), %edx
  100d65: ee                           	outb	%al, %dx
  100d66: 90                           	nop
  100d67: 66 c7 45 f2 40 00            	movw	$64, -14(%ebp)
  100d6d: c6 45 f1 9c                  	movb	$-100, -15(%ebp)
  100d71: 0f b6 45 f1                  	movzbl	-15(%ebp), %eax
  100d75: 0f b7 55 f2                  	movzwl	-14(%ebp), %edx
  100d79: ee                           	outb	%al, %dx
  100d7a: 90                           	nop
  100d7b: 66 c7 45 f6 40 00            	movw	$64, -10(%ebp)
  100d81: c6 45 f5 2e                  	movb	$46, -11(%ebp)
  100d85: 0f b6 45 f5                  	movzbl	-11(%ebp), %eax
  100d89: 0f b7 55 f6                  	movzwl	-10(%ebp), %edx
  100d8d: ee                           	outb	%al, %dx
  100d8e: 90                           	nop
  100d8f: c7 05 44 fe 10 00 00 00 00 00	movl	$0, 1113668
  100d99: c7 04 24 64 36 10 00         	movl	$1062500, (%esp)
  100da0: e8 7b f5 ff ff               	calll	-2693 <cprintf>
  100da5: c7 04 24 00 00 00 00         	movl	$0, (%esp)
  100dac: e8 21 09 00 00               	calll	2337 <pic_enable>
  100db1: 90                           	nop
  100db2: 89 ec                        	movl	%ebp, %esp
  100db4: 5d                           	popl	%ebp
  100db5: c3                           	retl

00100db6 delay:
  100db6: 55                           	pushl	%ebp
  100db7: 89 e5                        	movl	%esp, %ebp
  100db9: 83 ec 10                     	subl	$16, %esp
  100dbc: 66 c7 45 f2 84 00            	movw	$132, -14(%ebp)
  100dc2: 0f b7 45 f2                  	movzwl	-14(%ebp), %eax
  100dc6: 89 c2                        	movl	%eax, %edx
  100dc8: ec                           	inb	%dx, %al
  100dc9: 88 45 f1                     	movb	%al, -15(%ebp)
  100dcc: 66 c7 45 f6 84 00            	movw	$132, -10(%ebp)
  100dd2: 0f b7 45 f6                  	movzwl	-10(%ebp), %eax
  100dd6: 89 c2                        	movl	%eax, %edx
  100dd8: ec                           	inb	%dx, %al
  100dd9: 88 45 f5                     	movb	%al, -11(%ebp)
  100ddc: 66 c7 45 fa 84 00            	movw	$132, -6(%ebp)
  100de2: 0f b7 45 fa                  	movzwl	-6(%ebp), %eax
  100de6: 89 c2                        	movl	%eax, %edx
  100de8: ec                           	inb	%dx, %al
  100de9: 88 45 f9                     	movb	%al, -7(%ebp)
  100dec: 66 c7 45 fe 84 00            	movw	$132, -2(%ebp)
  100df2: 0f b7 45 fe                  	movzwl	-2(%ebp), %eax
  100df6: 89 c2                        	movl	%eax, %edx
  100df8: ec                           	inb	%dx, %al
  100df9: 88 45 fd                     	movb	%al, -3(%ebp)
  100dfc: 90                           	nop
  100dfd: 89 ec                        	movl	%ebp, %esp
  100dff: 5d                           	popl	%ebp
  100e00: c3                           	retl

00100e01 cga_init:
  100e01: 55                           	pushl	%ebp
  100e02: 89 e5                        	movl	%esp, %ebp
  100e04: 83 ec 20                     	subl	$32, %esp
  100e07: c7 45 fc 00 80 0b 00         	movl	$753664, -4(%ebp)
  100e0e: 8b 45 fc                     	movl	-4(%ebp), %eax
  100e11: 0f b7 00                     	movzwl	(%eax), %eax
  100e14: 66 89 45 fa                  	movw	%ax, -6(%ebp)
  100e18: 8b 45 fc                     	movl	-4(%ebp), %eax
  100e1b: 66 c7 00 5a a5               	movw	$42330, (%eax)
  100e20: 8b 45 fc                     	movl	-4(%ebp), %eax
  100e23: 0f b7 00                     	movzwl	(%eax), %eax
  100e26: 0f b7 c0                     	movzwl	%ax, %eax
  100e29: 3d 5a a5 00 00               	cmpl	$42330, %eax
  100e2e: 74 12                        	je	18 <cga_init+0x41>
  100e30: c7 45 fc 00 00 0b 00         	movl	$720896, -4(%ebp)
  100e37: 66 c7 05 66 fe 10 00 b4 03   	movw	$948, 1113702
  100e40: eb 13                        	jmp	19 <cga_init+0x54>
  100e42: 8b 45 fc                     	movl	-4(%ebp), %eax
  100e45: 0f b7 55 fa                  	movzwl	-6(%ebp), %edx
  100e49: 66 89 10                     	movw	%dx, (%eax)
  100e4c: 66 c7 05 66 fe 10 00 d4 03   	movw	$980, 1113702
  100e55: 0f b7 05 66 fe 10 00         	movzwl	1113702, %eax
  100e5c: 66 89 45 e6                  	movw	%ax, -26(%ebp)
  100e60: c6 45 e5 0e                  	movb	$14, -27(%ebp)
  100e64: 0f b6 45 e5                  	movzbl	-27(%ebp), %eax
  100e68: 0f b7 55 e6                  	movzwl	-26(%ebp), %edx
  100e6c: ee                           	outb	%al, %dx
  100e6d: 90                           	nop
  100e6e: 0f b7 05 66 fe 10 00         	movzwl	1113702, %eax
  100e75: 40                           	incl	%eax
  100e76: 0f b7 c0                     	movzwl	%ax, %eax
  100e79: 66 89 45 ea                  	movw	%ax, -22(%ebp)
  100e7d: 0f b7 45 ea                  	movzwl	-22(%ebp), %eax
  100e81: 89 c2                        	movl	%eax, %edx
  100e83: ec                           	inb	%dx, %al
  100e84: 88 45 e9                     	movb	%al, -23(%ebp)
  100e87: 0f b6 45 e9                  	movzbl	-23(%ebp), %eax
  100e8b: 0f b6 c0                     	movzbl	%al, %eax
  100e8e: c1 e0 08                     	shll	$8, %eax
  100e91: 89 45 f4                     	movl	%eax, -12(%ebp)
  100e94: 0f b7 05 66 fe 10 00         	movzwl	1113702, %eax
  100e9b: 66 89 45 ee                  	movw	%ax, -18(%ebp)
  100e9f: c6 45 ed 0f                  	movb	$15, -19(%ebp)
  100ea3: 0f b6 45 ed                  	movzbl	-19(%ebp), %eax
  100ea7: 0f b7 55 ee                  	movzwl	-18(%ebp), %edx
  100eab: ee                           	outb	%al, %dx
  100eac: 90                           	nop
  100ead: 0f b7 05 66 fe 10 00         	movzwl	1113702, %eax
  100eb4: 40                           	incl	%eax
  100eb5: 0f b7 c0                     	movzwl	%ax, %eax
  100eb8: 66 89 45 f2                  	movw	%ax, -14(%ebp)
  100ebc: 0f b7 45 f2                  	movzwl	-14(%ebp), %eax
  100ec0: 89 c2                        	movl	%eax, %edx
  100ec2: ec                           	inb	%dx, %al
  100ec3: 88 45 f1                     	movb	%al, -15(%ebp)
  100ec6: 0f b6 45 f1                  	movzbl	-15(%ebp), %eax
  100eca: 0f b6 c0                     	movzbl	%al, %eax
  100ecd: 09 45 f4                     	orl	%eax, -12(%ebp)
  100ed0: 8b 45 fc                     	movl	-4(%ebp), %eax
  100ed3: a3 60 fe 10 00               	movl	%eax, 1113696
  100ed8: 8b 45 f4                     	movl	-12(%ebp), %eax
  100edb: 0f b7 c0                     	movzwl	%ax, %eax
  100ede: 66 a3 64 fe 10 00            	movw	%ax, 1113700
  100ee4: 90                           	nop
  100ee5: 89 ec                        	movl	%ebp, %esp
  100ee7: 5d                           	popl	%ebp
  100ee8: c3                           	retl

00100ee9 serial_init:
  100ee9: 55                           	pushl	%ebp
  100eea: 89 e5                        	movl	%esp, %ebp
  100eec: 83 ec 48                     	subl	$72, %esp
  100eef: 66 c7 45 d2 fa 03            	movw	$1018, -46(%ebp)
  100ef5: c6 45 d1 00                  	movb	$0, -47(%ebp)
  100ef9: 0f b6 45 d1                  	movzbl	-47(%ebp), %eax
  100efd: 0f b7 55 d2                  	movzwl	-46(%ebp), %edx
  100f01: ee                           	outb	%al, %dx
  100f02: 90                           	nop
  100f03: 66 c7 45 d6 fb 03            	movw	$1019, -42(%ebp)
  100f09: c6 45 d5 80                  	movb	$-128, -43(%ebp)
  100f0d: 0f b6 45 d5                  	movzbl	-43(%ebp), %eax
  100f11: 0f b7 55 d6                  	movzwl	-42(%ebp), %edx
  100f15: ee                           	outb	%al, %dx
  100f16: 90                           	nop
  100f17: 66 c7 45 da f8 03            	movw	$1016, -38(%ebp)
  100f1d: c6 45 d9 0c                  	movb	$12, -39(%ebp)
  100f21: 0f b6 45 d9                  	movzbl	-39(%ebp), %eax
  100f25: 0f b7 55 da                  	movzwl	-38(%ebp), %edx
  100f29: ee                           	outb	%al, %dx
  100f2a: 90                           	nop
  100f2b: 66 c7 45 de f9 03            	movw	$1017, -34(%ebp)
  100f31: c6 45 dd 00                  	movb	$0, -35(%ebp)
  100f35: 0f b6 45 dd                  	movzbl	-35(%ebp), %eax
  100f39: 0f b7 55 de                  	movzwl	-34(%ebp), %edx
  100f3d: ee                           	outb	%al, %dx
  100f3e: 90                           	nop
  100f3f: 66 c7 45 e2 fb 03            	movw	$1019, -30(%ebp)
  100f45: c6 45 e1 03                  	movb	$3, -31(%ebp)
  100f49: 0f b6 45 e1                  	movzbl	-31(%ebp), %eax
  100f4d: 0f b7 55 e2                  	movzwl	-30(%ebp), %edx
  100f51: ee                           	outb	%al, %dx
  100f52: 90                           	nop
  100f53: 66 c7 45 e6 fc 03            	movw	$1020, -26(%ebp)
  100f59: c6 45 e5 00                  	movb	$0, -27(%ebp)
  100f5d: 0f b6 45 e5                  	movzbl	-27(%ebp), %eax
  100f61: 0f b7 55 e6                  	movzwl	-26(%ebp), %edx
  100f65: ee                           	outb	%al, %dx
  100f66: 90                           	nop
  100f67: 66 c7 45 ea f9 03            	movw	$1017, -22(%ebp)
  100f6d: c6 45 e9 01                  	movb	$1, -23(%ebp)
  100f71: 0f b6 45 e9                  	movzbl	-23(%ebp), %eax
  100f75: 0f b7 55 ea                  	movzwl	-22(%ebp), %edx
  100f79: ee                           	outb	%al, %dx
  100f7a: 90                           	nop
  100f7b: 66 c7 45 ee fd 03            	movw	$1021, -18(%ebp)
  100f81: 0f b7 45 ee                  	movzwl	-18(%ebp), %eax
  100f85: 89 c2                        	movl	%eax, %edx
  100f87: ec                           	inb	%dx, %al
  100f88: 88 45 ed                     	movb	%al, -19(%ebp)
  100f8b: 0f b6 45 ed                  	movzbl	-19(%ebp), %eax
  100f8f: 3c ff                        	cmpb	$-1, %al
  100f91: 0f 95 c0                     	setne	%al
  100f94: 0f b6 c0                     	movzbl	%al, %eax
  100f97: a3 68 fe 10 00               	movl	%eax, 1113704
  100f9c: 66 c7 45 f2 fa 03            	movw	$1018, -14(%ebp)
  100fa2: 0f b7 45 f2                  	movzwl	-14(%ebp), %eax
  100fa6: 89 c2                        	movl	%eax, %edx
  100fa8: ec                           	inb	%dx, %al
  100fa9: 88 45 f1                     	movb	%al, -15(%ebp)
  100fac: 66 c7 45 f6 f8 03            	movw	$1016, -10(%ebp)
  100fb2: 0f b7 45 f6                  	movzwl	-10(%ebp), %eax
  100fb6: 89 c2                        	movl	%eax, %edx
  100fb8: ec                           	inb	%dx, %al
  100fb9: 88 45 f5                     	movb	%al, -11(%ebp)
  100fbc: a1 68 fe 10 00               	movl	1113704, %eax
  100fc1: 85 c0                        	testl	%eax, %eax
  100fc3: 74 0c                        	je	12 <serial_init+0xe8>
  100fc5: c7 04 24 04 00 00 00         	movl	$4, (%esp)
  100fcc: e8 01 07 00 00               	calll	1793 <pic_enable>
  100fd1: 90                           	nop
  100fd2: 89 ec                        	movl	%ebp, %esp
  100fd4: 5d                           	popl	%ebp
  100fd5: c3                           	retl

00100fd6 lpt_putc_sub:
  100fd6: 55                           	pushl	%ebp
  100fd7: 89 e5                        	movl	%esp, %ebp
  100fd9: 83 ec 20                     	subl	$32, %esp
  100fdc: c7 45 fc 00 00 00 00         	movl	$0, -4(%ebp)
  100fe3: eb 08                        	jmp	8 <lpt_putc_sub+0x17>
  100fe5: e8 cc fd ff ff               	calll	-564 <delay>
  100fea: ff 45 fc                     	incl	-4(%ebp)
  100fed: 66 c7 45 fa 79 03            	movw	$889, -6(%ebp)
  100ff3: 0f b7 45 fa                  	movzwl	-6(%ebp), %eax
  100ff7: 89 c2                        	movl	%eax, %edx
  100ff9: ec                           	inb	%dx, %al
  100ffa: 88 45 f9                     	movb	%al, -7(%ebp)
  100ffd: 0f b6 45 f9                  	movzbl	-7(%ebp), %eax
  101001: 84 c0                        	testb	%al, %al
  101003: 78 09                        	js	9 <lpt_putc_sub+0x38>
  101005: 81 7d fc ff 31 00 00         	cmpl	$12799, -4(%ebp)
  10100c: 7e d7                        	jle	-41 <lpt_putc_sub+0xf>
  10100e: 8b 45 08                     	movl	8(%ebp), %eax
  101011: 0f b6 c0                     	movzbl	%al, %eax
  101014: 66 c7 45 ee 78 03            	movw	$888, -18(%ebp)
  10101a: 88 45 ed                     	movb	%al, -19(%ebp)
  10101d: 0f b6 45 ed                  	movzbl	-19(%ebp), %eax
  101021: 0f b7 55 ee                  	movzwl	-18(%ebp), %edx
  101025: ee                           	outb	%al, %dx
  101026: 90                           	nop
  101027: 66 c7 45 f2 7a 03            	movw	$890, -14(%ebp)
  10102d: c6 45 f1 0d                  	movb	$13, -15(%ebp)
  101031: 0f b6 45 f1                  	movzbl	-15(%ebp), %eax
  101035: 0f b7 55 f2                  	movzwl	-14(%ebp), %edx
  101039: ee                           	outb	%al, %dx
  10103a: 90                           	nop
  10103b: 66 c7 45 f6 7a 03            	movw	$890, -10(%ebp)
  101041: c6 45 f5 08                  	movb	$8, -11(%ebp)
  101045: 0f b6 45 f5                  	movzbl	-11(%ebp), %eax
  101049: 0f b7 55 f6                  	movzwl	-10(%ebp), %edx
  10104d: ee                           	outb	%al, %dx
  10104e: 90                           	nop
  10104f: 90                           	nop
  101050: 89 ec                        	movl	%ebp, %esp
  101052: 5d                           	popl	%ebp
  101053: c3                           	retl

00101054 lpt_putc:
  101054: 55                           	pushl	%ebp
  101055: 89 e5                        	movl	%esp, %ebp
  101057: 83 ec 04                     	subl	$4, %esp
  10105a: 83 7d 08 08                  	cmpl	$8, 8(%ebp)
  10105e: 74 0d                        	je	13 <lpt_putc+0x19>
  101060: 8b 45 08                     	movl	8(%ebp), %eax
  101063: 89 04 24                     	movl	%eax, (%esp)
  101066: e8 6b ff ff ff               	calll	-149 <lpt_putc_sub>
  10106b: eb 24                        	jmp	36 <lpt_putc+0x3d>
  10106d: c7 04 24 08 00 00 00         	movl	$8, (%esp)
  101074: e8 5d ff ff ff               	calll	-163 <lpt_putc_sub>
  101079: c7 04 24 20 00 00 00         	movl	$32, (%esp)
  101080: e8 51 ff ff ff               	calll	-175 <lpt_putc_sub>
  101085: c7 04 24 08 00 00 00         	movl	$8, (%esp)
  10108c: e8 45 ff ff ff               	calll	-187 <lpt_putc_sub>
  101091: 90                           	nop
  101092: 89 ec                        	movl	%ebp, %esp
  101094: 5d                           	popl	%ebp
  101095: c3                           	retl

00101096 cga_putc:
  101096: 55                           	pushl	%ebp
  101097: 89 e5                        	movl	%esp, %ebp
  101099: 83 ec 38                     	subl	$56, %esp
  10109c: 89 5d fc                     	movl	%ebx, -4(%ebp)
  10109f: 8b 45 08                     	movl	8(%ebp), %eax
  1010a2: 25 00 ff ff ff               	andl	$4294967040, %eax
  1010a7: 85 c0                        	testl	%eax, %eax
  1010a9: 75 07                        	jne	7 <cga_putc+0x1c>
  1010ab: 81 4d 08 00 07 00 00         	orl	$1792, 8(%ebp)
  1010b2: 8b 45 08                     	movl	8(%ebp), %eax
  1010b5: 0f b6 c0                     	movzbl	%al, %eax
  1010b8: 83 f8 0d                     	cmpl	$13, %eax
  1010bb: 74 72                        	je	114 <cga_putc+0x99>
  1010bd: 83 f8 0d                     	cmpl	$13, %eax
  1010c0: 0f 8f a3 00 00 00            	jg	163 <cga_putc+0xd3>
  1010c6: 83 f8 08                     	cmpl	$8, %eax
  1010c9: 74 0a                        	je	10 <cga_putc+0x3f>
  1010cb: 83 f8 0a                     	cmpl	$10, %eax
  1010ce: 74 4c                        	je	76 <cga_putc+0x86>
  1010d0: e9 94 00 00 00               	jmp	148 <cga_putc+0xd3>
  1010d5: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  1010dc: 85 c0                        	testl	%eax, %eax
  1010de: 0f 84 af 00 00 00            	je	175 <cga_putc+0xfd>
  1010e4: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  1010eb: 48                           	decl	%eax
  1010ec: 0f b7 c0                     	movzwl	%ax, %eax
  1010ef: 66 a3 64 fe 10 00            	movw	%ax, 1113700
  1010f5: 8b 45 08                     	movl	8(%ebp), %eax
  1010f8: 98                           	cwtl
  1010f9: 25 00 ff ff ff               	andl	$4294967040, %eax
  1010fe: 98                           	cwtl
  1010ff: 83 c8 20                     	orl	$32, %eax
  101102: 98                           	cwtl
  101103: 8b 0d 60 fe 10 00            	movl	1113696, %ecx
  101109: 0f b7 15 64 fe 10 00         	movzwl	1113700, %edx
  101110: 01 d2                        	addl	%edx, %edx
  101112: 01 ca                        	addl	%ecx, %edx
  101114: 0f b7 c0                     	movzwl	%ax, %eax
  101117: 66 89 02                     	movw	%ax, (%edx)
  10111a: eb 77                        	jmp	119 <cga_putc+0xfd>
  10111c: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  101123: 83 c0 50                     	addl	$80, %eax
  101126: 0f b7 c0                     	movzwl	%ax, %eax
  101129: 66 a3 64 fe 10 00            	movw	%ax, 1113700
  10112f: 0f b7 1d 64 fe 10 00         	movzwl	1113700, %ebx
  101136: 0f b7 0d 64 fe 10 00         	movzwl	1113700, %ecx
  10113d: ba cd cc cc cc               	movl	$3435973837, %edx
  101142: 89 c8                        	movl	%ecx, %eax
  101144: f7 e2                        	mull	%edx
  101146: c1 ea 06                     	shrl	$6, %edx
  101149: 89 d0                        	movl	%edx, %eax
  10114b: c1 e0 02                     	shll	$2, %eax
  10114e: 01 d0                        	addl	%edx, %eax
  101150: c1 e0 04                     	shll	$4, %eax
  101153: 29 c1                        	subl	%eax, %ecx
  101155: 89 ca                        	movl	%ecx, %edx
  101157: 0f b7 d2                     	movzwl	%dx, %edx
  10115a: 89 d8                        	movl	%ebx, %eax
  10115c: 29 d0                        	subl	%edx, %eax
  10115e: 0f b7 c0                     	movzwl	%ax, %eax
  101161: 66 a3 64 fe 10 00            	movw	%ax, 1113700
  101167: eb 2b                        	jmp	43 <cga_putc+0xfe>
  101169: 8b 0d 60 fe 10 00            	movl	1113696, %ecx
  10116f: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  101176: 8d 50 01                     	leal	1(%eax), %edx
  101179: 0f b7 d2                     	movzwl	%dx, %edx
  10117c: 66 89 15 64 fe 10 00         	movw	%dx, 1113700
  101183: 01 c0                        	addl	%eax, %eax
  101185: 8d 14 01                     	leal	(%ecx,%eax), %edx
  101188: 8b 45 08                     	movl	8(%ebp), %eax
  10118b: 0f b7 c0                     	movzwl	%ax, %eax
  10118e: 66 89 02                     	movw	%ax, (%edx)
  101191: eb 01                        	jmp	1 <cga_putc+0xfe>
  101193: 90                           	nop
  101194: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  10119b: 3d cf 07 00 00               	cmpl	$1999, %eax
  1011a0: 76 5e                        	jbe	94 <cga_putc+0x16a>
  1011a2: a1 60 fe 10 00               	movl	1113696, %eax
  1011a7: 8d 90 a0 00 00 00            	leal	160(%eax), %edx
  1011ad: a1 60 fe 10 00               	movl	1113696, %eax
  1011b2: c7 44 24 08 00 0f 00 00      	movl	$3840, 8(%esp)
  1011ba: 89 54 24 04                  	movl	%edx, 4(%esp)
  1011be: 89 04 24                     	movl	%eax, (%esp)
  1011c1: e8 16 20 00 00               	calll	8214 <memmove>
  1011c6: c7 45 f4 80 07 00 00         	movl	$1920, -12(%ebp)
  1011cd: eb 15                        	jmp	21 <cga_putc+0x14e>
  1011cf: 8b 15 60 fe 10 00            	movl	1113696, %edx
  1011d5: 8b 45 f4                     	movl	-12(%ebp), %eax
  1011d8: 01 c0                        	addl	%eax, %eax
  1011da: 01 d0                        	addl	%edx, %eax
  1011dc: 66 c7 00 20 07               	movw	$1824, (%eax)
  1011e1: ff 45 f4                     	incl	-12(%ebp)
  1011e4: 81 7d f4 cf 07 00 00         	cmpl	$1999, -12(%ebp)
  1011eb: 7e e2                        	jle	-30 <cga_putc+0x139>
  1011ed: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  1011f4: 83 e8 50                     	subl	$80, %eax
  1011f7: 0f b7 c0                     	movzwl	%ax, %eax
  1011fa: 66 a3 64 fe 10 00            	movw	%ax, 1113700
  101200: 0f b7 05 66 fe 10 00         	movzwl	1113702, %eax
  101207: 66 89 45 e6                  	movw	%ax, -26(%ebp)
  10120b: c6 45 e5 0e                  	movb	$14, -27(%ebp)
  10120f: 0f b6 45 e5                  	movzbl	-27(%ebp), %eax
  101213: 0f b7 55 e6                  	movzwl	-26(%ebp), %edx
  101217: ee                           	outb	%al, %dx
  101218: 90                           	nop
  101219: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  101220: c1 e8 08                     	shrl	$8, %eax
  101223: 0f b7 c0                     	movzwl	%ax, %eax
  101226: 0f b6 c0                     	movzbl	%al, %eax
  101229: 0f b7 15 66 fe 10 00         	movzwl	1113702, %edx
  101230: 42                           	incl	%edx
  101231: 0f b7 d2                     	movzwl	%dx, %edx
  101234: 66 89 55 ea                  	movw	%dx, -22(%ebp)
  101238: 88 45 e9                     	movb	%al, -23(%ebp)
  10123b: 0f b6 45 e9                  	movzbl	-23(%ebp), %eax
  10123f: 0f b7 55 ea                  	movzwl	-22(%ebp), %edx
  101243: ee                           	outb	%al, %dx
  101244: 90                           	nop
  101245: 0f b7 05 66 fe 10 00         	movzwl	1113702, %eax
  10124c: 66 89 45 ee                  	movw	%ax, -18(%ebp)
  101250: c6 45 ed 0f                  	movb	$15, -19(%ebp)
  101254: 0f b6 45 ed                  	movzbl	-19(%ebp), %eax
  101258: 0f b7 55 ee                  	movzwl	-18(%ebp), %edx
  10125c: ee                           	outb	%al, %dx
  10125d: 90                           	nop
  10125e: 0f b7 05 64 fe 10 00         	movzwl	1113700, %eax
  101265: 0f b6 c0                     	movzbl	%al, %eax
  101268: 0f b7 15 66 fe 10 00         	movzwl	1113702, %edx
  10126f: 42                           	incl	%edx
  101270: 0f b7 d2                     	movzwl	%dx, %edx
  101273: 66 89 55 f2                  	movw	%dx, -14(%ebp)
  101277: 88 45 f1                     	movb	%al, -15(%ebp)
  10127a: 0f b6 45 f1                  	movzbl	-15(%ebp), %eax
  10127e: 0f b7 55 f2                  	movzwl	-14(%ebp), %edx
  101282: ee                           	outb	%al, %dx
  101283: 90                           	nop
  101284: 90                           	nop
  101285: 8b 5d fc                     	movl	-4(%ebp), %ebx
  101288: 89 ec                        	movl	%ebp, %esp
  10128a: 5d                           	popl	%ebp
  10128b: c3                           	retl

0010128c serial_putc_sub:
  10128c: 55                           	pushl	%ebp
  10128d: 89 e5                        	movl	%esp, %ebp
  10128f: 83 ec 10                     	subl	$16, %esp
  101292: c7 45 fc 00 00 00 00         	movl	$0, -4(%ebp)
  101299: eb 08                        	jmp	8 <serial_putc_sub+0x17>
  10129b: e8 16 fb ff ff               	calll	-1258 <delay>
  1012a0: ff 45 fc                     	incl	-4(%ebp)
  1012a3: 66 c7 45 fa fd 03            	movw	$1021, -6(%ebp)
  1012a9: 0f b7 45 fa                  	movzwl	-6(%ebp), %eax
  1012ad: 89 c2                        	movl	%eax, %edx
  1012af: ec                           	inb	%dx, %al
  1012b0: 88 45 f9                     	movb	%al, -7(%ebp)
  1012b3: 0f b6 45 f9                  	movzbl	-7(%ebp), %eax
  1012b7: 0f b6 c0                     	movzbl	%al, %eax
  1012ba: 83 e0 20                     	andl	$32, %eax
  1012bd: 85 c0                        	testl	%eax, %eax
  1012bf: 75 09                        	jne	9 <serial_putc_sub+0x3e>
  1012c1: 81 7d fc ff 31 00 00         	cmpl	$12799, -4(%ebp)
  1012c8: 7e d1                        	jle	-47 <serial_putc_sub+0xf>
  1012ca: 8b 45 08                     	movl	8(%ebp), %eax
  1012cd: 0f b6 c0                     	movzbl	%al, %eax
  1012d0: 66 c7 45 f6 f8 03            	movw	$1016, -10(%ebp)
  1012d6: 88 45 f5                     	movb	%al, -11(%ebp)
  1012d9: 0f b6 45 f5                  	movzbl	-11(%ebp), %eax
  1012dd: 0f b7 55 f6                  	movzwl	-10(%ebp), %edx
  1012e1: ee                           	outb	%al, %dx
  1012e2: 90                           	nop
  1012e3: 90                           	nop
  1012e4: 89 ec                        	movl	%ebp, %esp
  1012e6: 5d                           	popl	%ebp
  1012e7: c3                           	retl

001012e8 serial_putc:
  1012e8: 55                           	pushl	%ebp
  1012e9: 89 e5                        	movl	%esp, %ebp
  1012eb: 83 ec 04                     	subl	$4, %esp
  1012ee: 83 7d 08 08                  	cmpl	$8, 8(%ebp)
  1012f2: 74 0d                        	je	13 <serial_putc+0x19>
  1012f4: 8b 45 08                     	movl	8(%ebp), %eax
  1012f7: 89 04 24                     	movl	%eax, (%esp)
  1012fa: e8 8d ff ff ff               	calll	-115 <serial_putc_sub>
  1012ff: eb 24                        	jmp	36 <serial_putc+0x3d>
  101301: c7 04 24 08 00 00 00         	movl	$8, (%esp)
  101308: e8 7f ff ff ff               	calll	-129 <serial_putc_sub>
  10130d: c7 04 24 20 00 00 00         	movl	$32, (%esp)
  101314: e8 73 ff ff ff               	calll	-141 <serial_putc_sub>
  101319: c7 04 24 08 00 00 00         	movl	$8, (%esp)
  101320: e8 67 ff ff ff               	calll	-153 <serial_putc_sub>
  101325: 90                           	nop
  101326: 89 ec                        	movl	%ebp, %esp
  101328: 5d                           	popl	%ebp
  101329: c3                           	retl

0010132a cons_intr:
  10132a: 55                           	pushl	%ebp
  10132b: 89 e5                        	movl	%esp, %ebp
  10132d: 83 ec 18                     	subl	$24, %esp
  101330: eb 33                        	jmp	51 <cons_intr+0x3b>
  101332: 83 7d f4 00                  	cmpl	$0, -12(%ebp)
  101336: 74 2d                        	je	45 <cons_intr+0x3b>
  101338: a1 84 00 11 00               	movl	1114244, %eax
  10133d: 8d 50 01                     	leal	1(%eax), %edx
  101340: 89 15 84 00 11 00            	movl	%edx, 1114244
  101346: 8b 55 f4                     	movl	-12(%ebp), %edx
  101349: 88 90 80 fe 10 00            	movb	%dl, 1113728(%eax)
  10134f: a1 84 00 11 00               	movl	1114244, %eax
  101354: 3d 00 02 00 00               	cmpl	$512, %eax
  101359: 75 0a                        	jne	10 <cons_intr+0x3b>
  10135b: c7 05 84 00 11 00 00 00 00 00	movl	$0, 1114244
  101365: 8b 45 08                     	movl	8(%ebp), %eax
  101368: ff d0                        	calll	*%eax
  10136a: 89 45 f4                     	movl	%eax, -12(%ebp)
  10136d: 83 7d f4 ff                  	cmpl	$-1, -12(%ebp)
  101371: 75 bf                        	jne	-65 <cons_intr+0x8>
  101373: 90                           	nop
  101374: 90                           	nop
  101375: 89 ec                        	movl	%ebp, %esp
  101377: 5d                           	popl	%ebp
  101378: c3                           	retl

00101379 serial_proc_data:
  101379: 55                           	pushl	%ebp
  10137a: 89 e5                        	movl	%esp, %ebp
  10137c: 83 ec 10                     	subl	$16, %esp
  10137f: 66 c7 45 fa fd 03            	movw	$1021, -6(%ebp)
  101385: 0f b7 45 fa                  	movzwl	-6(%ebp), %eax
  101389: 89 c2                        	movl	%eax, %edx
  10138b: ec                           	inb	%dx, %al
  10138c: 88 45 f9                     	movb	%al, -7(%ebp)
  10138f: 0f b6 45 f9                  	movzbl	-7(%ebp), %eax
  101393: 0f b6 c0                     	movzbl	%al, %eax
  101396: 83 e0 01                     	andl	$1, %eax
  101399: 85 c0                        	testl	%eax, %eax
  10139b: 75 07                        	jne	7 <serial_proc_data+0x2b>
  10139d: b8 ff ff ff ff               	movl	$4294967295, %eax
  1013a2: eb 2a                        	jmp	42 <serial_proc_data+0x55>
  1013a4: 66 c7 45 f6 f8 03            	movw	$1016, -10(%ebp)
  1013aa: 0f b7 45 f6                  	movzwl	-10(%ebp), %eax
  1013ae: 89 c2                        	movl	%eax, %edx
  1013b0: ec                           	inb	%dx, %al
  1013b1: 88 45 f5                     	movb	%al, -11(%ebp)
  1013b4: 0f b6 45 f5                  	movzbl	-11(%ebp), %eax
  1013b8: 0f b6 c0                     	movzbl	%al, %eax
  1013bb: 89 45 fc                     	movl	%eax, -4(%ebp)
  1013be: 83 7d fc 7f                  	cmpl	$127, -4(%ebp)
  1013c2: 75 07                        	jne	7 <serial_proc_data+0x52>
  1013c4: c7 45 fc 08 00 00 00         	movl	$8, -4(%ebp)
  1013cb: 8b 45 fc                     	movl	-4(%ebp), %eax
  1013ce: 89 ec                        	movl	%ebp, %esp
  1013d0: 5d                           	popl	%ebp
  1013d1: c3                           	retl

001013d2 serial_intr:
  1013d2: 55                           	pushl	%ebp
  1013d3: 89 e5                        	movl	%esp, %ebp
  1013d5: 83 ec 18                     	subl	$24, %esp
  1013d8: a1 68 fe 10 00               	movl	1113704, %eax
  1013dd: 85 c0                        	testl	%eax, %eax
  1013df: 74 0c                        	je	12 <serial_intr+0x1b>
  1013e1: c7 04 24 79 13 10 00         	movl	$1053561, (%esp)
  1013e8: e8 3d ff ff ff               	calll	-195 <cons_intr>
  1013ed: 90                           	nop
  1013ee: 89 ec                        	movl	%ebp, %esp
  1013f0: 5d                           	popl	%ebp
  1013f1: c3                           	retl

001013f2 kbd_proc_data:
  1013f2: 55                           	pushl	%ebp
  1013f3: 89 e5                        	movl	%esp, %ebp
  1013f5: 83 ec 38                     	subl	$56, %esp
  1013f8: 66 c7 45 f0 64 00            	movw	$100, -16(%ebp)
  1013fe: 8b 45 f0                     	movl	-16(%ebp), %eax
  101401: 89 c2                        	movl	%eax, %edx
  101403: ec                           	inb	%dx, %al
  101404: 88 45 ef                     	movb	%al, -17(%ebp)
  101407: 0f b6 45 ef                  	movzbl	-17(%ebp), %eax
  10140b: 0f b6 c0                     	movzbl	%al, %eax
  10140e: 83 e0 01                     	andl	$1, %eax
  101411: 85 c0                        	testl	%eax, %eax
  101413: 75 0a                        	jne	10 <kbd_proc_data+0x2d>
  101415: b8 ff ff ff ff               	movl	$4294967295, %eax
  10141a: e9 56 01 00 00               	jmp	342 <kbd_proc_data+0x183>
  10141f: 66 c7 45 ec 60 00            	movw	$96, -20(%ebp)
  101425: 8b 45 ec                     	movl	-20(%ebp), %eax
  101428: 89 c2                        	movl	%eax, %edx
  10142a: ec                           	inb	%dx, %al
  10142b: 88 45 eb                     	movb	%al, -21(%ebp)
  10142e: 0f b6 45 eb                  	movzbl	-21(%ebp), %eax
  101432: 88 45 f3                     	movb	%al, -13(%ebp)
  101435: 80 7d f3 e0                  	cmpb	$-32, -13(%ebp)
  101439: 75 17                        	jne	23 <kbd_proc_data+0x60>
  10143b: a1 88 00 11 00               	movl	1114248, %eax
  101440: 83 c8 40                     	orl	$64, %eax
  101443: a3 88 00 11 00               	movl	%eax, 1114248
  101448: b8 00 00 00 00               	movl	$0, %eax
  10144d: e9 23 01 00 00               	jmp	291 <kbd_proc_data+0x183>
  101452: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  101456: 84 c0                        	testb	%al, %al
  101458: 79 45                        	jns	69 <kbd_proc_data+0xad>
  10145a: a1 88 00 11 00               	movl	1114248, %eax
  10145f: 83 e0 40                     	andl	$64, %eax
  101462: 85 c0                        	testl	%eax, %eax
  101464: 75 08                        	jne	8 <kbd_proc_data+0x7c>
  101466: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  10146a: 24 7f                        	andb	$127, %al
  10146c: eb 04                        	jmp	4 <kbd_proc_data+0x80>
  10146e: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  101472: 88 45 f3                     	movb	%al, -13(%ebp)
  101475: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  101479: 0f b6 80 40 f0 10 00         	movzbl	1110080(%eax), %eax
  101480: 0c 40                        	orb	$64, %al
  101482: 0f b6 c0                     	movzbl	%al, %eax
  101485: f7 d0                        	notl	%eax
  101487: 89 c2                        	movl	%eax, %edx
  101489: a1 88 00 11 00               	movl	1114248, %eax
  10148e: 21 d0                        	andl	%edx, %eax
  101490: a3 88 00 11 00               	movl	%eax, 1114248
  101495: b8 00 00 00 00               	movl	$0, %eax
  10149a: e9 d6 00 00 00               	jmp	214 <kbd_proc_data+0x183>
  10149f: a1 88 00 11 00               	movl	1114248, %eax
  1014a4: 83 e0 40                     	andl	$64, %eax
  1014a7: 85 c0                        	testl	%eax, %eax
  1014a9: 74 11                        	je	17 <kbd_proc_data+0xca>
  1014ab: 80 4d f3 80                  	orb	$-128, -13(%ebp)
  1014af: a1 88 00 11 00               	movl	1114248, %eax
  1014b4: 83 e0 bf                     	andl	$-65, %eax
  1014b7: a3 88 00 11 00               	movl	%eax, 1114248
  1014bc: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  1014c0: 0f b6 80 40 f0 10 00         	movzbl	1110080(%eax), %eax
  1014c7: 0f b6 d0                     	movzbl	%al, %edx
  1014ca: a1 88 00 11 00               	movl	1114248, %eax
  1014cf: 09 d0                        	orl	%edx, %eax
  1014d1: a3 88 00 11 00               	movl	%eax, 1114248
  1014d6: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  1014da: 0f b6 80 40 f1 10 00         	movzbl	1110336(%eax), %eax
  1014e1: 0f b6 d0                     	movzbl	%al, %edx
  1014e4: a1 88 00 11 00               	movl	1114248, %eax
  1014e9: 31 d0                        	xorl	%edx, %eax
  1014eb: a3 88 00 11 00               	movl	%eax, 1114248
  1014f0: a1 88 00 11 00               	movl	1114248, %eax
  1014f5: 83 e0 03                     	andl	$3, %eax
  1014f8: 8b 14 85 40 f5 10 00         	movl	1111360(,%eax,4), %edx
  1014ff: 0f b6 45 f3                  	movzbl	-13(%ebp), %eax
  101503: 01 d0                        	addl	%edx, %eax
  101505: 0f b6 00                     	movzbl	(%eax), %eax
  101508: 0f b6 c0                     	movzbl	%al, %eax
  10150b: 89 45 f4                     	movl	%eax, -12(%ebp)
  10150e: a1 88 00 11 00               	movl	1114248, %eax
  101513: 83 e0 08                     	andl	$8, %eax
  101516: 85 c0                        	testl	%eax, %eax
  101518: 74 22                        	je	34 <kbd_proc_data+0x14a>
  10151a: 83 7d f4 60                  	cmpl	$96, -12(%ebp)
  10151e: 7e 0c                        	jle	12 <kbd_proc_data+0x13a>
  101520: 83 7d f4 7a                  	cmpl	$122, -12(%ebp)
  101524: 7f 06                        	jg	6 <kbd_proc_data+0x13a>
  101526: 83 6d f4 20                  	subl	$32, -12(%ebp)
  10152a: eb 10                        	jmp	16 <kbd_proc_data+0x14a>
  10152c: 83 7d f4 40                  	cmpl	$64, -12(%ebp)
  101530: 7e 0a                        	jle	10 <kbd_proc_data+0x14a>
  101532: 83 7d f4 5a                  	cmpl	$90, -12(%ebp)
  101536: 7f 04                        	jg	4 <kbd_proc_data+0x14a>
  101538: 83 45 f4 20                  	addl	$32, -12(%ebp)
  10153c: a1 88 00 11 00               	movl	1114248, %eax
  101541: f7 d0                        	notl	%eax
  101543: 83 e0 06                     	andl	$6, %eax
  101546: 85 c0                        	testl	%eax, %eax
  101548: 75 28                        	jne	40 <kbd_proc_data+0x180>
  10154a: 81 7d f4 e9 00 00 00         	cmpl	$233, -12(%ebp)
  101551: 75 1f                        	jne	31 <kbd_proc_data+0x180>
  101553: c7 04 24 7f 36 10 00         	movl	$1062527, (%esp)
  10155a: e8 c1 ed ff ff               	calll	-4671 <cprintf>
  10155f: 66 c7 45 e8 92 00            	movw	$146, -24(%ebp)
  101565: c6 45 e7 03                  	movb	$3, -25(%ebp)
  101569: 0f b6 45 e7                  	movzbl	-25(%ebp), %eax
  10156d: 8b 55 e8                     	movl	-24(%ebp), %edx
  101570: ee                           	outb	%al, %dx
  101571: 90                           	nop
  101572: 8b 45 f4                     	movl	-12(%ebp), %eax
  101575: 89 ec                        	movl	%ebp, %esp
  101577: 5d                           	popl	%ebp
  101578: c3                           	retl

00101579 kbd_intr:
  101579: 55                           	pushl	%ebp
  10157a: 89 e5                        	movl	%esp, %ebp
  10157c: 83 ec 18                     	subl	$24, %esp
  10157f: c7 04 24 f2 13 10 00         	movl	$1053682, (%esp)
  101586: e8 9f fd ff ff               	calll	-609 <cons_intr>
  10158b: 90                           	nop
  10158c: 89 ec                        	movl	%ebp, %esp
  10158e: 5d                           	popl	%ebp
  10158f: c3                           	retl

00101590 kbd_init:
  101590: 55                           	pushl	%ebp
  101591: 89 e5                        	movl	%esp, %ebp
  101593: 83 ec 18                     	subl	$24, %esp
  101596: e8 de ff ff ff               	calll	-34 <kbd_intr>
  10159b: c7 04 24 01 00 00 00         	movl	$1, (%esp)
  1015a2: e8 2b 01 00 00               	calll	299 <pic_enable>
  1015a7: 90                           	nop
  1015a8: 89 ec                        	movl	%ebp, %esp
  1015aa: 5d                           	popl	%ebp
  1015ab: c3                           	retl

001015ac cons_init:
  1015ac: 55                           	pushl	%ebp
  1015ad: 89 e5                        	movl	%esp, %ebp
  1015af: 83 ec 18                     	subl	$24, %esp
  1015b2: e8 4a f8 ff ff               	calll	-1974 <cga_init>
  1015b7: e8 2d f9 ff ff               	calll	-1747 <serial_init>
  1015bc: e8 cf ff ff ff               	calll	-49 <kbd_init>
  1015c1: a1 68 fe 10 00               	movl	1113704, %eax
  1015c6: 85 c0                        	testl	%eax, %eax
  1015c8: 75 0c                        	jne	12 <cons_init+0x2a>
  1015ca: c7 04 24 8b 36 10 00         	movl	$1062539, (%esp)
  1015d1: e8 4a ed ff ff               	calll	-4790 <cprintf>
  1015d6: 90                           	nop
  1015d7: 89 ec                        	movl	%ebp, %esp
  1015d9: 5d                           	popl	%ebp
  1015da: c3                           	retl

001015db cons_putc:
  1015db: 55                           	pushl	%ebp
  1015dc: 89 e5                        	movl	%esp, %ebp
  1015de: 83 ec 18                     	subl	$24, %esp
  1015e1: 8b 45 08                     	movl	8(%ebp), %eax
  1015e4: 89 04 24                     	movl	%eax, (%esp)
  1015e7: e8 68 fa ff ff               	calll	-1432 <lpt_putc>
  1015ec: 8b 45 08                     	movl	8(%ebp), %eax
  1015ef: 89 04 24                     	movl	%eax, (%esp)
  1015f2: e8 9f fa ff ff               	calll	-1377 <cga_putc>
  1015f7: 8b 45 08                     	movl	8(%ebp), %eax
  1015fa: 89 04 24                     	movl	%eax, (%esp)
  1015fd: e8 e6 fc ff ff               	calll	-794 <serial_putc>
  101602: 90                           	nop
  101603: 89 ec                        	movl	%ebp, %esp
  101605: 5d                           	popl	%ebp
  101606: c3                           	retl

00101607 cons_getc:
  101607: 55                           	pushl	%ebp
  101608: 89 e5                        	movl	%esp, %ebp
  10160a: 83 ec 18                     	subl	$24, %esp
  10160d: e8 c0 fd ff ff               	calll	-576 <serial_intr>
  101612: e8 62 ff ff ff               	calll	-158 <kbd_intr>
  101617: 8b 15 80 00 11 00            	movl	1114240, %edx
  10161d: a1 84 00 11 00               	movl	1114244, %eax
  101622: 39 c2                        	cmpl	%eax, %edx
  101624: 74 36                        	je	54 <cons_getc+0x55>
  101626: a1 80 00 11 00               	movl	1114240, %eax
  10162b: 8d 50 01                     	leal	1(%eax), %edx
  10162e: 89 15 80 00 11 00            	movl	%edx, 1114240
  101634: 0f b6 80 80 fe 10 00         	movzbl	1113728(%eax), %eax
  10163b: 0f b6 c0                     	movzbl	%al, %eax
  10163e: 89 45 f4                     	movl	%eax, -12(%ebp)
  101641: a1 80 00 11 00               	movl	1114240, %eax
  101646: 3d 00 02 00 00               	cmpl	$512, %eax
  10164b: 75 0a                        	jne	10 <cons_getc+0x50>
  10164d: c7 05 80 00 11 00 00 00 00 00	movl	$0, 1114240
  101657: 8b 45 f4                     	movl	-12(%ebp), %eax
  10165a: eb 05                        	jmp	5 <cons_getc+0x5a>
  10165c: b8 00 00 00 00               	movl	$0, %eax
  101661: 89 ec                        	movl	%ebp, %esp
  101663: 5d                           	popl	%ebp
  101664: c3                           	retl

00101665 intr_enable:
  101665: 55                           	pushl	%ebp
  101666: 89 e5                        	movl	%esp, %ebp
  101668: fb                           	sti
  101669: 90                           	nop
  10166a: 90                           	nop
  10166b: 5d                           	popl	%ebp
  10166c: c3                           	retl

0010166d intr_disable:
  10166d: 55                           	pushl	%ebp
  10166e: 89 e5                        	movl	%esp, %ebp
  101670: fa                           	cli
  101671: 90                           	nop
  101672: 90                           	nop
  101673: 5d                           	popl	%ebp
  101674: c3                           	retl

00101675 pic_setmask:
  101675: 55                           	pushl	%ebp
  101676: 89 e5                        	movl	%esp, %ebp
  101678: 83 ec 14                     	subl	$20, %esp
  10167b: 8b 45 08                     	movl	8(%ebp), %eax
  10167e: 66 89 45 ec                  	movw	%ax, -20(%ebp)
  101682: 8b 45 ec                     	movl	-20(%ebp), %eax
  101685: 66 a3 50 f5 10 00            	movw	%ax, 1111376
  10168b: a1 8c 00 11 00               	movl	1114252, %eax
  101690: 85 c0                        	testl	%eax, %eax
  101692: 74 39                        	je	57 <pic_setmask+0x58>
  101694: 8b 45 ec                     	movl	-20(%ebp), %eax
  101697: 0f b6 c0                     	movzbl	%al, %eax
  10169a: 66 c7 45 fa 21 00            	movw	$33, -6(%ebp)
  1016a0: 88 45 f9                     	movb	%al, -7(%ebp)
  1016a3: 0f b6 45 f9                  	movzbl	-7(%ebp), %eax
  1016a7: 0f b7 55 fa                  	movzwl	-6(%ebp), %edx
  1016ab: ee                           	outb	%al, %dx
  1016ac: 90                           	nop
  1016ad: 0f b7 45 ec                  	movzwl	-20(%ebp), %eax
  1016b1: c1 e8 08                     	shrl	$8, %eax
  1016b4: 0f b7 c0                     	movzwl	%ax, %eax
  1016b7: 0f b6 c0                     	movzbl	%al, %eax
  1016ba: 66 c7 45 fe a1 00            	movw	$161, -2(%ebp)
  1016c0: 88 45 fd                     	movb	%al, -3(%ebp)
  1016c3: 0f b6 45 fd                  	movzbl	-3(%ebp), %eax
  1016c7: 0f b7 55 fe                  	movzwl	-2(%ebp), %edx
  1016cb: ee                           	outb	%al, %dx
  1016cc: 90                           	nop
  1016cd: 90                           	nop
  1016ce: 89 ec                        	movl	%ebp, %esp
  1016d0: 5d                           	popl	%ebp
  1016d1: c3                           	retl

001016d2 pic_enable:
  1016d2: 55                           	pushl	%ebp
  1016d3: 89 e5                        	movl	%esp, %ebp
  1016d5: 83 ec 04                     	subl	$4, %esp
  1016d8: 8b 45 08                     	movl	8(%ebp), %eax
  1016db: ba 01 00 00 00               	movl	$1, %edx
  1016e0: 88 c1                        	movb	%al, %cl
  1016e2: d3 e2                        	shll	%cl, %edx
  1016e4: 89 d0                        	movl	%edx, %eax
  1016e6: 98                           	cwtl
  1016e7: f7 d0                        	notl	%eax
  1016e9: 0f bf d0                     	movswl	%ax, %edx
  1016ec: 0f b7 05 50 f5 10 00         	movzwl	1111376, %eax
  1016f3: 98                           	cwtl
  1016f4: 21 d0                        	andl	%edx, %eax
  1016f6: 98                           	cwtl
  1016f7: 0f b7 c0                     	movzwl	%ax, %eax
  1016fa: 89 04 24                     	movl	%eax, (%esp)
  1016fd: e8 73 ff ff ff               	calll	-141 <pic_setmask>
  101702: 90                           	nop
  101703: 89 ec                        	movl	%ebp, %esp
  101705: 5d                           	popl	%ebp
  101706: c3                           	retl

00101707 pic_init:
  101707: 55                           	pushl	%ebp
  101708: 89 e5                        	movl	%esp, %ebp
  10170a: 83 ec 44                     	subl	$68, %esp
  10170d: c7 05 8c 00 11 00 01 00 00 00	movl	$1, 1114252
  101717: 66 c7 45 ca 21 00            	movw	$33, -54(%ebp)
  10171d: c6 45 c9 ff                  	movb	$-1, -55(%ebp)
  101721: 0f b6 45 c9                  	movzbl	-55(%ebp), %eax
  101725: 0f b7 55 ca                  	movzwl	-54(%ebp), %edx
  101729: ee                           	outb	%al, %dx
  10172a: 90                           	nop
  10172b: 66 c7 45 ce a1 00            	movw	$161, -50(%ebp)
  101731: c6 45 cd ff                  	movb	$-1, -51(%ebp)
  101735: 0f b6 45 cd                  	movzbl	-51(%ebp), %eax
  101739: 0f b7 55 ce                  	movzwl	-50(%ebp), %edx
  10173d: ee                           	outb	%al, %dx
  10173e: 90                           	nop
  10173f: 66 c7 45 d2 20 00            	movw	$32, -46(%ebp)
  101745: c6 45 d1 11                  	movb	$17, -47(%ebp)
  101749: 0f b6 45 d1                  	movzbl	-47(%ebp), %eax
  10174d: 0f b7 55 d2                  	movzwl	-46(%ebp), %edx
  101751: ee                           	outb	%al, %dx
  101752: 90                           	nop
  101753: 66 c7 45 d6 21 00            	movw	$33, -42(%ebp)
  101759: c6 45 d5 20                  	movb	$32, -43(%ebp)
  10175d: 0f b6 45 d5                  	movzbl	-43(%ebp), %eax
  101761: 0f b7 55 d6                  	movzwl	-42(%ebp), %edx
  101765: ee                           	outb	%al, %dx
  101766: 90                           	nop
  101767: 66 c7 45 da 21 00            	movw	$33, -38(%ebp)
  10176d: c6 45 d9 04                  	movb	$4, -39(%ebp)
  101771: 0f b6 45 d9                  	movzbl	-39(%ebp), %eax
  101775: 0f b7 55 da                  	movzwl	-38(%ebp), %edx
  101779: ee                           	outb	%al, %dx
  10177a: 90                           	nop
  10177b: 66 c7 45 de 21 00            	movw	$33, -34(%ebp)
  101781: c6 45 dd 03                  	movb	$3, -35(%ebp)
  101785: 0f b6 45 dd                  	movzbl	-35(%ebp), %eax
  101789: 0f b7 55 de                  	movzwl	-34(%ebp), %edx
  10178d: ee                           	outb	%al, %dx
  10178e: 90                           	nop
  10178f: 66 c7 45 e2 a0 00            	movw	$160, -30(%ebp)
  101795: c6 45 e1 11                  	movb	$17, -31(%ebp)
  101799: 0f b6 45 e1                  	movzbl	-31(%ebp), %eax
  10179d: 0f b7 55 e2                  	movzwl	-30(%ebp), %edx
  1017a1: ee                           	outb	%al, %dx
  1017a2: 90                           	nop
  1017a3: 66 c7 45 e6 a1 00            	movw	$161, -26(%ebp)
  1017a9: c6 45 e5 28                  	movb	$40, -27(%ebp)
  1017ad: 0f b6 45 e5                  	movzbl	-27(%ebp), %eax
  1017b1: 0f b7 55 e6                  	movzwl	-26(%ebp), %edx
  1017b5: ee                           	outb	%al, %dx
  1017b6: 90                           	nop
  1017b7: 66 c7 45 ea a1 00            	movw	$161, -22(%ebp)
  1017bd: c6 45 e9 02                  	movb	$2, -23(%ebp)
  1017c1: 0f b6 45 e9                  	movzbl	-23(%ebp), %eax
  1017c5: 0f b7 55 ea                  	movzwl	-22(%ebp), %edx
  1017c9: ee                           	outb	%al, %dx
  1017ca: 90                           	nop
  1017cb: 66 c7 45 ee a1 00            	movw	$161, -18(%ebp)
  1017d1: c6 45 ed 03                  	movb	$3, -19(%ebp)
  1017d5: 0f b6 45 ed                  	movzbl	-19(%ebp), %eax
  1017d9: 0f b7 55 ee                  	movzwl	-18(%ebp), %edx
  1017dd: ee                           	outb	%al, %dx
  1017de: 90                           	nop
  1017df: 66 c7 45 f2 20 00            	movw	$32, -14(%ebp)
  1017e5: c6 45 f1 68                  	movb	$104, -15(%ebp)
  1017e9: 0f b6 45 f1                  	movzbl	-15(%ebp), %eax
  1017ed: 0f b7 55 f2                  	movzwl	-14(%ebp), %edx
  1017f1: ee                           	outb	%al, %dx
  1017f2: 90                           	nop
  1017f3: 66 c7 45 f6 20 00            	movw	$32, -10(%ebp)
  1017f9: c6 45 f5 0a                  	movb	$10, -11(%ebp)
  1017fd: 0f b6 45 f5                  	movzbl	-11(%ebp), %eax
  101801: 0f b7 55 f6                  	movzwl	-10(%ebp), %edx
  101805: ee                           	outb	%al, %dx
  101806: 90                           	nop
  101807: 66 c7 45 fa a0 00            	movw	$160, -6(%ebp)
  10180d: c6 45 f9 68                  	movb	$104, -7(%ebp)
  101811: 0f b6 45 f9                  	movzbl	-7(%ebp), %eax
  101815: 0f b7 55 fa                  	movzwl	-6(%ebp), %edx
  101819: ee                           	outb	%al, %dx
  10181a: 90                           	nop
  10181b: 66 c7 45 fe a0 00            	movw	$160, -2(%ebp)
  101821: c6 45 fd 0a                  	movb	$10, -3(%ebp)
  101825: 0f b6 45 fd                  	movzbl	-3(%ebp), %eax
  101829: 0f b7 55 fe                  	movzwl	-2(%ebp), %edx
  10182d: ee                           	outb	%al, %dx
  10182e: 90                           	nop
  10182f: 0f b7 05 50 f5 10 00         	movzwl	1111376, %eax
  101836: 3d ff ff 00 00               	cmpl	$65535, %eax
  10183b: 74 0f                        	je	15 <pic_init+0x145>
  10183d: 0f b7 05 50 f5 10 00         	movzwl	1111376, %eax
  101844: 89 04 24                     	movl	%eax, (%esp)
  101847: e8 29 fe ff ff               	calll	-471 <pic_setmask>
  10184c: 90                           	nop
  10184d: 89 ec                        	movl	%ebp, %esp
  10184f: 5d                           	popl	%ebp
  101850: c3                           	retl

00101851 print_ticks:
  101851: 55                           	pushl	%ebp
  101852: 89 e5                        	movl	%esp, %ebp
  101854: 83 ec 18                     	subl	$24, %esp
  101857: c7 44 24 04 64 00 00 00      	movl	$100, 4(%esp)
  10185f: c7 04 24 c0 36 10 00         	movl	$1062592, (%esp)
  101866: e8 b5 ea ff ff               	calll	-5451 <cprintf>
  10186b: 90                           	nop
  10186c: 89 ec                        	movl	%ebp, %esp
  10186e: 5d                           	popl	%ebp
  10186f: c3                           	retl

00101870 idt_init:
  101870: 55                           	pushl	%ebp
  101871: 89 e5                        	movl	%esp, %ebp
  101873: 90                           	nop
  101874: 5d                           	popl	%ebp
  101875: c3                           	retl

00101876 trapname:
  101876: 55                           	pushl	%ebp
  101877: 89 e5                        	movl	%esp, %ebp
  101879: 8b 45 08                     	movl	8(%ebp), %eax
  10187c: 83 f8 13                     	cmpl	$19, %eax
  10187f: 77 0c                        	ja	12 <trapname+0x17>
  101881: 8b 45 08                     	movl	8(%ebp), %eax
  101884: 8b 04 85 20 3a 10 00         	movl	1063456(,%eax,4), %eax
  10188b: eb 18                        	jmp	24 <trapname+0x2f>
  10188d: 83 7d 08 1f                  	cmpl	$31, 8(%ebp)
  101891: 7e 0d                        	jle	13 <trapname+0x2a>
  101893: 83 7d 08 2f                  	cmpl	$47, 8(%ebp)
  101897: 7f 07                        	jg	7 <trapname+0x2a>
  101899: b8 ca 36 10 00               	movl	$1062602, %eax
  10189e: eb 05                        	jmp	5 <trapname+0x2f>
  1018a0: b8 dd 36 10 00               	movl	$1062621, %eax
  1018a5: 5d                           	popl	%ebp
  1018a6: c3                           	retl

001018a7 trap_in_kernel:
  1018a7: 55                           	pushl	%ebp
  1018a8: 89 e5                        	movl	%esp, %ebp
  1018aa: 8b 45 08                     	movl	8(%ebp), %eax
  1018ad: 0f b7 40 3c                  	movzwl	60(%eax), %eax
  1018b1: 83 f8 08                     	cmpl	$8, %eax
  1018b4: 0f 94 c0                     	sete	%al
  1018b7: 0f b6 c0                     	movzbl	%al, %eax
  1018ba: 5d                           	popl	%ebp
  1018bb: c3                           	retl

001018bc print_trapframe:
  1018bc: 55                           	pushl	%ebp
  1018bd: 89 e5                        	movl	%esp, %ebp
  1018bf: 83 ec 28                     	subl	$40, %esp
  1018c2: 8b 45 08                     	movl	8(%ebp), %eax
  1018c5: 89 44 24 04                  	movl	%eax, 4(%esp)
  1018c9: c7 04 24 1e 37 10 00         	movl	$1062686, (%esp)
  1018d0: e8 4b ea ff ff               	calll	-5557 <cprintf>
  1018d5: 8b 45 08                     	movl	8(%ebp), %eax
  1018d8: 89 04 24                     	movl	%eax, (%esp)
  1018db: e8 8f 01 00 00               	calll	399 <print_regs>
  1018e0: 8b 45 08                     	movl	8(%ebp), %eax
  1018e3: 0f b7 40 2c                  	movzwl	44(%eax), %eax
  1018e7: 89 44 24 04                  	movl	%eax, 4(%esp)
  1018eb: c7 04 24 2f 37 10 00         	movl	$1062703, (%esp)
  1018f2: e8 29 ea ff ff               	calll	-5591 <cprintf>
  1018f7: 8b 45 08                     	movl	8(%ebp), %eax
  1018fa: 0f b7 40 28                  	movzwl	40(%eax), %eax
  1018fe: 89 44 24 04                  	movl	%eax, 4(%esp)
  101902: c7 04 24 42 37 10 00         	movl	$1062722, (%esp)
  101909: e8 12 ea ff ff               	calll	-5614 <cprintf>
  10190e: 8b 45 08                     	movl	8(%ebp), %eax
  101911: 0f b7 40 24                  	movzwl	36(%eax), %eax
  101915: 89 44 24 04                  	movl	%eax, 4(%esp)
  101919: c7 04 24 55 37 10 00         	movl	$1062741, (%esp)
  101920: e8 fb e9 ff ff               	calll	-5637 <cprintf>
  101925: 8b 45 08                     	movl	8(%ebp), %eax
  101928: 0f b7 40 20                  	movzwl	32(%eax), %eax
  10192c: 89 44 24 04                  	movl	%eax, 4(%esp)
  101930: c7 04 24 68 37 10 00         	movl	$1062760, (%esp)
  101937: e8 e4 e9 ff ff               	calll	-5660 <cprintf>
  10193c: 8b 45 08                     	movl	8(%ebp), %eax
  10193f: 8b 40 30                     	movl	48(%eax), %eax
  101942: 89 04 24                     	movl	%eax, (%esp)
  101945: e8 2c ff ff ff               	calll	-212 <trapname>
  10194a: 8b 55 08                     	movl	8(%ebp), %edx
  10194d: 8b 52 30                     	movl	48(%edx), %edx
  101950: 89 44 24 08                  	movl	%eax, 8(%esp)
  101954: 89 54 24 04                  	movl	%edx, 4(%esp)
  101958: c7 04 24 7b 37 10 00         	movl	$1062779, (%esp)
  10195f: e8 bc e9 ff ff               	calll	-5700 <cprintf>
  101964: 8b 45 08                     	movl	8(%ebp), %eax
  101967: 8b 40 34                     	movl	52(%eax), %eax
  10196a: 89 44 24 04                  	movl	%eax, 4(%esp)
  10196e: c7 04 24 8d 37 10 00         	movl	$1062797, (%esp)
  101975: e8 a6 e9 ff ff               	calll	-5722 <cprintf>
  10197a: 8b 45 08                     	movl	8(%ebp), %eax
  10197d: 8b 40 38                     	movl	56(%eax), %eax
  101980: 89 44 24 04                  	movl	%eax, 4(%esp)
  101984: c7 04 24 9c 37 10 00         	movl	$1062812, (%esp)
  10198b: e8 90 e9 ff ff               	calll	-5744 <cprintf>
  101990: 8b 45 08                     	movl	8(%ebp), %eax
  101993: 0f b7 40 3c                  	movzwl	60(%eax), %eax
  101997: 89 44 24 04                  	movl	%eax, 4(%esp)
  10199b: c7 04 24 ab 37 10 00         	movl	$1062827, (%esp)
  1019a2: e8 79 e9 ff ff               	calll	-5767 <cprintf>
  1019a7: 8b 45 08                     	movl	8(%ebp), %eax
  1019aa: 8b 40 40                     	movl	64(%eax), %eax
  1019ad: 89 44 24 04                  	movl	%eax, 4(%esp)
  1019b1: c7 04 24 be 37 10 00         	movl	$1062846, (%esp)
  1019b8: e8 63 e9 ff ff               	calll	-5789 <cprintf>
  1019bd: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  1019c4: c7 45 f0 01 00 00 00         	movl	$1, -16(%ebp)
  1019cb: eb 3d                        	jmp	61 <print_trapframe+0x14e>
  1019cd: 8b 45 08                     	movl	8(%ebp), %eax
  1019d0: 8b 50 40                     	movl	64(%eax), %edx
  1019d3: 8b 45 f0                     	movl	-16(%ebp), %eax
  1019d6: 21 d0                        	andl	%edx, %eax
  1019d8: 85 c0                        	testl	%eax, %eax
  1019da: 74 28                        	je	40 <print_trapframe+0x148>
  1019dc: 8b 45 f4                     	movl	-12(%ebp), %eax
  1019df: 8b 04 85 80 f5 10 00         	movl	1111424(,%eax,4), %eax
  1019e6: 85 c0                        	testl	%eax, %eax
  1019e8: 74 1a                        	je	26 <print_trapframe+0x148>
  1019ea: 8b 45 f4                     	movl	-12(%ebp), %eax
  1019ed: 8b 04 85 80 f5 10 00         	movl	1111424(,%eax,4), %eax
  1019f4: 89 44 24 04                  	movl	%eax, 4(%esp)
  1019f8: c7 04 24 cd 37 10 00         	movl	$1062861, (%esp)
  1019ff: e8 1c e9 ff ff               	calll	-5860 <cprintf>
  101a04: ff 45 f4                     	incl	-12(%ebp)
  101a07: d1 65 f0                     	shll	-16(%ebp)
  101a0a: 8b 45 f4                     	movl	-12(%ebp), %eax
  101a0d: 83 f8 17                     	cmpl	$23, %eax
  101a10: 76 bb                        	jbe	-69 <print_trapframe+0x111>
  101a12: 8b 45 08                     	movl	8(%ebp), %eax
  101a15: 8b 40 40                     	movl	64(%eax), %eax
  101a18: c1 e8 0c                     	shrl	$12, %eax
  101a1b: 83 e0 03                     	andl	$3, %eax
  101a1e: 89 44 24 04                  	movl	%eax, 4(%esp)
  101a22: c7 04 24 d1 37 10 00         	movl	$1062865, (%esp)
  101a29: e8 f2 e8 ff ff               	calll	-5902 <cprintf>
  101a2e: 8b 45 08                     	movl	8(%ebp), %eax
  101a31: 89 04 24                     	movl	%eax, (%esp)
  101a34: e8 6e fe ff ff               	calll	-402 <trap_in_kernel>
  101a39: 85 c0                        	testl	%eax, %eax
  101a3b: 75 2d                        	jne	45 <print_trapframe+0x1ae>
  101a3d: 8b 45 08                     	movl	8(%ebp), %eax
  101a40: 8b 40 44                     	movl	68(%eax), %eax
  101a43: 89 44 24 04                  	movl	%eax, 4(%esp)
  101a47: c7 04 24 da 37 10 00         	movl	$1062874, (%esp)
  101a4e: e8 cd e8 ff ff               	calll	-5939 <cprintf>
  101a53: 8b 45 08                     	movl	8(%ebp), %eax
  101a56: 0f b7 40 48                  	movzwl	72(%eax), %eax
  101a5a: 89 44 24 04                  	movl	%eax, 4(%esp)
  101a5e: c7 04 24 e9 37 10 00         	movl	$1062889, (%esp)
  101a65: e8 b6 e8 ff ff               	calll	-5962 <cprintf>
  101a6a: 90                           	nop
  101a6b: 89 ec                        	movl	%ebp, %esp
  101a6d: 5d                           	popl	%ebp
  101a6e: c3                           	retl

00101a6f print_regs:
  101a6f: 55                           	pushl	%ebp
  101a70: 89 e5                        	movl	%esp, %ebp
  101a72: 83 ec 18                     	subl	$24, %esp
  101a75: 8b 45 08                     	movl	8(%ebp), %eax
  101a78: 8b 00                        	movl	(%eax), %eax
  101a7a: 89 44 24 04                  	movl	%eax, 4(%esp)
  101a7e: c7 04 24 fc 37 10 00         	movl	$1062908, (%esp)
  101a85: e8 96 e8 ff ff               	calll	-5994 <cprintf>
  101a8a: 8b 45 08                     	movl	8(%ebp), %eax
  101a8d: 8b 40 04                     	movl	4(%eax), %eax
  101a90: 89 44 24 04                  	movl	%eax, 4(%esp)
  101a94: c7 04 24 0b 38 10 00         	movl	$1062923, (%esp)
  101a9b: e8 80 e8 ff ff               	calll	-6016 <cprintf>
  101aa0: 8b 45 08                     	movl	8(%ebp), %eax
  101aa3: 8b 40 08                     	movl	8(%eax), %eax
  101aa6: 89 44 24 04                  	movl	%eax, 4(%esp)
  101aaa: c7 04 24 1a 38 10 00         	movl	$1062938, (%esp)
  101ab1: e8 6a e8 ff ff               	calll	-6038 <cprintf>
  101ab6: 8b 45 08                     	movl	8(%ebp), %eax
  101ab9: 8b 40 0c                     	movl	12(%eax), %eax
  101abc: 89 44 24 04                  	movl	%eax, 4(%esp)
  101ac0: c7 04 24 29 38 10 00         	movl	$1062953, (%esp)
  101ac7: e8 54 e8 ff ff               	calll	-6060 <cprintf>
  101acc: 8b 45 08                     	movl	8(%ebp), %eax
  101acf: 8b 40 10                     	movl	16(%eax), %eax
  101ad2: 89 44 24 04                  	movl	%eax, 4(%esp)
  101ad6: c7 04 24 38 38 10 00         	movl	$1062968, (%esp)
  101add: e8 3e e8 ff ff               	calll	-6082 <cprintf>
  101ae2: 8b 45 08                     	movl	8(%ebp), %eax
  101ae5: 8b 40 14                     	movl	20(%eax), %eax
  101ae8: 89 44 24 04                  	movl	%eax, 4(%esp)
  101aec: c7 04 24 47 38 10 00         	movl	$1062983, (%esp)
  101af3: e8 28 e8 ff ff               	calll	-6104 <cprintf>
  101af8: 8b 45 08                     	movl	8(%ebp), %eax
  101afb: 8b 40 18                     	movl	24(%eax), %eax
  101afe: 89 44 24 04                  	movl	%eax, 4(%esp)
  101b02: c7 04 24 56 38 10 00         	movl	$1062998, (%esp)
  101b09: e8 12 e8 ff ff               	calll	-6126 <cprintf>
  101b0e: 8b 45 08                     	movl	8(%ebp), %eax
  101b11: 8b 40 1c                     	movl	28(%eax), %eax
  101b14: 89 44 24 04                  	movl	%eax, 4(%esp)
  101b18: c7 04 24 65 38 10 00         	movl	$1063013, (%esp)
  101b1f: e8 fc e7 ff ff               	calll	-6148 <cprintf>
  101b24: 90                           	nop
  101b25: 89 ec                        	movl	%ebp, %esp
  101b27: 5d                           	popl	%ebp
  101b28: c3                           	retl

00101b29 trap_dispatch:
  101b29: 55                           	pushl	%ebp
  101b2a: 89 e5                        	movl	%esp, %ebp
  101b2c: 83 ec 28                     	subl	$40, %esp
  101b2f: 8b 45 08                     	movl	8(%ebp), %eax
  101b32: 8b 40 30                     	movl	48(%eax), %eax
  101b35: 83 f8 79                     	cmpl	$121, %eax
  101b38: 0f 87 99 00 00 00            	ja	153 <trap_dispatch+0xae>
  101b3e: 83 f8 78                     	cmpl	$120, %eax
  101b41: 73 78                        	jae	120 <trap_dispatch+0x92>
  101b43: 83 f8 2f                     	cmpl	$47, %eax
  101b46: 0f 87 8b 00 00 00            	ja	139 <trap_dispatch+0xae>
  101b4c: 83 f8 2e                     	cmpl	$46, %eax
  101b4f: 0f 83 b7 00 00 00            	jae	183 <trap_dispatch+0xe3>
  101b55: 83 f8 24                     	cmpl	$36, %eax
  101b58: 74 15                        	je	21 <trap_dispatch+0x46>
  101b5a: 83 f8 24                     	cmpl	$36, %eax
  101b5d: 77 78                        	ja	120 <trap_dispatch+0xae>
  101b5f: 83 f8 20                     	cmpl	$32, %eax
  101b62: 0f 84 a7 00 00 00            	je	167 <trap_dispatch+0xe6>
  101b68: 83 f8 21                     	cmpl	$33, %eax
  101b6b: 74 28                        	je	40 <trap_dispatch+0x6c>
  101b6d: eb 68                        	jmp	104 <trap_dispatch+0xae>
  101b6f: e8 93 fa ff ff               	calll	-1389 <cons_getc>
  101b74: 88 45 f7                     	movb	%al, -9(%ebp)
  101b77: 0f be 55 f7                  	movsbl	-9(%ebp), %edx
  101b7b: 0f be 45 f7                  	movsbl	-9(%ebp), %eax
  101b7f: 89 54 24 08                  	movl	%edx, 8(%esp)
  101b83: 89 44 24 04                  	movl	%eax, 4(%esp)
  101b87: c7 04 24 74 38 10 00         	movl	$1063028, (%esp)
  101b8e: e8 8d e7 ff ff               	calll	-6259 <cprintf>
  101b93: eb 7b                        	jmp	123 <trap_dispatch+0xe7>
  101b95: e8 6d fa ff ff               	calll	-1427 <cons_getc>
  101b9a: 88 45 f7                     	movb	%al, -9(%ebp)
  101b9d: 0f be 55 f7                  	movsbl	-9(%ebp), %edx
  101ba1: 0f be 45 f7                  	movsbl	-9(%ebp), %eax
  101ba5: 89 54 24 08                  	movl	%edx, 8(%esp)
  101ba9: 89 44 24 04                  	movl	%eax, 4(%esp)
  101bad: c7 04 24 86 38 10 00         	movl	$1063046, (%esp)
  101bb4: e8 67 e7 ff ff               	calll	-6297 <cprintf>
  101bb9: eb 55                        	jmp	85 <trap_dispatch+0xe7>
  101bbb: c7 44 24 08 95 38 10 00      	movl	$1063061, 8(%esp)
  101bc3: c7 44 24 04 a2 00 00 00      	movl	$162, 4(%esp)
  101bcb: c7 04 24 a5 38 10 00         	movl	$1063077, (%esp)
  101bd2: e8 a5 f0 ff ff               	calll	-3931 <__panic>
  101bd7: 8b 45 08                     	movl	8(%ebp), %eax
  101bda: 0f b7 40 3c                  	movzwl	60(%eax), %eax
  101bde: 83 e0 03                     	andl	$3, %eax
  101be1: 85 c0                        	testl	%eax, %eax
  101be3: 75 2b                        	jne	43 <trap_dispatch+0xe7>
  101be5: 8b 45 08                     	movl	8(%ebp), %eax
  101be8: 89 04 24                     	movl	%eax, (%esp)
  101beb: e8 cc fc ff ff               	calll	-820 <print_trapframe>
  101bf0: c7 44 24 08 b6 38 10 00      	movl	$1063094, 8(%esp)
  101bf8: c7 44 24 04 ac 00 00 00      	movl	$172, 4(%esp)
  101c00: c7 04 24 a5 38 10 00         	movl	$1063077, (%esp)
  101c07: e8 70 f0 ff ff               	calll	-3984 <__panic>
  101c0c: 90                           	nop
  101c0d: eb 01                        	jmp	1 <trap_dispatch+0xe7>
  101c0f: 90                           	nop
  101c10: 90                           	nop
  101c11: 89 ec                        	movl	%ebp, %esp
  101c13: 5d                           	popl	%ebp
  101c14: c3                           	retl

00101c15 trap:
  101c15: 55                           	pushl	%ebp
  101c16: 89 e5                        	movl	%esp, %ebp
  101c18: 83 ec 18                     	subl	$24, %esp
  101c1b: 8b 45 08                     	movl	8(%ebp), %eax
  101c1e: 89 04 24                     	movl	%eax, (%esp)
  101c21: e8 03 ff ff ff               	calll	-253 <trap_dispatch>
  101c26: 90                           	nop
  101c27: 89 ec                        	movl	%ebp, %esp
  101c29: 5d                           	popl	%ebp
  101c2a: c3                           	retl

00101c2b __alltraps:
  101c2b: 1e                           	pushl	%ds
  101c2c: 06                           	pushl	%es
  101c2d: 0f a0                        	pushl	%fs
  101c2f: 0f a8                        	pushl	%gs
  101c31: 60                           	pushal
  101c32: b8 10 00 00 00               	movl	$16, %eax
  101c37: 8e d8                        	movl	%eax, %ds
  101c39: 8e c0                        	movl	%eax, %es
  101c3b: 54                           	pushl	%esp
  101c3c: e8 d4 ff ff ff               	calll	-44 <trap>
  101c41: 5c                           	popl	%esp

00101c42 __trapret:
  101c42: 61                           	popal
  101c43: 0f a9                        	popl	%gs
  101c45: 0f a1                        	popl	%fs
  101c47: 07                           	popl	%es
  101c48: 1f                           	popl	%ds
  101c49: 83 c4 08                     	addl	$8, %esp
  101c4c: cf                           	iretl

00101c4d vector0:
  101c4d: 6a 00                        	pushl	$0
  101c4f: 6a 00                        	pushl	$0
  101c51: e9 d5 ff ff ff               	jmp	-43 <__alltraps>

00101c56 vector1:
  101c56: 6a 00                        	pushl	$0
  101c58: 6a 01                        	pushl	$1
  101c5a: e9 cc ff ff ff               	jmp	-52 <__alltraps>

00101c5f vector2:
  101c5f: 6a 00                        	pushl	$0
  101c61: 6a 02                        	pushl	$2
  101c63: e9 c3 ff ff ff               	jmp	-61 <__alltraps>

00101c68 vector3:
  101c68: 6a 00                        	pushl	$0
  101c6a: 6a 03                        	pushl	$3
  101c6c: e9 ba ff ff ff               	jmp	-70 <__alltraps>

00101c71 vector4:
  101c71: 6a 00                        	pushl	$0
  101c73: 6a 04                        	pushl	$4
  101c75: e9 b1 ff ff ff               	jmp	-79 <__alltraps>

00101c7a vector5:
  101c7a: 6a 00                        	pushl	$0
  101c7c: 6a 05                        	pushl	$5
  101c7e: e9 a8 ff ff ff               	jmp	-88 <__alltraps>

00101c83 vector6:
  101c83: 6a 00                        	pushl	$0
  101c85: 6a 06                        	pushl	$6
  101c87: e9 9f ff ff ff               	jmp	-97 <__alltraps>

00101c8c vector7:
  101c8c: 6a 00                        	pushl	$0
  101c8e: 6a 07                        	pushl	$7
  101c90: e9 96 ff ff ff               	jmp	-106 <__alltraps>

00101c95 vector8:
  101c95: 6a 08                        	pushl	$8
  101c97: e9 8f ff ff ff               	jmp	-113 <__alltraps>

00101c9c vector9:
  101c9c: 6a 00                        	pushl	$0
  101c9e: 6a 09                        	pushl	$9
  101ca0: e9 86 ff ff ff               	jmp	-122 <__alltraps>

00101ca5 vector10:
  101ca5: 6a 0a                        	pushl	$10
  101ca7: e9 7f ff ff ff               	jmp	-129 <__alltraps>

00101cac vector11:
  101cac: 6a 0b                        	pushl	$11
  101cae: e9 78 ff ff ff               	jmp	-136 <__alltraps>

00101cb3 vector12:
  101cb3: 6a 0c                        	pushl	$12
  101cb5: e9 71 ff ff ff               	jmp	-143 <__alltraps>

00101cba vector13:
  101cba: 6a 0d                        	pushl	$13
  101cbc: e9 6a ff ff ff               	jmp	-150 <__alltraps>

00101cc1 vector14:
  101cc1: 6a 0e                        	pushl	$14
  101cc3: e9 63 ff ff ff               	jmp	-157 <__alltraps>

00101cc8 vector15:
  101cc8: 6a 00                        	pushl	$0
  101cca: 6a 0f                        	pushl	$15
  101ccc: e9 5a ff ff ff               	jmp	-166 <__alltraps>

00101cd1 vector16:
  101cd1: 6a 00                        	pushl	$0
  101cd3: 6a 10                        	pushl	$16
  101cd5: e9 51 ff ff ff               	jmp	-175 <__alltraps>

00101cda vector17:
  101cda: 6a 11                        	pushl	$17
  101cdc: e9 4a ff ff ff               	jmp	-182 <__alltraps>

00101ce1 vector18:
  101ce1: 6a 00                        	pushl	$0
  101ce3: 6a 12                        	pushl	$18
  101ce5: e9 41 ff ff ff               	jmp	-191 <__alltraps>

00101cea vector19:
  101cea: 6a 00                        	pushl	$0
  101cec: 6a 13                        	pushl	$19
  101cee: e9 38 ff ff ff               	jmp	-200 <__alltraps>

00101cf3 vector20:
  101cf3: 6a 00                        	pushl	$0
  101cf5: 6a 14                        	pushl	$20
  101cf7: e9 2f ff ff ff               	jmp	-209 <__alltraps>

00101cfc vector21:
  101cfc: 6a 00                        	pushl	$0
  101cfe: 6a 15                        	pushl	$21
  101d00: e9 26 ff ff ff               	jmp	-218 <__alltraps>

00101d05 vector22:
  101d05: 6a 00                        	pushl	$0
  101d07: 6a 16                        	pushl	$22
  101d09: e9 1d ff ff ff               	jmp	-227 <__alltraps>

00101d0e vector23:
  101d0e: 6a 00                        	pushl	$0
  101d10: 6a 17                        	pushl	$23
  101d12: e9 14 ff ff ff               	jmp	-236 <__alltraps>

00101d17 vector24:
  101d17: 6a 00                        	pushl	$0
  101d19: 6a 18                        	pushl	$24
  101d1b: e9 0b ff ff ff               	jmp	-245 <__alltraps>

00101d20 vector25:
  101d20: 6a 00                        	pushl	$0
  101d22: 6a 19                        	pushl	$25
  101d24: e9 02 ff ff ff               	jmp	-254 <__alltraps>

00101d29 vector26:
  101d29: 6a 00                        	pushl	$0
  101d2b: 6a 1a                        	pushl	$26
  101d2d: e9 f9 fe ff ff               	jmp	-263 <__alltraps>

00101d32 vector27:
  101d32: 6a 00                        	pushl	$0
  101d34: 6a 1b                        	pushl	$27
  101d36: e9 f0 fe ff ff               	jmp	-272 <__alltraps>

00101d3b vector28:
  101d3b: 6a 00                        	pushl	$0
  101d3d: 6a 1c                        	pushl	$28
  101d3f: e9 e7 fe ff ff               	jmp	-281 <__alltraps>

00101d44 vector29:
  101d44: 6a 00                        	pushl	$0
  101d46: 6a 1d                        	pushl	$29
  101d48: e9 de fe ff ff               	jmp	-290 <__alltraps>

00101d4d vector30:
  101d4d: 6a 00                        	pushl	$0
  101d4f: 6a 1e                        	pushl	$30
  101d51: e9 d5 fe ff ff               	jmp	-299 <__alltraps>

00101d56 vector31:
  101d56: 6a 00                        	pushl	$0
  101d58: 6a 1f                        	pushl	$31
  101d5a: e9 cc fe ff ff               	jmp	-308 <__alltraps>

00101d5f vector32:
  101d5f: 6a 00                        	pushl	$0
  101d61: 6a 20                        	pushl	$32
  101d63: e9 c3 fe ff ff               	jmp	-317 <__alltraps>

00101d68 vector33:
  101d68: 6a 00                        	pushl	$0
  101d6a: 6a 21                        	pushl	$33
  101d6c: e9 ba fe ff ff               	jmp	-326 <__alltraps>

00101d71 vector34:
  101d71: 6a 00                        	pushl	$0
  101d73: 6a 22                        	pushl	$34
  101d75: e9 b1 fe ff ff               	jmp	-335 <__alltraps>

00101d7a vector35:
  101d7a: 6a 00                        	pushl	$0
  101d7c: 6a 23                        	pushl	$35
  101d7e: e9 a8 fe ff ff               	jmp	-344 <__alltraps>

00101d83 vector36:
  101d83: 6a 00                        	pushl	$0
  101d85: 6a 24                        	pushl	$36
  101d87: e9 9f fe ff ff               	jmp	-353 <__alltraps>

00101d8c vector37:
  101d8c: 6a 00                        	pushl	$0
  101d8e: 6a 25                        	pushl	$37
  101d90: e9 96 fe ff ff               	jmp	-362 <__alltraps>

00101d95 vector38:
  101d95: 6a 00                        	pushl	$0
  101d97: 6a 26                        	pushl	$38
  101d99: e9 8d fe ff ff               	jmp	-371 <__alltraps>

00101d9e vector39:
  101d9e: 6a 00                        	pushl	$0
  101da0: 6a 27                        	pushl	$39
  101da2: e9 84 fe ff ff               	jmp	-380 <__alltraps>

00101da7 vector40:
  101da7: 6a 00                        	pushl	$0
  101da9: 6a 28                        	pushl	$40
  101dab: e9 7b fe ff ff               	jmp	-389 <__alltraps>

00101db0 vector41:
  101db0: 6a 00                        	pushl	$0
  101db2: 6a 29                        	pushl	$41
  101db4: e9 72 fe ff ff               	jmp	-398 <__alltraps>

00101db9 vector42:
  101db9: 6a 00                        	pushl	$0
  101dbb: 6a 2a                        	pushl	$42
  101dbd: e9 69 fe ff ff               	jmp	-407 <__alltraps>

00101dc2 vector43:
  101dc2: 6a 00                        	pushl	$0
  101dc4: 6a 2b                        	pushl	$43
  101dc6: e9 60 fe ff ff               	jmp	-416 <__alltraps>

00101dcb vector44:
  101dcb: 6a 00                        	pushl	$0
  101dcd: 6a 2c                        	pushl	$44
  101dcf: e9 57 fe ff ff               	jmp	-425 <__alltraps>

00101dd4 vector45:
  101dd4: 6a 00                        	pushl	$0
  101dd6: 6a 2d                        	pushl	$45
  101dd8: e9 4e fe ff ff               	jmp	-434 <__alltraps>

00101ddd vector46:
  101ddd: 6a 00                        	pushl	$0
  101ddf: 6a 2e                        	pushl	$46
  101de1: e9 45 fe ff ff               	jmp	-443 <__alltraps>

00101de6 vector47:
  101de6: 6a 00                        	pushl	$0
  101de8: 6a 2f                        	pushl	$47
  101dea: e9 3c fe ff ff               	jmp	-452 <__alltraps>

00101def vector48:
  101def: 6a 00                        	pushl	$0
  101df1: 6a 30                        	pushl	$48
  101df3: e9 33 fe ff ff               	jmp	-461 <__alltraps>

00101df8 vector49:
  101df8: 6a 00                        	pushl	$0
  101dfa: 6a 31                        	pushl	$49
  101dfc: e9 2a fe ff ff               	jmp	-470 <__alltraps>

00101e01 vector50:
  101e01: 6a 00                        	pushl	$0
  101e03: 6a 32                        	pushl	$50
  101e05: e9 21 fe ff ff               	jmp	-479 <__alltraps>

00101e0a vector51:
  101e0a: 6a 00                        	pushl	$0
  101e0c: 6a 33                        	pushl	$51
  101e0e: e9 18 fe ff ff               	jmp	-488 <__alltraps>

00101e13 vector52:
  101e13: 6a 00                        	pushl	$0
  101e15: 6a 34                        	pushl	$52
  101e17: e9 0f fe ff ff               	jmp	-497 <__alltraps>

00101e1c vector53:
  101e1c: 6a 00                        	pushl	$0
  101e1e: 6a 35                        	pushl	$53
  101e20: e9 06 fe ff ff               	jmp	-506 <__alltraps>

00101e25 vector54:
  101e25: 6a 00                        	pushl	$0
  101e27: 6a 36                        	pushl	$54
  101e29: e9 fd fd ff ff               	jmp	-515 <__alltraps>

00101e2e vector55:
  101e2e: 6a 00                        	pushl	$0
  101e30: 6a 37                        	pushl	$55
  101e32: e9 f4 fd ff ff               	jmp	-524 <__alltraps>

00101e37 vector56:
  101e37: 6a 00                        	pushl	$0
  101e39: 6a 38                        	pushl	$56
  101e3b: e9 eb fd ff ff               	jmp	-533 <__alltraps>

00101e40 vector57:
  101e40: 6a 00                        	pushl	$0
  101e42: 6a 39                        	pushl	$57
  101e44: e9 e2 fd ff ff               	jmp	-542 <__alltraps>

00101e49 vector58:
  101e49: 6a 00                        	pushl	$0
  101e4b: 6a 3a                        	pushl	$58
  101e4d: e9 d9 fd ff ff               	jmp	-551 <__alltraps>

00101e52 vector59:
  101e52: 6a 00                        	pushl	$0
  101e54: 6a 3b                        	pushl	$59
  101e56: e9 d0 fd ff ff               	jmp	-560 <__alltraps>

00101e5b vector60:
  101e5b: 6a 00                        	pushl	$0
  101e5d: 6a 3c                        	pushl	$60
  101e5f: e9 c7 fd ff ff               	jmp	-569 <__alltraps>

00101e64 vector61:
  101e64: 6a 00                        	pushl	$0
  101e66: 6a 3d                        	pushl	$61
  101e68: e9 be fd ff ff               	jmp	-578 <__alltraps>

00101e6d vector62:
  101e6d: 6a 00                        	pushl	$0
  101e6f: 6a 3e                        	pushl	$62
  101e71: e9 b5 fd ff ff               	jmp	-587 <__alltraps>

00101e76 vector63:
  101e76: 6a 00                        	pushl	$0
  101e78: 6a 3f                        	pushl	$63
  101e7a: e9 ac fd ff ff               	jmp	-596 <__alltraps>

00101e7f vector64:
  101e7f: 6a 00                        	pushl	$0
  101e81: 6a 40                        	pushl	$64
  101e83: e9 a3 fd ff ff               	jmp	-605 <__alltraps>

00101e88 vector65:
  101e88: 6a 00                        	pushl	$0
  101e8a: 6a 41                        	pushl	$65
  101e8c: e9 9a fd ff ff               	jmp	-614 <__alltraps>

00101e91 vector66:
  101e91: 6a 00                        	pushl	$0
  101e93: 6a 42                        	pushl	$66
  101e95: e9 91 fd ff ff               	jmp	-623 <__alltraps>

00101e9a vector67:
  101e9a: 6a 00                        	pushl	$0
  101e9c: 6a 43                        	pushl	$67
  101e9e: e9 88 fd ff ff               	jmp	-632 <__alltraps>

00101ea3 vector68:
  101ea3: 6a 00                        	pushl	$0
  101ea5: 6a 44                        	pushl	$68
  101ea7: e9 7f fd ff ff               	jmp	-641 <__alltraps>

00101eac vector69:
  101eac: 6a 00                        	pushl	$0
  101eae: 6a 45                        	pushl	$69
  101eb0: e9 76 fd ff ff               	jmp	-650 <__alltraps>

00101eb5 vector70:
  101eb5: 6a 00                        	pushl	$0
  101eb7: 6a 46                        	pushl	$70
  101eb9: e9 6d fd ff ff               	jmp	-659 <__alltraps>

00101ebe vector71:
  101ebe: 6a 00                        	pushl	$0
  101ec0: 6a 47                        	pushl	$71
  101ec2: e9 64 fd ff ff               	jmp	-668 <__alltraps>

00101ec7 vector72:
  101ec7: 6a 00                        	pushl	$0
  101ec9: 6a 48                        	pushl	$72
  101ecb: e9 5b fd ff ff               	jmp	-677 <__alltraps>

00101ed0 vector73:
  101ed0: 6a 00                        	pushl	$0
  101ed2: 6a 49                        	pushl	$73
  101ed4: e9 52 fd ff ff               	jmp	-686 <__alltraps>

00101ed9 vector74:
  101ed9: 6a 00                        	pushl	$0
  101edb: 6a 4a                        	pushl	$74
  101edd: e9 49 fd ff ff               	jmp	-695 <__alltraps>

00101ee2 vector75:
  101ee2: 6a 00                        	pushl	$0
  101ee4: 6a 4b                        	pushl	$75
  101ee6: e9 40 fd ff ff               	jmp	-704 <__alltraps>

00101eeb vector76:
  101eeb: 6a 00                        	pushl	$0
  101eed: 6a 4c                        	pushl	$76
  101eef: e9 37 fd ff ff               	jmp	-713 <__alltraps>

00101ef4 vector77:
  101ef4: 6a 00                        	pushl	$0
  101ef6: 6a 4d                        	pushl	$77
  101ef8: e9 2e fd ff ff               	jmp	-722 <__alltraps>

00101efd vector78:
  101efd: 6a 00                        	pushl	$0
  101eff: 6a 4e                        	pushl	$78
  101f01: e9 25 fd ff ff               	jmp	-731 <__alltraps>

00101f06 vector79:
  101f06: 6a 00                        	pushl	$0
  101f08: 6a 4f                        	pushl	$79
  101f0a: e9 1c fd ff ff               	jmp	-740 <__alltraps>

00101f0f vector80:
  101f0f: 6a 00                        	pushl	$0
  101f11: 6a 50                        	pushl	$80
  101f13: e9 13 fd ff ff               	jmp	-749 <__alltraps>

00101f18 vector81:
  101f18: 6a 00                        	pushl	$0
  101f1a: 6a 51                        	pushl	$81
  101f1c: e9 0a fd ff ff               	jmp	-758 <__alltraps>

00101f21 vector82:
  101f21: 6a 00                        	pushl	$0
  101f23: 6a 52                        	pushl	$82
  101f25: e9 01 fd ff ff               	jmp	-767 <__alltraps>

00101f2a vector83:
  101f2a: 6a 00                        	pushl	$0
  101f2c: 6a 53                        	pushl	$83
  101f2e: e9 f8 fc ff ff               	jmp	-776 <__alltraps>

00101f33 vector84:
  101f33: 6a 00                        	pushl	$0
  101f35: 6a 54                        	pushl	$84
  101f37: e9 ef fc ff ff               	jmp	-785 <__alltraps>

00101f3c vector85:
  101f3c: 6a 00                        	pushl	$0
  101f3e: 6a 55                        	pushl	$85
  101f40: e9 e6 fc ff ff               	jmp	-794 <__alltraps>

00101f45 vector86:
  101f45: 6a 00                        	pushl	$0
  101f47: 6a 56                        	pushl	$86
  101f49: e9 dd fc ff ff               	jmp	-803 <__alltraps>

00101f4e vector87:
  101f4e: 6a 00                        	pushl	$0
  101f50: 6a 57                        	pushl	$87
  101f52: e9 d4 fc ff ff               	jmp	-812 <__alltraps>

00101f57 vector88:
  101f57: 6a 00                        	pushl	$0
  101f59: 6a 58                        	pushl	$88
  101f5b: e9 cb fc ff ff               	jmp	-821 <__alltraps>

00101f60 vector89:
  101f60: 6a 00                        	pushl	$0
  101f62: 6a 59                        	pushl	$89
  101f64: e9 c2 fc ff ff               	jmp	-830 <__alltraps>

00101f69 vector90:
  101f69: 6a 00                        	pushl	$0
  101f6b: 6a 5a                        	pushl	$90
  101f6d: e9 b9 fc ff ff               	jmp	-839 <__alltraps>

00101f72 vector91:
  101f72: 6a 00                        	pushl	$0
  101f74: 6a 5b                        	pushl	$91
  101f76: e9 b0 fc ff ff               	jmp	-848 <__alltraps>

00101f7b vector92:
  101f7b: 6a 00                        	pushl	$0
  101f7d: 6a 5c                        	pushl	$92
  101f7f: e9 a7 fc ff ff               	jmp	-857 <__alltraps>

00101f84 vector93:
  101f84: 6a 00                        	pushl	$0
  101f86: 6a 5d                        	pushl	$93
  101f88: e9 9e fc ff ff               	jmp	-866 <__alltraps>

00101f8d vector94:
  101f8d: 6a 00                        	pushl	$0
  101f8f: 6a 5e                        	pushl	$94
  101f91: e9 95 fc ff ff               	jmp	-875 <__alltraps>

00101f96 vector95:
  101f96: 6a 00                        	pushl	$0
  101f98: 6a 5f                        	pushl	$95
  101f9a: e9 8c fc ff ff               	jmp	-884 <__alltraps>

00101f9f vector96:
  101f9f: 6a 00                        	pushl	$0
  101fa1: 6a 60                        	pushl	$96
  101fa3: e9 83 fc ff ff               	jmp	-893 <__alltraps>

00101fa8 vector97:
  101fa8: 6a 00                        	pushl	$0
  101faa: 6a 61                        	pushl	$97
  101fac: e9 7a fc ff ff               	jmp	-902 <__alltraps>

00101fb1 vector98:
  101fb1: 6a 00                        	pushl	$0
  101fb3: 6a 62                        	pushl	$98
  101fb5: e9 71 fc ff ff               	jmp	-911 <__alltraps>

00101fba vector99:
  101fba: 6a 00                        	pushl	$0
  101fbc: 6a 63                        	pushl	$99
  101fbe: e9 68 fc ff ff               	jmp	-920 <__alltraps>

00101fc3 vector100:
  101fc3: 6a 00                        	pushl	$0
  101fc5: 6a 64                        	pushl	$100
  101fc7: e9 5f fc ff ff               	jmp	-929 <__alltraps>

00101fcc vector101:
  101fcc: 6a 00                        	pushl	$0
  101fce: 6a 65                        	pushl	$101
  101fd0: e9 56 fc ff ff               	jmp	-938 <__alltraps>

00101fd5 vector102:
  101fd5: 6a 00                        	pushl	$0
  101fd7: 6a 66                        	pushl	$102
  101fd9: e9 4d fc ff ff               	jmp	-947 <__alltraps>

00101fde vector103:
  101fde: 6a 00                        	pushl	$0
  101fe0: 6a 67                        	pushl	$103
  101fe2: e9 44 fc ff ff               	jmp	-956 <__alltraps>

00101fe7 vector104:
  101fe7: 6a 00                        	pushl	$0
  101fe9: 6a 68                        	pushl	$104
  101feb: e9 3b fc ff ff               	jmp	-965 <__alltraps>

00101ff0 vector105:
  101ff0: 6a 00                        	pushl	$0
  101ff2: 6a 69                        	pushl	$105
  101ff4: e9 32 fc ff ff               	jmp	-974 <__alltraps>

00101ff9 vector106:
  101ff9: 6a 00                        	pushl	$0
  101ffb: 6a 6a                        	pushl	$106
  101ffd: e9 29 fc ff ff               	jmp	-983 <__alltraps>

00102002 vector107:
  102002: 6a 00                        	pushl	$0
  102004: 6a 6b                        	pushl	$107
  102006: e9 20 fc ff ff               	jmp	-992 <__alltraps>

0010200b vector108:
  10200b: 6a 00                        	pushl	$0
  10200d: 6a 6c                        	pushl	$108
  10200f: e9 17 fc ff ff               	jmp	-1001 <__alltraps>

00102014 vector109:
  102014: 6a 00                        	pushl	$0
  102016: 6a 6d                        	pushl	$109
  102018: e9 0e fc ff ff               	jmp	-1010 <__alltraps>

0010201d vector110:
  10201d: 6a 00                        	pushl	$0
  10201f: 6a 6e                        	pushl	$110
  102021: e9 05 fc ff ff               	jmp	-1019 <__alltraps>

00102026 vector111:
  102026: 6a 00                        	pushl	$0
  102028: 6a 6f                        	pushl	$111
  10202a: e9 fc fb ff ff               	jmp	-1028 <__alltraps>

0010202f vector112:
  10202f: 6a 00                        	pushl	$0
  102031: 6a 70                        	pushl	$112
  102033: e9 f3 fb ff ff               	jmp	-1037 <__alltraps>

00102038 vector113:
  102038: 6a 00                        	pushl	$0
  10203a: 6a 71                        	pushl	$113
  10203c: e9 ea fb ff ff               	jmp	-1046 <__alltraps>

00102041 vector114:
  102041: 6a 00                        	pushl	$0
  102043: 6a 72                        	pushl	$114
  102045: e9 e1 fb ff ff               	jmp	-1055 <__alltraps>

0010204a vector115:
  10204a: 6a 00                        	pushl	$0
  10204c: 6a 73                        	pushl	$115
  10204e: e9 d8 fb ff ff               	jmp	-1064 <__alltraps>

00102053 vector116:
  102053: 6a 00                        	pushl	$0
  102055: 6a 74                        	pushl	$116
  102057: e9 cf fb ff ff               	jmp	-1073 <__alltraps>

0010205c vector117:
  10205c: 6a 00                        	pushl	$0
  10205e: 6a 75                        	pushl	$117
  102060: e9 c6 fb ff ff               	jmp	-1082 <__alltraps>

00102065 vector118:
  102065: 6a 00                        	pushl	$0
  102067: 6a 76                        	pushl	$118
  102069: e9 bd fb ff ff               	jmp	-1091 <__alltraps>

0010206e vector119:
  10206e: 6a 00                        	pushl	$0
  102070: 6a 77                        	pushl	$119
  102072: e9 b4 fb ff ff               	jmp	-1100 <__alltraps>

00102077 vector120:
  102077: 6a 00                        	pushl	$0
  102079: 6a 78                        	pushl	$120
  10207b: e9 ab fb ff ff               	jmp	-1109 <__alltraps>

00102080 vector121:
  102080: 6a 00                        	pushl	$0
  102082: 6a 79                        	pushl	$121
  102084: e9 a2 fb ff ff               	jmp	-1118 <__alltraps>

00102089 vector122:
  102089: 6a 00                        	pushl	$0
  10208b: 6a 7a                        	pushl	$122
  10208d: e9 99 fb ff ff               	jmp	-1127 <__alltraps>

00102092 vector123:
  102092: 6a 00                        	pushl	$0
  102094: 6a 7b                        	pushl	$123
  102096: e9 90 fb ff ff               	jmp	-1136 <__alltraps>

0010209b vector124:
  10209b: 6a 00                        	pushl	$0
  10209d: 6a 7c                        	pushl	$124
  10209f: e9 87 fb ff ff               	jmp	-1145 <__alltraps>

001020a4 vector125:
  1020a4: 6a 00                        	pushl	$0
  1020a6: 6a 7d                        	pushl	$125
  1020a8: e9 7e fb ff ff               	jmp	-1154 <__alltraps>

001020ad vector126:
  1020ad: 6a 00                        	pushl	$0
  1020af: 6a 7e                        	pushl	$126
  1020b1: e9 75 fb ff ff               	jmp	-1163 <__alltraps>

001020b6 vector127:
  1020b6: 6a 00                        	pushl	$0
  1020b8: 6a 7f                        	pushl	$127
  1020ba: e9 6c fb ff ff               	jmp	-1172 <__alltraps>

001020bf vector128:
  1020bf: 6a 00                        	pushl	$0
  1020c1: 68 80 00 00 00               	pushl	$128
  1020c6: e9 60 fb ff ff               	jmp	-1184 <__alltraps>

001020cb vector129:
  1020cb: 6a 00                        	pushl	$0
  1020cd: 68 81 00 00 00               	pushl	$129
  1020d2: e9 54 fb ff ff               	jmp	-1196 <__alltraps>

001020d7 vector130:
  1020d7: 6a 00                        	pushl	$0
  1020d9: 68 82 00 00 00               	pushl	$130
  1020de: e9 48 fb ff ff               	jmp	-1208 <__alltraps>

001020e3 vector131:
  1020e3: 6a 00                        	pushl	$0
  1020e5: 68 83 00 00 00               	pushl	$131
  1020ea: e9 3c fb ff ff               	jmp	-1220 <__alltraps>

001020ef vector132:
  1020ef: 6a 00                        	pushl	$0
  1020f1: 68 84 00 00 00               	pushl	$132
  1020f6: e9 30 fb ff ff               	jmp	-1232 <__alltraps>

001020fb vector133:
  1020fb: 6a 00                        	pushl	$0
  1020fd: 68 85 00 00 00               	pushl	$133
  102102: e9 24 fb ff ff               	jmp	-1244 <__alltraps>

00102107 vector134:
  102107: 6a 00                        	pushl	$0
  102109: 68 86 00 00 00               	pushl	$134
  10210e: e9 18 fb ff ff               	jmp	-1256 <__alltraps>

00102113 vector135:
  102113: 6a 00                        	pushl	$0
  102115: 68 87 00 00 00               	pushl	$135
  10211a: e9 0c fb ff ff               	jmp	-1268 <__alltraps>

0010211f vector136:
  10211f: 6a 00                        	pushl	$0
  102121: 68 88 00 00 00               	pushl	$136
  102126: e9 00 fb ff ff               	jmp	-1280 <__alltraps>

0010212b vector137:
  10212b: 6a 00                        	pushl	$0
  10212d: 68 89 00 00 00               	pushl	$137
  102132: e9 f4 fa ff ff               	jmp	-1292 <__alltraps>

00102137 vector138:
  102137: 6a 00                        	pushl	$0
  102139: 68 8a 00 00 00               	pushl	$138
  10213e: e9 e8 fa ff ff               	jmp	-1304 <__alltraps>

00102143 vector139:
  102143: 6a 00                        	pushl	$0
  102145: 68 8b 00 00 00               	pushl	$139
  10214a: e9 dc fa ff ff               	jmp	-1316 <__alltraps>

0010214f vector140:
  10214f: 6a 00                        	pushl	$0
  102151: 68 8c 00 00 00               	pushl	$140
  102156: e9 d0 fa ff ff               	jmp	-1328 <__alltraps>

0010215b vector141:
  10215b: 6a 00                        	pushl	$0
  10215d: 68 8d 00 00 00               	pushl	$141
  102162: e9 c4 fa ff ff               	jmp	-1340 <__alltraps>

00102167 vector142:
  102167: 6a 00                        	pushl	$0
  102169: 68 8e 00 00 00               	pushl	$142
  10216e: e9 b8 fa ff ff               	jmp	-1352 <__alltraps>

00102173 vector143:
  102173: 6a 00                        	pushl	$0
  102175: 68 8f 00 00 00               	pushl	$143
  10217a: e9 ac fa ff ff               	jmp	-1364 <__alltraps>

0010217f vector144:
  10217f: 6a 00                        	pushl	$0
  102181: 68 90 00 00 00               	pushl	$144
  102186: e9 a0 fa ff ff               	jmp	-1376 <__alltraps>

0010218b vector145:
  10218b: 6a 00                        	pushl	$0
  10218d: 68 91 00 00 00               	pushl	$145
  102192: e9 94 fa ff ff               	jmp	-1388 <__alltraps>

00102197 vector146:
  102197: 6a 00                        	pushl	$0
  102199: 68 92 00 00 00               	pushl	$146
  10219e: e9 88 fa ff ff               	jmp	-1400 <__alltraps>

001021a3 vector147:
  1021a3: 6a 00                        	pushl	$0
  1021a5: 68 93 00 00 00               	pushl	$147
  1021aa: e9 7c fa ff ff               	jmp	-1412 <__alltraps>

001021af vector148:
  1021af: 6a 00                        	pushl	$0
  1021b1: 68 94 00 00 00               	pushl	$148
  1021b6: e9 70 fa ff ff               	jmp	-1424 <__alltraps>

001021bb vector149:
  1021bb: 6a 00                        	pushl	$0
  1021bd: 68 95 00 00 00               	pushl	$149
  1021c2: e9 64 fa ff ff               	jmp	-1436 <__alltraps>

001021c7 vector150:
  1021c7: 6a 00                        	pushl	$0
  1021c9: 68 96 00 00 00               	pushl	$150
  1021ce: e9 58 fa ff ff               	jmp	-1448 <__alltraps>

001021d3 vector151:
  1021d3: 6a 00                        	pushl	$0
  1021d5: 68 97 00 00 00               	pushl	$151
  1021da: e9 4c fa ff ff               	jmp	-1460 <__alltraps>

001021df vector152:
  1021df: 6a 00                        	pushl	$0
  1021e1: 68 98 00 00 00               	pushl	$152
  1021e6: e9 40 fa ff ff               	jmp	-1472 <__alltraps>

001021eb vector153:
  1021eb: 6a 00                        	pushl	$0
  1021ed: 68 99 00 00 00               	pushl	$153
  1021f2: e9 34 fa ff ff               	jmp	-1484 <__alltraps>

001021f7 vector154:
  1021f7: 6a 00                        	pushl	$0
  1021f9: 68 9a 00 00 00               	pushl	$154
  1021fe: e9 28 fa ff ff               	jmp	-1496 <__alltraps>

00102203 vector155:
  102203: 6a 00                        	pushl	$0
  102205: 68 9b 00 00 00               	pushl	$155
  10220a: e9 1c fa ff ff               	jmp	-1508 <__alltraps>

0010220f vector156:
  10220f: 6a 00                        	pushl	$0
  102211: 68 9c 00 00 00               	pushl	$156
  102216: e9 10 fa ff ff               	jmp	-1520 <__alltraps>

0010221b vector157:
  10221b: 6a 00                        	pushl	$0
  10221d: 68 9d 00 00 00               	pushl	$157
  102222: e9 04 fa ff ff               	jmp	-1532 <__alltraps>

00102227 vector158:
  102227: 6a 00                        	pushl	$0
  102229: 68 9e 00 00 00               	pushl	$158
  10222e: e9 f8 f9 ff ff               	jmp	-1544 <__alltraps>

00102233 vector159:
  102233: 6a 00                        	pushl	$0
  102235: 68 9f 00 00 00               	pushl	$159
  10223a: e9 ec f9 ff ff               	jmp	-1556 <__alltraps>

0010223f vector160:
  10223f: 6a 00                        	pushl	$0
  102241: 68 a0 00 00 00               	pushl	$160
  102246: e9 e0 f9 ff ff               	jmp	-1568 <__alltraps>

0010224b vector161:
  10224b: 6a 00                        	pushl	$0
  10224d: 68 a1 00 00 00               	pushl	$161
  102252: e9 d4 f9 ff ff               	jmp	-1580 <__alltraps>

00102257 vector162:
  102257: 6a 00                        	pushl	$0
  102259: 68 a2 00 00 00               	pushl	$162
  10225e: e9 c8 f9 ff ff               	jmp	-1592 <__alltraps>

00102263 vector163:
  102263: 6a 00                        	pushl	$0
  102265: 68 a3 00 00 00               	pushl	$163
  10226a: e9 bc f9 ff ff               	jmp	-1604 <__alltraps>

0010226f vector164:
  10226f: 6a 00                        	pushl	$0
  102271: 68 a4 00 00 00               	pushl	$164
  102276: e9 b0 f9 ff ff               	jmp	-1616 <__alltraps>

0010227b vector165:
  10227b: 6a 00                        	pushl	$0
  10227d: 68 a5 00 00 00               	pushl	$165
  102282: e9 a4 f9 ff ff               	jmp	-1628 <__alltraps>

00102287 vector166:
  102287: 6a 00                        	pushl	$0
  102289: 68 a6 00 00 00               	pushl	$166
  10228e: e9 98 f9 ff ff               	jmp	-1640 <__alltraps>

00102293 vector167:
  102293: 6a 00                        	pushl	$0
  102295: 68 a7 00 00 00               	pushl	$167
  10229a: e9 8c f9 ff ff               	jmp	-1652 <__alltraps>

0010229f vector168:
  10229f: 6a 00                        	pushl	$0
  1022a1: 68 a8 00 00 00               	pushl	$168
  1022a6: e9 80 f9 ff ff               	jmp	-1664 <__alltraps>

001022ab vector169:
  1022ab: 6a 00                        	pushl	$0
  1022ad: 68 a9 00 00 00               	pushl	$169
  1022b2: e9 74 f9 ff ff               	jmp	-1676 <__alltraps>

001022b7 vector170:
  1022b7: 6a 00                        	pushl	$0
  1022b9: 68 aa 00 00 00               	pushl	$170
  1022be: e9 68 f9 ff ff               	jmp	-1688 <__alltraps>

001022c3 vector171:
  1022c3: 6a 00                        	pushl	$0
  1022c5: 68 ab 00 00 00               	pushl	$171
  1022ca: e9 5c f9 ff ff               	jmp	-1700 <__alltraps>

001022cf vector172:
  1022cf: 6a 00                        	pushl	$0
  1022d1: 68 ac 00 00 00               	pushl	$172
  1022d6: e9 50 f9 ff ff               	jmp	-1712 <__alltraps>

001022db vector173:
  1022db: 6a 00                        	pushl	$0
  1022dd: 68 ad 00 00 00               	pushl	$173
  1022e2: e9 44 f9 ff ff               	jmp	-1724 <__alltraps>

001022e7 vector174:
  1022e7: 6a 00                        	pushl	$0
  1022e9: 68 ae 00 00 00               	pushl	$174
  1022ee: e9 38 f9 ff ff               	jmp	-1736 <__alltraps>

001022f3 vector175:
  1022f3: 6a 00                        	pushl	$0
  1022f5: 68 af 00 00 00               	pushl	$175
  1022fa: e9 2c f9 ff ff               	jmp	-1748 <__alltraps>

001022ff vector176:
  1022ff: 6a 00                        	pushl	$0
  102301: 68 b0 00 00 00               	pushl	$176
  102306: e9 20 f9 ff ff               	jmp	-1760 <__alltraps>

0010230b vector177:
  10230b: 6a 00                        	pushl	$0
  10230d: 68 b1 00 00 00               	pushl	$177
  102312: e9 14 f9 ff ff               	jmp	-1772 <__alltraps>

00102317 vector178:
  102317: 6a 00                        	pushl	$0
  102319: 68 b2 00 00 00               	pushl	$178
  10231e: e9 08 f9 ff ff               	jmp	-1784 <__alltraps>

00102323 vector179:
  102323: 6a 00                        	pushl	$0
  102325: 68 b3 00 00 00               	pushl	$179
  10232a: e9 fc f8 ff ff               	jmp	-1796 <__alltraps>

0010232f vector180:
  10232f: 6a 00                        	pushl	$0
  102331: 68 b4 00 00 00               	pushl	$180
  102336: e9 f0 f8 ff ff               	jmp	-1808 <__alltraps>

0010233b vector181:
  10233b: 6a 00                        	pushl	$0
  10233d: 68 b5 00 00 00               	pushl	$181
  102342: e9 e4 f8 ff ff               	jmp	-1820 <__alltraps>

00102347 vector182:
  102347: 6a 00                        	pushl	$0
  102349: 68 b6 00 00 00               	pushl	$182
  10234e: e9 d8 f8 ff ff               	jmp	-1832 <__alltraps>

00102353 vector183:
  102353: 6a 00                        	pushl	$0
  102355: 68 b7 00 00 00               	pushl	$183
  10235a: e9 cc f8 ff ff               	jmp	-1844 <__alltraps>

0010235f vector184:
  10235f: 6a 00                        	pushl	$0
  102361: 68 b8 00 00 00               	pushl	$184
  102366: e9 c0 f8 ff ff               	jmp	-1856 <__alltraps>

0010236b vector185:
  10236b: 6a 00                        	pushl	$0
  10236d: 68 b9 00 00 00               	pushl	$185
  102372: e9 b4 f8 ff ff               	jmp	-1868 <__alltraps>

00102377 vector186:
  102377: 6a 00                        	pushl	$0
  102379: 68 ba 00 00 00               	pushl	$186
  10237e: e9 a8 f8 ff ff               	jmp	-1880 <__alltraps>

00102383 vector187:
  102383: 6a 00                        	pushl	$0
  102385: 68 bb 00 00 00               	pushl	$187
  10238a: e9 9c f8 ff ff               	jmp	-1892 <__alltraps>

0010238f vector188:
  10238f: 6a 00                        	pushl	$0
  102391: 68 bc 00 00 00               	pushl	$188
  102396: e9 90 f8 ff ff               	jmp	-1904 <__alltraps>

0010239b vector189:
  10239b: 6a 00                        	pushl	$0
  10239d: 68 bd 00 00 00               	pushl	$189
  1023a2: e9 84 f8 ff ff               	jmp	-1916 <__alltraps>

001023a7 vector190:
  1023a7: 6a 00                        	pushl	$0
  1023a9: 68 be 00 00 00               	pushl	$190
  1023ae: e9 78 f8 ff ff               	jmp	-1928 <__alltraps>

001023b3 vector191:
  1023b3: 6a 00                        	pushl	$0
  1023b5: 68 bf 00 00 00               	pushl	$191
  1023ba: e9 6c f8 ff ff               	jmp	-1940 <__alltraps>

001023bf vector192:
  1023bf: 6a 00                        	pushl	$0
  1023c1: 68 c0 00 00 00               	pushl	$192
  1023c6: e9 60 f8 ff ff               	jmp	-1952 <__alltraps>

001023cb vector193:
  1023cb: 6a 00                        	pushl	$0
  1023cd: 68 c1 00 00 00               	pushl	$193
  1023d2: e9 54 f8 ff ff               	jmp	-1964 <__alltraps>

001023d7 vector194:
  1023d7: 6a 00                        	pushl	$0
  1023d9: 68 c2 00 00 00               	pushl	$194
  1023de: e9 48 f8 ff ff               	jmp	-1976 <__alltraps>

001023e3 vector195:
  1023e3: 6a 00                        	pushl	$0
  1023e5: 68 c3 00 00 00               	pushl	$195
  1023ea: e9 3c f8 ff ff               	jmp	-1988 <__alltraps>

001023ef vector196:
  1023ef: 6a 00                        	pushl	$0
  1023f1: 68 c4 00 00 00               	pushl	$196
  1023f6: e9 30 f8 ff ff               	jmp	-2000 <__alltraps>

001023fb vector197:
  1023fb: 6a 00                        	pushl	$0
  1023fd: 68 c5 00 00 00               	pushl	$197
  102402: e9 24 f8 ff ff               	jmp	-2012 <__alltraps>

00102407 vector198:
  102407: 6a 00                        	pushl	$0
  102409: 68 c6 00 00 00               	pushl	$198
  10240e: e9 18 f8 ff ff               	jmp	-2024 <__alltraps>

00102413 vector199:
  102413: 6a 00                        	pushl	$0
  102415: 68 c7 00 00 00               	pushl	$199
  10241a: e9 0c f8 ff ff               	jmp	-2036 <__alltraps>

0010241f vector200:
  10241f: 6a 00                        	pushl	$0
  102421: 68 c8 00 00 00               	pushl	$200
  102426: e9 00 f8 ff ff               	jmp	-2048 <__alltraps>

0010242b vector201:
  10242b: 6a 00                        	pushl	$0
  10242d: 68 c9 00 00 00               	pushl	$201
  102432: e9 f4 f7 ff ff               	jmp	-2060 <__alltraps>

00102437 vector202:
  102437: 6a 00                        	pushl	$0
  102439: 68 ca 00 00 00               	pushl	$202
  10243e: e9 e8 f7 ff ff               	jmp	-2072 <__alltraps>

00102443 vector203:
  102443: 6a 00                        	pushl	$0
  102445: 68 cb 00 00 00               	pushl	$203
  10244a: e9 dc f7 ff ff               	jmp	-2084 <__alltraps>

0010244f vector204:
  10244f: 6a 00                        	pushl	$0
  102451: 68 cc 00 00 00               	pushl	$204
  102456: e9 d0 f7 ff ff               	jmp	-2096 <__alltraps>

0010245b vector205:
  10245b: 6a 00                        	pushl	$0
  10245d: 68 cd 00 00 00               	pushl	$205
  102462: e9 c4 f7 ff ff               	jmp	-2108 <__alltraps>

00102467 vector206:
  102467: 6a 00                        	pushl	$0
  102469: 68 ce 00 00 00               	pushl	$206
  10246e: e9 b8 f7 ff ff               	jmp	-2120 <__alltraps>

00102473 vector207:
  102473: 6a 00                        	pushl	$0
  102475: 68 cf 00 00 00               	pushl	$207
  10247a: e9 ac f7 ff ff               	jmp	-2132 <__alltraps>

0010247f vector208:
  10247f: 6a 00                        	pushl	$0
  102481: 68 d0 00 00 00               	pushl	$208
  102486: e9 a0 f7 ff ff               	jmp	-2144 <__alltraps>

0010248b vector209:
  10248b: 6a 00                        	pushl	$0
  10248d: 68 d1 00 00 00               	pushl	$209
  102492: e9 94 f7 ff ff               	jmp	-2156 <__alltraps>

00102497 vector210:
  102497: 6a 00                        	pushl	$0
  102499: 68 d2 00 00 00               	pushl	$210
  10249e: e9 88 f7 ff ff               	jmp	-2168 <__alltraps>

001024a3 vector211:
  1024a3: 6a 00                        	pushl	$0
  1024a5: 68 d3 00 00 00               	pushl	$211
  1024aa: e9 7c f7 ff ff               	jmp	-2180 <__alltraps>

001024af vector212:
  1024af: 6a 00                        	pushl	$0
  1024b1: 68 d4 00 00 00               	pushl	$212
  1024b6: e9 70 f7 ff ff               	jmp	-2192 <__alltraps>

001024bb vector213:
  1024bb: 6a 00                        	pushl	$0
  1024bd: 68 d5 00 00 00               	pushl	$213
  1024c2: e9 64 f7 ff ff               	jmp	-2204 <__alltraps>

001024c7 vector214:
  1024c7: 6a 00                        	pushl	$0
  1024c9: 68 d6 00 00 00               	pushl	$214
  1024ce: e9 58 f7 ff ff               	jmp	-2216 <__alltraps>

001024d3 vector215:
  1024d3: 6a 00                        	pushl	$0
  1024d5: 68 d7 00 00 00               	pushl	$215
  1024da: e9 4c f7 ff ff               	jmp	-2228 <__alltraps>

001024df vector216:
  1024df: 6a 00                        	pushl	$0
  1024e1: 68 d8 00 00 00               	pushl	$216
  1024e6: e9 40 f7 ff ff               	jmp	-2240 <__alltraps>

001024eb vector217:
  1024eb: 6a 00                        	pushl	$0
  1024ed: 68 d9 00 00 00               	pushl	$217
  1024f2: e9 34 f7 ff ff               	jmp	-2252 <__alltraps>

001024f7 vector218:
  1024f7: 6a 00                        	pushl	$0
  1024f9: 68 da 00 00 00               	pushl	$218
  1024fe: e9 28 f7 ff ff               	jmp	-2264 <__alltraps>

00102503 vector219:
  102503: 6a 00                        	pushl	$0
  102505: 68 db 00 00 00               	pushl	$219
  10250a: e9 1c f7 ff ff               	jmp	-2276 <__alltraps>

0010250f vector220:
  10250f: 6a 00                        	pushl	$0
  102511: 68 dc 00 00 00               	pushl	$220
  102516: e9 10 f7 ff ff               	jmp	-2288 <__alltraps>

0010251b vector221:
  10251b: 6a 00                        	pushl	$0
  10251d: 68 dd 00 00 00               	pushl	$221
  102522: e9 04 f7 ff ff               	jmp	-2300 <__alltraps>

00102527 vector222:
  102527: 6a 00                        	pushl	$0
  102529: 68 de 00 00 00               	pushl	$222
  10252e: e9 f8 f6 ff ff               	jmp	-2312 <__alltraps>

00102533 vector223:
  102533: 6a 00                        	pushl	$0
  102535: 68 df 00 00 00               	pushl	$223
  10253a: e9 ec f6 ff ff               	jmp	-2324 <__alltraps>

0010253f vector224:
  10253f: 6a 00                        	pushl	$0
  102541: 68 e0 00 00 00               	pushl	$224
  102546: e9 e0 f6 ff ff               	jmp	-2336 <__alltraps>

0010254b vector225:
  10254b: 6a 00                        	pushl	$0
  10254d: 68 e1 00 00 00               	pushl	$225
  102552: e9 d4 f6 ff ff               	jmp	-2348 <__alltraps>

00102557 vector226:
  102557: 6a 00                        	pushl	$0
  102559: 68 e2 00 00 00               	pushl	$226
  10255e: e9 c8 f6 ff ff               	jmp	-2360 <__alltraps>

00102563 vector227:
  102563: 6a 00                        	pushl	$0
  102565: 68 e3 00 00 00               	pushl	$227
  10256a: e9 bc f6 ff ff               	jmp	-2372 <__alltraps>

0010256f vector228:
  10256f: 6a 00                        	pushl	$0
  102571: 68 e4 00 00 00               	pushl	$228
  102576: e9 b0 f6 ff ff               	jmp	-2384 <__alltraps>

0010257b vector229:
  10257b: 6a 00                        	pushl	$0
  10257d: 68 e5 00 00 00               	pushl	$229
  102582: e9 a4 f6 ff ff               	jmp	-2396 <__alltraps>

00102587 vector230:
  102587: 6a 00                        	pushl	$0
  102589: 68 e6 00 00 00               	pushl	$230
  10258e: e9 98 f6 ff ff               	jmp	-2408 <__alltraps>

00102593 vector231:
  102593: 6a 00                        	pushl	$0
  102595: 68 e7 00 00 00               	pushl	$231
  10259a: e9 8c f6 ff ff               	jmp	-2420 <__alltraps>

0010259f vector232:
  10259f: 6a 00                        	pushl	$0
  1025a1: 68 e8 00 00 00               	pushl	$232
  1025a6: e9 80 f6 ff ff               	jmp	-2432 <__alltraps>

001025ab vector233:
  1025ab: 6a 00                        	pushl	$0
  1025ad: 68 e9 00 00 00               	pushl	$233
  1025b2: e9 74 f6 ff ff               	jmp	-2444 <__alltraps>

001025b7 vector234:
  1025b7: 6a 00                        	pushl	$0
  1025b9: 68 ea 00 00 00               	pushl	$234
  1025be: e9 68 f6 ff ff               	jmp	-2456 <__alltraps>

001025c3 vector235:
  1025c3: 6a 00                        	pushl	$0
  1025c5: 68 eb 00 00 00               	pushl	$235
  1025ca: e9 5c f6 ff ff               	jmp	-2468 <__alltraps>

001025cf vector236:
  1025cf: 6a 00                        	pushl	$0
  1025d1: 68 ec 00 00 00               	pushl	$236
  1025d6: e9 50 f6 ff ff               	jmp	-2480 <__alltraps>

001025db vector237:
  1025db: 6a 00                        	pushl	$0
  1025dd: 68 ed 00 00 00               	pushl	$237
  1025e2: e9 44 f6 ff ff               	jmp	-2492 <__alltraps>

001025e7 vector238:
  1025e7: 6a 00                        	pushl	$0
  1025e9: 68 ee 00 00 00               	pushl	$238
  1025ee: e9 38 f6 ff ff               	jmp	-2504 <__alltraps>

001025f3 vector239:
  1025f3: 6a 00                        	pushl	$0
  1025f5: 68 ef 00 00 00               	pushl	$239
  1025fa: e9 2c f6 ff ff               	jmp	-2516 <__alltraps>

001025ff vector240:
  1025ff: 6a 00                        	pushl	$0
  102601: 68 f0 00 00 00               	pushl	$240
  102606: e9 20 f6 ff ff               	jmp	-2528 <__alltraps>

0010260b vector241:
  10260b: 6a 00                        	pushl	$0
  10260d: 68 f1 00 00 00               	pushl	$241
  102612: e9 14 f6 ff ff               	jmp	-2540 <__alltraps>

00102617 vector242:
  102617: 6a 00                        	pushl	$0
  102619: 68 f2 00 00 00               	pushl	$242
  10261e: e9 08 f6 ff ff               	jmp	-2552 <__alltraps>

00102623 vector243:
  102623: 6a 00                        	pushl	$0
  102625: 68 f3 00 00 00               	pushl	$243
  10262a: e9 fc f5 ff ff               	jmp	-2564 <__alltraps>

0010262f vector244:
  10262f: 6a 00                        	pushl	$0
  102631: 68 f4 00 00 00               	pushl	$244
  102636: e9 f0 f5 ff ff               	jmp	-2576 <__alltraps>

0010263b vector245:
  10263b: 6a 00                        	pushl	$0
  10263d: 68 f5 00 00 00               	pushl	$245
  102642: e9 e4 f5 ff ff               	jmp	-2588 <__alltraps>

00102647 vector246:
  102647: 6a 00                        	pushl	$0
  102649: 68 f6 00 00 00               	pushl	$246
  10264e: e9 d8 f5 ff ff               	jmp	-2600 <__alltraps>

00102653 vector247:
  102653: 6a 00                        	pushl	$0
  102655: 68 f7 00 00 00               	pushl	$247
  10265a: e9 cc f5 ff ff               	jmp	-2612 <__alltraps>

0010265f vector248:
  10265f: 6a 00                        	pushl	$0
  102661: 68 f8 00 00 00               	pushl	$248
  102666: e9 c0 f5 ff ff               	jmp	-2624 <__alltraps>

0010266b vector249:
  10266b: 6a 00                        	pushl	$0
  10266d: 68 f9 00 00 00               	pushl	$249
  102672: e9 b4 f5 ff ff               	jmp	-2636 <__alltraps>

00102677 vector250:
  102677: 6a 00                        	pushl	$0
  102679: 68 fa 00 00 00               	pushl	$250
  10267e: e9 a8 f5 ff ff               	jmp	-2648 <__alltraps>

00102683 vector251:
  102683: 6a 00                        	pushl	$0
  102685: 68 fb 00 00 00               	pushl	$251
  10268a: e9 9c f5 ff ff               	jmp	-2660 <__alltraps>

0010268f vector252:
  10268f: 6a 00                        	pushl	$0
  102691: 68 fc 00 00 00               	pushl	$252
  102696: e9 90 f5 ff ff               	jmp	-2672 <__alltraps>

0010269b vector253:
  10269b: 6a 00                        	pushl	$0
  10269d: 68 fd 00 00 00               	pushl	$253
  1026a2: e9 84 f5 ff ff               	jmp	-2684 <__alltraps>

001026a7 vector254:
  1026a7: 6a 00                        	pushl	$0
  1026a9: 68 fe 00 00 00               	pushl	$254
  1026ae: e9 78 f5 ff ff               	jmp	-2696 <__alltraps>

001026b3 vector255:
  1026b3: 6a 00                        	pushl	$0
  1026b5: 68 ff 00 00 00               	pushl	$255
  1026ba: e9 6c f5 ff ff               	jmp	-2708 <__alltraps>

001026bf lgdt:
  1026bf: 55                           	pushl	%ebp
  1026c0: 89 e5                        	movl	%esp, %ebp
  1026c2: 8b 45 08                     	movl	8(%ebp), %eax
  1026c5: 0f 01 10                     	lgdtl	(%eax)
  1026c8: b8 23 00 00 00               	movl	$35, %eax
  1026cd: 8e e8                        	movl	%eax, %gs
  1026cf: b8 23 00 00 00               	movl	$35, %eax
  1026d4: 8e e0                        	movl	%eax, %fs
  1026d6: b8 10 00 00 00               	movl	$16, %eax
  1026db: 8e c0                        	movl	%eax, %es
  1026dd: b8 10 00 00 00               	movl	$16, %eax
  1026e2: 8e d8                        	movl	%eax, %ds
  1026e4: b8 10 00 00 00               	movl	$16, %eax
  1026e9: 8e d0                        	movl	%eax, %ss
  1026eb: ea f2 26 10 00 08 00         	ljmpl	$8, $1058546
  1026f2: 90                           	nop
  1026f3: 5d                           	popl	%ebp
  1026f4: c3                           	retl

001026f5 gdt_init:
  1026f5: 55                           	pushl	%ebp
  1026f6: 89 e5                        	movl	%esp, %ebp
  1026f8: 83 ec 14                     	subl	$20, %esp
  1026fb: b8 a0 08 11 00               	movl	$1116320, %eax
  102700: 05 00 04 00 00               	addl	$1024, %eax
  102705: a3 a4 0c 11 00               	movl	%eax, 1117348
  10270a: 66 c7 05 a8 0c 11 00 10 00   	movw	$16, 1117352
  102713: 66 c7 05 08 fa 10 00 68 00   	movw	$104, 1112584
  10271c: b8 a0 0c 11 00               	movl	$1117344, %eax
  102721: 0f b7 c0                     	movzwl	%ax, %eax
  102724: 66 a3 0a fa 10 00            	movw	%ax, 1112586
  10272a: b8 a0 0c 11 00               	movl	$1117344, %eax
  10272f: c1 e8 10                     	shrl	$16, %eax
  102732: a2 0c fa 10 00               	movb	%al, 1112588
  102737: 0f b6 05 0d fa 10 00         	movzbl	1112589, %eax
  10273e: 24 f0                        	andb	$-16, %al
  102740: 0c 09                        	orb	$9, %al
  102742: a2 0d fa 10 00               	movb	%al, 1112589
  102747: 0f b6 05 0d fa 10 00         	movzbl	1112589, %eax
  10274e: 0c 10                        	orb	$16, %al
  102750: a2 0d fa 10 00               	movb	%al, 1112589
  102755: 0f b6 05 0d fa 10 00         	movzbl	1112589, %eax
  10275c: 24 9f                        	andb	$-97, %al
  10275e: a2 0d fa 10 00               	movb	%al, 1112589
  102763: 0f b6 05 0d fa 10 00         	movzbl	1112589, %eax
  10276a: 0c 80                        	orb	$-128, %al
  10276c: a2 0d fa 10 00               	movb	%al, 1112589
  102771: 0f b6 05 0e fa 10 00         	movzbl	1112590, %eax
  102778: 24 f0                        	andb	$-16, %al
  10277a: a2 0e fa 10 00               	movb	%al, 1112590
  10277f: 0f b6 05 0e fa 10 00         	movzbl	1112590, %eax
  102786: 24 ef                        	andb	$-17, %al
  102788: a2 0e fa 10 00               	movb	%al, 1112590
  10278d: 0f b6 05 0e fa 10 00         	movzbl	1112590, %eax
  102794: 24 df                        	andb	$-33, %al
  102796: a2 0e fa 10 00               	movb	%al, 1112590
  10279b: 0f b6 05 0e fa 10 00         	movzbl	1112590, %eax
  1027a2: 0c 40                        	orb	$64, %al
  1027a4: a2 0e fa 10 00               	movb	%al, 1112590
  1027a9: 0f b6 05 0e fa 10 00         	movzbl	1112590, %eax
  1027b0: 24 7f                        	andb	$127, %al
  1027b2: a2 0e fa 10 00               	movb	%al, 1112590
  1027b7: b8 a0 0c 11 00               	movl	$1117344, %eax
  1027bc: c1 e8 18                     	shrl	$24, %eax
  1027bf: a2 0f fa 10 00               	movb	%al, 1112591
  1027c4: 0f b6 05 0d fa 10 00         	movzbl	1112589, %eax
  1027cb: 24 ef                        	andb	$-17, %al
  1027cd: a2 0d fa 10 00               	movb	%al, 1112589
  1027d2: c7 04 24 10 fa 10 00         	movl	$1112592, (%esp)
  1027d9: e8 e1 fe ff ff               	calll	-287 <lgdt>
  1027de: 66 c7 45 fe 28 00            	movw	$40, -2(%ebp)
  1027e4: 0f b7 45 fe                  	movzwl	-2(%ebp), %eax
  1027e8: 0f 00 d8                     	ltrw	%ax
  1027eb: 90                           	nop
  1027ec: 90                           	nop
  1027ed: 89 ec                        	movl	%ebp, %esp
  1027ef: 5d                           	popl	%ebp
  1027f0: c3                           	retl

001027f1 pmm_init:
  1027f1: 55                           	pushl	%ebp
  1027f2: 89 e5                        	movl	%esp, %ebp
  1027f4: e8 fc fe ff ff               	calll	-260 <gdt_init>
  1027f9: 90                           	nop
  1027fa: 5d                           	popl	%ebp
  1027fb: c3                           	retl

001027fc printnum:
  1027fc: 55                           	pushl	%ebp
  1027fd: 89 e5                        	movl	%esp, %ebp
  1027ff: 83 ec 58                     	subl	$88, %esp
  102802: 8b 45 10                     	movl	16(%ebp), %eax
  102805: 89 45 d0                     	movl	%eax, -48(%ebp)
  102808: 8b 45 14                     	movl	20(%ebp), %eax
  10280b: 89 45 d4                     	movl	%eax, -44(%ebp)
  10280e: 8b 45 d0                     	movl	-48(%ebp), %eax
  102811: 8b 55 d4                     	movl	-44(%ebp), %edx
  102814: 89 45 e8                     	movl	%eax, -24(%ebp)
  102817: 89 55 ec                     	movl	%edx, -20(%ebp)
  10281a: 8b 45 18                     	movl	24(%ebp), %eax
  10281d: 89 45 e4                     	movl	%eax, -28(%ebp)
  102820: 8b 45 e8                     	movl	-24(%ebp), %eax
  102823: 8b 55 ec                     	movl	-20(%ebp), %edx
  102826: 89 45 e0                     	movl	%eax, -32(%ebp)
  102829: 89 55 f0                     	movl	%edx, -16(%ebp)
  10282c: 8b 45 f0                     	movl	-16(%ebp), %eax
  10282f: 89 45 f4                     	movl	%eax, -12(%ebp)
  102832: 83 7d f0 00                  	cmpl	$0, -16(%ebp)
  102836: 74 1c                        	je	28 <printnum+0x58>
  102838: 8b 45 f0                     	movl	-16(%ebp), %eax
  10283b: ba 00 00 00 00               	movl	$0, %edx
  102840: f7 75 e4                     	divl	-28(%ebp)
  102843: 89 55 f4                     	movl	%edx, -12(%ebp)
  102846: 8b 45 f0                     	movl	-16(%ebp), %eax
  102849: ba 00 00 00 00               	movl	$0, %edx
  10284e: f7 75 e4                     	divl	-28(%ebp)
  102851: 89 45 f0                     	movl	%eax, -16(%ebp)
  102854: 8b 45 e0                     	movl	-32(%ebp), %eax
  102857: 8b 55 f4                     	movl	-12(%ebp), %edx
  10285a: f7 75 e4                     	divl	-28(%ebp)
  10285d: 89 45 e0                     	movl	%eax, -32(%ebp)
  102860: 89 55 dc                     	movl	%edx, -36(%ebp)
  102863: 8b 45 e0                     	movl	-32(%ebp), %eax
  102866: 8b 55 f0                     	movl	-16(%ebp), %edx
  102869: 89 45 e8                     	movl	%eax, -24(%ebp)
  10286c: 89 55 ec                     	movl	%edx, -20(%ebp)
  10286f: 8b 45 dc                     	movl	-36(%ebp), %eax
  102872: 89 45 d8                     	movl	%eax, -40(%ebp)
  102875: 8b 45 18                     	movl	24(%ebp), %eax
  102878: ba 00 00 00 00               	movl	$0, %edx
  10287d: 8b 4d d4                     	movl	-44(%ebp), %ecx
  102880: 39 45 d0                     	cmpl	%eax, -48(%ebp)
  102883: 19 d1                        	sbbl	%edx, %ecx
  102885: 72 4c                        	jb	76 <printnum+0xd7>
  102887: 8b 45 1c                     	movl	28(%ebp), %eax
  10288a: 8d 50 ff                     	leal	-1(%eax), %edx
  10288d: 8b 45 20                     	movl	32(%ebp), %eax
  102890: 89 44 24 18                  	movl	%eax, 24(%esp)
  102894: 89 54 24 14                  	movl	%edx, 20(%esp)
  102898: 8b 45 18                     	movl	24(%ebp), %eax
  10289b: 89 44 24 10                  	movl	%eax, 16(%esp)
  10289f: 8b 45 e8                     	movl	-24(%ebp), %eax
  1028a2: 8b 55 ec                     	movl	-20(%ebp), %edx
  1028a5: 89 44 24 08                  	movl	%eax, 8(%esp)
  1028a9: 89 54 24 0c                  	movl	%edx, 12(%esp)
  1028ad: 8b 45 0c                     	movl	12(%ebp), %eax
  1028b0: 89 44 24 04                  	movl	%eax, 4(%esp)
  1028b4: 8b 45 08                     	movl	8(%ebp), %eax
  1028b7: 89 04 24                     	movl	%eax, (%esp)
  1028ba: e8 3d ff ff ff               	calll	-195 <printnum>
  1028bf: eb 1b                        	jmp	27 <printnum+0xe0>
  1028c1: 8b 45 0c                     	movl	12(%ebp), %eax
  1028c4: 89 44 24 04                  	movl	%eax, 4(%esp)
  1028c8: 8b 45 20                     	movl	32(%ebp), %eax
  1028cb: 89 04 24                     	movl	%eax, (%esp)
  1028ce: 8b 45 08                     	movl	8(%ebp), %eax
  1028d1: ff d0                        	calll	*%eax
  1028d3: ff 4d 1c                     	decl	28(%ebp)
  1028d6: 83 7d 1c 00                  	cmpl	$0, 28(%ebp)
  1028da: 7f e5                        	jg	-27 <printnum+0xc5>
  1028dc: 8b 45 d8                     	movl	-40(%ebp), %eax
  1028df: 05 f0 3a 10 00               	addl	$1063664, %eax
  1028e4: 0f b6 00                     	movzbl	(%eax), %eax
  1028e7: 0f be c0                     	movsbl	%al, %eax
  1028ea: 8b 55 0c                     	movl	12(%ebp), %edx
  1028ed: 89 54 24 04                  	movl	%edx, 4(%esp)
  1028f1: 89 04 24                     	movl	%eax, (%esp)
  1028f4: 8b 45 08                     	movl	8(%ebp), %eax
  1028f7: ff d0                        	calll	*%eax
  1028f9: 90                           	nop
  1028fa: 89 ec                        	movl	%ebp, %esp
  1028fc: 5d                           	popl	%ebp
  1028fd: c3                           	retl

001028fe getuint:
  1028fe: 55                           	pushl	%ebp
  1028ff: 89 e5                        	movl	%esp, %ebp
  102901: 83 7d 0c 01                  	cmpl	$1, 12(%ebp)
  102905: 7e 14                        	jle	20 <getuint+0x1d>
  102907: 8b 45 08                     	movl	8(%ebp), %eax
  10290a: 8b 00                        	movl	(%eax), %eax
  10290c: 8d 48 08                     	leal	8(%eax), %ecx
  10290f: 8b 55 08                     	movl	8(%ebp), %edx
  102912: 89 0a                        	movl	%ecx, (%edx)
  102914: 8b 50 04                     	movl	4(%eax), %edx
  102917: 8b 00                        	movl	(%eax), %eax
  102919: eb 30                        	jmp	48 <getuint+0x4d>
  10291b: 83 7d 0c 00                  	cmpl	$0, 12(%ebp)
  10291f: 74 16                        	je	22 <getuint+0x39>
  102921: 8b 45 08                     	movl	8(%ebp), %eax
  102924: 8b 00                        	movl	(%eax), %eax
  102926: 8d 48 04                     	leal	4(%eax), %ecx
  102929: 8b 55 08                     	movl	8(%ebp), %edx
  10292c: 89 0a                        	movl	%ecx, (%edx)
  10292e: 8b 00                        	movl	(%eax), %eax
  102930: ba 00 00 00 00               	movl	$0, %edx
  102935: eb 14                        	jmp	20 <getuint+0x4d>
  102937: 8b 45 08                     	movl	8(%ebp), %eax
  10293a: 8b 00                        	movl	(%eax), %eax
  10293c: 8d 48 04                     	leal	4(%eax), %ecx
  10293f: 8b 55 08                     	movl	8(%ebp), %edx
  102942: 89 0a                        	movl	%ecx, (%edx)
  102944: 8b 00                        	movl	(%eax), %eax
  102946: ba 00 00 00 00               	movl	$0, %edx
  10294b: 5d                           	popl	%ebp
  10294c: c3                           	retl

0010294d getint:
  10294d: 55                           	pushl	%ebp
  10294e: 89 e5                        	movl	%esp, %ebp
  102950: 83 7d 0c 01                  	cmpl	$1, 12(%ebp)
  102954: 7e 14                        	jle	20 <getint+0x1d>
  102956: 8b 45 08                     	movl	8(%ebp), %eax
  102959: 8b 00                        	movl	(%eax), %eax
  10295b: 8d 48 08                     	leal	8(%eax), %ecx
  10295e: 8b 55 08                     	movl	8(%ebp), %edx
  102961: 89 0a                        	movl	%ecx, (%edx)
  102963: 8b 50 04                     	movl	4(%eax), %edx
  102966: 8b 00                        	movl	(%eax), %eax
  102968: eb 28                        	jmp	40 <getint+0x45>
  10296a: 83 7d 0c 00                  	cmpl	$0, 12(%ebp)
  10296e: 74 12                        	je	18 <getint+0x35>
  102970: 8b 45 08                     	movl	8(%ebp), %eax
  102973: 8b 00                        	movl	(%eax), %eax
  102975: 8d 48 04                     	leal	4(%eax), %ecx
  102978: 8b 55 08                     	movl	8(%ebp), %edx
  10297b: 89 0a                        	movl	%ecx, (%edx)
  10297d: 8b 00                        	movl	(%eax), %eax
  10297f: 99                           	cltd
  102980: eb 10                        	jmp	16 <getint+0x45>
  102982: 8b 45 08                     	movl	8(%ebp), %eax
  102985: 8b 00                        	movl	(%eax), %eax
  102987: 8d 48 04                     	leal	4(%eax), %ecx
  10298a: 8b 55 08                     	movl	8(%ebp), %edx
  10298d: 89 0a                        	movl	%ecx, (%edx)
  10298f: 8b 00                        	movl	(%eax), %eax
  102991: 99                           	cltd
  102992: 5d                           	popl	%ebp
  102993: c3                           	retl

00102994 printfmt:
  102994: 55                           	pushl	%ebp
  102995: 89 e5                        	movl	%esp, %ebp
  102997: 83 ec 28                     	subl	$40, %esp
  10299a: 8d 45 14                     	leal	20(%ebp), %eax
  10299d: 89 45 f4                     	movl	%eax, -12(%ebp)
  1029a0: 8b 45 f4                     	movl	-12(%ebp), %eax
  1029a3: 89 44 24 0c                  	movl	%eax, 12(%esp)
  1029a7: 8b 45 10                     	movl	16(%ebp), %eax
  1029aa: 89 44 24 08                  	movl	%eax, 8(%esp)
  1029ae: 8b 45 0c                     	movl	12(%ebp), %eax
  1029b1: 89 44 24 04                  	movl	%eax, 4(%esp)
  1029b5: 8b 45 08                     	movl	8(%ebp), %eax
  1029b8: 89 04 24                     	movl	%eax, (%esp)
  1029bb: e8 05 00 00 00               	calll	5 <vprintfmt>
  1029c0: 90                           	nop
  1029c1: 89 ec                        	movl	%ebp, %esp
  1029c3: 5d                           	popl	%ebp
  1029c4: c3                           	retl

001029c5 vprintfmt:
  1029c5: 55                           	pushl	%ebp
  1029c6: 89 e5                        	movl	%esp, %ebp
  1029c8: 56                           	pushl	%esi
  1029c9: 53                           	pushl	%ebx
  1029ca: 83 ec 40                     	subl	$64, %esp
  1029cd: eb 17                        	jmp	23 <vprintfmt+0x21>
  1029cf: 85 db                        	testl	%ebx, %ebx
  1029d1: 0f 84 bf 03 00 00            	je	959 <vprintfmt+0x3d1>
  1029d7: 8b 45 0c                     	movl	12(%ebp), %eax
  1029da: 89 44 24 04                  	movl	%eax, 4(%esp)
  1029de: 89 1c 24                     	movl	%ebx, (%esp)
  1029e1: 8b 45 08                     	movl	8(%ebp), %eax
  1029e4: ff d0                        	calll	*%eax
  1029e6: 8b 45 10                     	movl	16(%ebp), %eax
  1029e9: 8d 50 01                     	leal	1(%eax), %edx
  1029ec: 89 55 10                     	movl	%edx, 16(%ebp)
  1029ef: 0f b6 00                     	movzbl	(%eax), %eax
  1029f2: 0f b6 d8                     	movzbl	%al, %ebx
  1029f5: 83 fb 25                     	cmpl	$37, %ebx
  1029f8: 75 d5                        	jne	-43 <vprintfmt+0xa>
  1029fa: c6 45 db 20                  	movb	$32, -37(%ebp)
  1029fe: c7 45 e4 ff ff ff ff         	movl	$4294967295, -28(%ebp)
  102a05: 8b 45 e4                     	movl	-28(%ebp), %eax
  102a08: 89 45 e8                     	movl	%eax, -24(%ebp)
  102a0b: c7 45 dc 00 00 00 00         	movl	$0, -36(%ebp)
  102a12: 8b 45 dc                     	movl	-36(%ebp), %eax
  102a15: 89 45 e0                     	movl	%eax, -32(%ebp)
  102a18: 8b 45 10                     	movl	16(%ebp), %eax
  102a1b: 8d 50 01                     	leal	1(%eax), %edx
  102a1e: 89 55 10                     	movl	%edx, 16(%ebp)
  102a21: 0f b6 00                     	movzbl	(%eax), %eax
  102a24: 0f b6 d8                     	movzbl	%al, %ebx
  102a27: 8d 43 dd                     	leal	-35(%ebx), %eax
  102a2a: 83 f8 55                     	cmpl	$85, %eax
  102a2d: 0f 87 37 03 00 00            	ja	823 <vprintfmt+0x3a5>
  102a33: 8b 04 85 14 3b 10 00         	movl	1063700(,%eax,4), %eax
  102a3a: ff e0                        	jmpl	*%eax
  102a3c: c6 45 db 2d                  	movb	$45, -37(%ebp)
  102a40: eb d6                        	jmp	-42 <vprintfmt+0x53>
  102a42: c6 45 db 30                  	movb	$48, -37(%ebp)
  102a46: eb d0                        	jmp	-48 <vprintfmt+0x53>
  102a48: c7 45 e4 00 00 00 00         	movl	$0, -28(%ebp)
  102a4f: 8b 55 e4                     	movl	-28(%ebp), %edx
  102a52: 89 d0                        	movl	%edx, %eax
  102a54: c1 e0 02                     	shll	$2, %eax
  102a57: 01 d0                        	addl	%edx, %eax
  102a59: 01 c0                        	addl	%eax, %eax
  102a5b: 01 d8                        	addl	%ebx, %eax
  102a5d: 83 e8 30                     	subl	$48, %eax
  102a60: 89 45 e4                     	movl	%eax, -28(%ebp)
  102a63: 8b 45 10                     	movl	16(%ebp), %eax
  102a66: 0f b6 00                     	movzbl	(%eax), %eax
  102a69: 0f be d8                     	movsbl	%al, %ebx
  102a6c: 83 fb 2f                     	cmpl	$47, %ebx
  102a6f: 7e 38                        	jle	56 <vprintfmt+0xe4>
  102a71: 83 fb 39                     	cmpl	$57, %ebx
  102a74: 7f 33                        	jg	51 <vprintfmt+0xe4>
  102a76: ff 45 10                     	incl	16(%ebp)
  102a79: eb d4                        	jmp	-44 <vprintfmt+0x8a>
  102a7b: 8b 45 14                     	movl	20(%ebp), %eax
  102a7e: 8d 50 04                     	leal	4(%eax), %edx
  102a81: 89 55 14                     	movl	%edx, 20(%ebp)
  102a84: 8b 00                        	movl	(%eax), %eax
  102a86: 89 45 e4                     	movl	%eax, -28(%ebp)
  102a89: eb 1f                        	jmp	31 <vprintfmt+0xe5>
  102a8b: 83 7d e8 00                  	cmpl	$0, -24(%ebp)
  102a8f: 79 87                        	jns	-121 <vprintfmt+0x53>
  102a91: c7 45 e8 00 00 00 00         	movl	$0, -24(%ebp)
  102a98: e9 7b ff ff ff               	jmp	-133 <vprintfmt+0x53>
  102a9d: c7 45 dc 01 00 00 00         	movl	$1, -36(%ebp)
  102aa4: e9 6f ff ff ff               	jmp	-145 <vprintfmt+0x53>
  102aa9: 90                           	nop
  102aaa: 83 7d e8 00                  	cmpl	$0, -24(%ebp)
  102aae: 0f 89 64 ff ff ff            	jns	-156 <vprintfmt+0x53>
  102ab4: 8b 45 e4                     	movl	-28(%ebp), %eax
  102ab7: 89 45 e8                     	movl	%eax, -24(%ebp)
  102aba: c7 45 e4 ff ff ff ff         	movl	$4294967295, -28(%ebp)
  102ac1: e9 52 ff ff ff               	jmp	-174 <vprintfmt+0x53>
  102ac6: ff 45 e0                     	incl	-32(%ebp)
  102ac9: e9 4a ff ff ff               	jmp	-182 <vprintfmt+0x53>
  102ace: 8b 45 14                     	movl	20(%ebp), %eax
  102ad1: 8d 50 04                     	leal	4(%eax), %edx
  102ad4: 89 55 14                     	movl	%edx, 20(%ebp)
  102ad7: 8b 00                        	movl	(%eax), %eax
  102ad9: 8b 55 0c                     	movl	12(%ebp), %edx
  102adc: 89 54 24 04                  	movl	%edx, 4(%esp)
  102ae0: 89 04 24                     	movl	%eax, (%esp)
  102ae3: 8b 45 08                     	movl	8(%ebp), %eax
  102ae6: ff d0                        	calll	*%eax
  102ae8: e9 a4 02 00 00               	jmp	676 <vprintfmt+0x3cc>
  102aed: 8b 45 14                     	movl	20(%ebp), %eax
  102af0: 8d 50 04                     	leal	4(%eax), %edx
  102af3: 89 55 14                     	movl	%edx, 20(%ebp)
  102af6: 8b 18                        	movl	(%eax), %ebx
  102af8: 85 db                        	testl	%ebx, %ebx
  102afa: 79 02                        	jns	2 <vprintfmt+0x139>
  102afc: f7 db                        	negl	%ebx
  102afe: 83 fb 06                     	cmpl	$6, %ebx
  102b01: 7f 0b                        	jg	11 <vprintfmt+0x149>
  102b03: 8b 34 9d d4 3a 10 00         	movl	1063636(,%ebx,4), %esi
  102b0a: 85 f6                        	testl	%esi, %esi
  102b0c: 75 23                        	jne	35 <vprintfmt+0x16c>
  102b0e: 89 5c 24 0c                  	movl	%ebx, 12(%esp)
  102b12: c7 44 24 08 01 3b 10 00      	movl	$1063681, 8(%esp)
  102b1a: 8b 45 0c                     	movl	12(%ebp), %eax
  102b1d: 89 44 24 04                  	movl	%eax, 4(%esp)
  102b21: 8b 45 08                     	movl	8(%ebp), %eax
  102b24: 89 04 24                     	movl	%eax, (%esp)
  102b27: e8 68 fe ff ff               	calll	-408 <printfmt>
  102b2c: e9 60 02 00 00               	jmp	608 <vprintfmt+0x3cc>
  102b31: 89 74 24 0c                  	movl	%esi, 12(%esp)
  102b35: c7 44 24 08 0a 3b 10 00      	movl	$1063690, 8(%esp)
  102b3d: 8b 45 0c                     	movl	12(%ebp), %eax
  102b40: 89 44 24 04                  	movl	%eax, 4(%esp)
  102b44: 8b 45 08                     	movl	8(%ebp), %eax
  102b47: 89 04 24                     	movl	%eax, (%esp)
  102b4a: e8 45 fe ff ff               	calll	-443 <printfmt>
  102b4f: e9 3d 02 00 00               	jmp	573 <vprintfmt+0x3cc>
  102b54: 8b 45 14                     	movl	20(%ebp), %eax
  102b57: 8d 50 04                     	leal	4(%eax), %edx
  102b5a: 89 55 14                     	movl	%edx, 20(%ebp)
  102b5d: 8b 30                        	movl	(%eax), %esi
  102b5f: 85 f6                        	testl	%esi, %esi
  102b61: 75 05                        	jne	5 <vprintfmt+0x1a3>
  102b63: be 0d 3b 10 00               	movl	$1063693, %esi
  102b68: 83 7d e8 00                  	cmpl	$0, -24(%ebp)
  102b6c: 7e 76                        	jle	118 <vprintfmt+0x21f>
  102b6e: 80 7d db 2d                  	cmpb	$45, -37(%ebp)
  102b72: 74 70                        	je	112 <vprintfmt+0x21f>
  102b74: 8b 45 e4                     	movl	-28(%ebp), %eax
  102b77: 89 44 24 04                  	movl	%eax, 4(%esp)
  102b7b: 89 34 24                     	movl	%esi, (%esp)
  102b7e: e8 16 03 00 00               	calll	790 <strnlen>
  102b83: 89 c2                        	movl	%eax, %edx
  102b85: 8b 45 e8                     	movl	-24(%ebp), %eax
  102b88: 29 d0                        	subl	%edx, %eax
  102b8a: 89 45 e8                     	movl	%eax, -24(%ebp)
  102b8d: eb 16                        	jmp	22 <vprintfmt+0x1e0>
  102b8f: 0f be 45 db                  	movsbl	-37(%ebp), %eax
  102b93: 8b 55 0c                     	movl	12(%ebp), %edx
  102b96: 89 54 24 04                  	movl	%edx, 4(%esp)
  102b9a: 89 04 24                     	movl	%eax, (%esp)
  102b9d: 8b 45 08                     	movl	8(%ebp), %eax
  102ba0: ff d0                        	calll	*%eax
  102ba2: ff 4d e8                     	decl	-24(%ebp)
  102ba5: 83 7d e8 00                  	cmpl	$0, -24(%ebp)
  102ba9: 7f e4                        	jg	-28 <vprintfmt+0x1ca>
  102bab: eb 37                        	jmp	55 <vprintfmt+0x21f>
  102bad: 83 7d dc 00                  	cmpl	$0, -36(%ebp)
  102bb1: 74 1f                        	je	31 <vprintfmt+0x20d>
  102bb3: 83 fb 1f                     	cmpl	$31, %ebx
  102bb6: 7e 05                        	jle	5 <vprintfmt+0x1f8>
  102bb8: 83 fb 7e                     	cmpl	$126, %ebx
  102bbb: 7e 15                        	jle	21 <vprintfmt+0x20d>
  102bbd: 8b 45 0c                     	movl	12(%ebp), %eax
  102bc0: 89 44 24 04                  	movl	%eax, 4(%esp)
  102bc4: c7 04 24 3f 00 00 00         	movl	$63, (%esp)
  102bcb: 8b 45 08                     	movl	8(%ebp), %eax
  102bce: ff d0                        	calll	*%eax
  102bd0: eb 0f                        	jmp	15 <vprintfmt+0x21c>
  102bd2: 8b 45 0c                     	movl	12(%ebp), %eax
  102bd5: 89 44 24 04                  	movl	%eax, 4(%esp)
  102bd9: 89 1c 24                     	movl	%ebx, (%esp)
  102bdc: 8b 45 08                     	movl	8(%ebp), %eax
  102bdf: ff d0                        	calll	*%eax
  102be1: ff 4d e8                     	decl	-24(%ebp)
  102be4: 89 f0                        	movl	%esi, %eax
  102be6: 8d 70 01                     	leal	1(%eax), %esi
  102be9: 0f b6 00                     	movzbl	(%eax), %eax
  102bec: 0f be d8                     	movsbl	%al, %ebx
  102bef: 85 db                        	testl	%ebx, %ebx
  102bf1: 74 27                        	je	39 <vprintfmt+0x255>
  102bf3: 83 7d e4 00                  	cmpl	$0, -28(%ebp)
  102bf7: 78 b4                        	js	-76 <vprintfmt+0x1e8>
  102bf9: ff 4d e4                     	decl	-28(%ebp)
  102bfc: 83 7d e4 00                  	cmpl	$0, -28(%ebp)
  102c00: 79 ab                        	jns	-85 <vprintfmt+0x1e8>
  102c02: eb 16                        	jmp	22 <vprintfmt+0x255>
  102c04: 8b 45 0c                     	movl	12(%ebp), %eax
  102c07: 89 44 24 04                  	movl	%eax, 4(%esp)
  102c0b: c7 04 24 20 00 00 00         	movl	$32, (%esp)
  102c12: 8b 45 08                     	movl	8(%ebp), %eax
  102c15: ff d0                        	calll	*%eax
  102c17: ff 4d e8                     	decl	-24(%ebp)
  102c1a: 83 7d e8 00                  	cmpl	$0, -24(%ebp)
  102c1e: 7f e4                        	jg	-28 <vprintfmt+0x23f>
  102c20: e9 6c 01 00 00               	jmp	364 <vprintfmt+0x3cc>
  102c25: 8b 45 e0                     	movl	-32(%ebp), %eax
  102c28: 89 44 24 04                  	movl	%eax, 4(%esp)
  102c2c: 8d 45 14                     	leal	20(%ebp), %eax
  102c2f: 89 04 24                     	movl	%eax, (%esp)
  102c32: e8 16 fd ff ff               	calll	-746 <getint>
  102c37: 89 45 f0                     	movl	%eax, -16(%ebp)
  102c3a: 89 55 f4                     	movl	%edx, -12(%ebp)
  102c3d: 8b 45 f0                     	movl	-16(%ebp), %eax
  102c40: 8b 55 f4                     	movl	-12(%ebp), %edx
  102c43: 85 d2                        	testl	%edx, %edx
  102c45: 79 26                        	jns	38 <vprintfmt+0x2a8>
  102c47: 8b 45 0c                     	movl	12(%ebp), %eax
  102c4a: 89 44 24 04                  	movl	%eax, 4(%esp)
  102c4e: c7 04 24 2d 00 00 00         	movl	$45, (%esp)
  102c55: 8b 45 08                     	movl	8(%ebp), %eax
  102c58: ff d0                        	calll	*%eax
  102c5a: 8b 45 f0                     	movl	-16(%ebp), %eax
  102c5d: 8b 55 f4                     	movl	-12(%ebp), %edx
  102c60: f7 d8                        	negl	%eax
  102c62: 83 d2 00                     	adcl	$0, %edx
  102c65: f7 da                        	negl	%edx
  102c67: 89 45 f0                     	movl	%eax, -16(%ebp)
  102c6a: 89 55 f4                     	movl	%edx, -12(%ebp)
  102c6d: c7 45 ec 0a 00 00 00         	movl	$10, -20(%ebp)
  102c74: e9 a8 00 00 00               	jmp	168 <vprintfmt+0x35c>
  102c79: 8b 45 e0                     	movl	-32(%ebp), %eax
  102c7c: 89 44 24 04                  	movl	%eax, 4(%esp)
  102c80: 8d 45 14                     	leal	20(%ebp), %eax
  102c83: 89 04 24                     	movl	%eax, (%esp)
  102c86: e8 73 fc ff ff               	calll	-909 <getuint>
  102c8b: 89 45 f0                     	movl	%eax, -16(%ebp)
  102c8e: 89 55 f4                     	movl	%edx, -12(%ebp)
  102c91: c7 45 ec 0a 00 00 00         	movl	$10, -20(%ebp)
  102c98: e9 84 00 00 00               	jmp	132 <vprintfmt+0x35c>
  102c9d: 8b 45 e0                     	movl	-32(%ebp), %eax
  102ca0: 89 44 24 04                  	movl	%eax, 4(%esp)
  102ca4: 8d 45 14                     	leal	20(%ebp), %eax
  102ca7: 89 04 24                     	movl	%eax, (%esp)
  102caa: e8 4f fc ff ff               	calll	-945 <getuint>
  102caf: 89 45 f0                     	movl	%eax, -16(%ebp)
  102cb2: 89 55 f4                     	movl	%edx, -12(%ebp)
  102cb5: c7 45 ec 08 00 00 00         	movl	$8, -20(%ebp)
  102cbc: eb 63                        	jmp	99 <vprintfmt+0x35c>
  102cbe: 8b 45 0c                     	movl	12(%ebp), %eax
  102cc1: 89 44 24 04                  	movl	%eax, 4(%esp)
  102cc5: c7 04 24 30 00 00 00         	movl	$48, (%esp)
  102ccc: 8b 45 08                     	movl	8(%ebp), %eax
  102ccf: ff d0                        	calll	*%eax
  102cd1: 8b 45 0c                     	movl	12(%ebp), %eax
  102cd4: 89 44 24 04                  	movl	%eax, 4(%esp)
  102cd8: c7 04 24 78 00 00 00         	movl	$120, (%esp)
  102cdf: 8b 45 08                     	movl	8(%ebp), %eax
  102ce2: ff d0                        	calll	*%eax
  102ce4: 8b 45 14                     	movl	20(%ebp), %eax
  102ce7: 8d 50 04                     	leal	4(%eax), %edx
  102cea: 89 55 14                     	movl	%edx, 20(%ebp)
  102ced: 8b 00                        	movl	(%eax), %eax
  102cef: 89 45 f0                     	movl	%eax, -16(%ebp)
  102cf2: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  102cf9: c7 45 ec 10 00 00 00         	movl	$16, -20(%ebp)
  102d00: eb 1f                        	jmp	31 <vprintfmt+0x35c>
  102d02: 8b 45 e0                     	movl	-32(%ebp), %eax
  102d05: 89 44 24 04                  	movl	%eax, 4(%esp)
  102d09: 8d 45 14                     	leal	20(%ebp), %eax
  102d0c: 89 04 24                     	movl	%eax, (%esp)
  102d0f: e8 ea fb ff ff               	calll	-1046 <getuint>
  102d14: 89 45 f0                     	movl	%eax, -16(%ebp)
  102d17: 89 55 f4                     	movl	%edx, -12(%ebp)
  102d1a: c7 45 ec 10 00 00 00         	movl	$16, -20(%ebp)
  102d21: 0f be 55 db                  	movsbl	-37(%ebp), %edx
  102d25: 8b 45 ec                     	movl	-20(%ebp), %eax
  102d28: 89 54 24 18                  	movl	%edx, 24(%esp)
  102d2c: 8b 55 e8                     	movl	-24(%ebp), %edx
  102d2f: 89 54 24 14                  	movl	%edx, 20(%esp)
  102d33: 89 44 24 10                  	movl	%eax, 16(%esp)
  102d37: 8b 45 f0                     	movl	-16(%ebp), %eax
  102d3a: 8b 55 f4                     	movl	-12(%ebp), %edx
  102d3d: 89 44 24 08                  	movl	%eax, 8(%esp)
  102d41: 89 54 24 0c                  	movl	%edx, 12(%esp)
  102d45: 8b 45 0c                     	movl	12(%ebp), %eax
  102d48: 89 44 24 04                  	movl	%eax, 4(%esp)
  102d4c: 8b 45 08                     	movl	8(%ebp), %eax
  102d4f: 89 04 24                     	movl	%eax, (%esp)
  102d52: e8 a5 fa ff ff               	calll	-1371 <printnum>
  102d57: eb 38                        	jmp	56 <vprintfmt+0x3cc>
  102d59: 8b 45 0c                     	movl	12(%ebp), %eax
  102d5c: 89 44 24 04                  	movl	%eax, 4(%esp)
  102d60: 89 1c 24                     	movl	%ebx, (%esp)
  102d63: 8b 45 08                     	movl	8(%ebp), %eax
  102d66: ff d0                        	calll	*%eax
  102d68: eb 27                        	jmp	39 <vprintfmt+0x3cc>
  102d6a: 8b 45 0c                     	movl	12(%ebp), %eax
  102d6d: 89 44 24 04                  	movl	%eax, 4(%esp)
  102d71: c7 04 24 25 00 00 00         	movl	$37, (%esp)
  102d78: 8b 45 08                     	movl	8(%ebp), %eax
  102d7b: ff d0                        	calll	*%eax
  102d7d: ff 4d 10                     	decl	16(%ebp)
  102d80: eb 03                        	jmp	3 <vprintfmt+0x3c0>
  102d82: ff 4d 10                     	decl	16(%ebp)
  102d85: 8b 45 10                     	movl	16(%ebp), %eax
  102d88: 48                           	decl	%eax
  102d89: 0f b6 00                     	movzbl	(%eax), %eax
  102d8c: 3c 25                        	cmpb	$37, %al
  102d8e: 75 f2                        	jne	-14 <vprintfmt+0x3bd>
  102d90: 90                           	nop
  102d91: e9 37 fc ff ff               	jmp	-969 <vprintfmt+0x8>
  102d96: 90                           	nop
  102d97: 83 c4 40                     	addl	$64, %esp
  102d9a: 5b                           	popl	%ebx
  102d9b: 5e                           	popl	%esi
  102d9c: 5d                           	popl	%ebp
  102d9d: c3                           	retl

00102d9e sprintputch:
  102d9e: 55                           	pushl	%ebp
  102d9f: 89 e5                        	movl	%esp, %ebp
  102da1: 8b 45 0c                     	movl	12(%ebp), %eax
  102da4: 8b 40 08                     	movl	8(%eax), %eax
  102da7: 8d 50 01                     	leal	1(%eax), %edx
  102daa: 8b 45 0c                     	movl	12(%ebp), %eax
  102dad: 89 50 08                     	movl	%edx, 8(%eax)
  102db0: 8b 45 0c                     	movl	12(%ebp), %eax
  102db3: 8b 10                        	movl	(%eax), %edx
  102db5: 8b 45 0c                     	movl	12(%ebp), %eax
  102db8: 8b 40 04                     	movl	4(%eax), %eax
  102dbb: 39 c2                        	cmpl	%eax, %edx
  102dbd: 73 12                        	jae	18 <sprintputch+0x33>
  102dbf: 8b 45 0c                     	movl	12(%ebp), %eax
  102dc2: 8b 00                        	movl	(%eax), %eax
  102dc4: 8d 48 01                     	leal	1(%eax), %ecx
  102dc7: 8b 55 0c                     	movl	12(%ebp), %edx
  102dca: 89 0a                        	movl	%ecx, (%edx)
  102dcc: 8b 55 08                     	movl	8(%ebp), %edx
  102dcf: 88 10                        	movb	%dl, (%eax)
  102dd1: 90                           	nop
  102dd2: 5d                           	popl	%ebp
  102dd3: c3                           	retl

00102dd4 snprintf:
  102dd4: 55                           	pushl	%ebp
  102dd5: 89 e5                        	movl	%esp, %ebp
  102dd7: 83 ec 28                     	subl	$40, %esp
  102dda: 8d 45 14                     	leal	20(%ebp), %eax
  102ddd: 89 45 f0                     	movl	%eax, -16(%ebp)
  102de0: 8b 45 f0                     	movl	-16(%ebp), %eax
  102de3: 89 44 24 0c                  	movl	%eax, 12(%esp)
  102de7: 8b 45 10                     	movl	16(%ebp), %eax
  102dea: 89 44 24 08                  	movl	%eax, 8(%esp)
  102dee: 8b 45 0c                     	movl	12(%ebp), %eax
  102df1: 89 44 24 04                  	movl	%eax, 4(%esp)
  102df5: 8b 45 08                     	movl	8(%ebp), %eax
  102df8: 89 04 24                     	movl	%eax, (%esp)
  102dfb: e8 0a 00 00 00               	calll	10 <vsnprintf>
  102e00: 89 45 f4                     	movl	%eax, -12(%ebp)
  102e03: 8b 45 f4                     	movl	-12(%ebp), %eax
  102e06: 89 ec                        	movl	%ebp, %esp
  102e08: 5d                           	popl	%ebp
  102e09: c3                           	retl

00102e0a vsnprintf:
  102e0a: 55                           	pushl	%ebp
  102e0b: 89 e5                        	movl	%esp, %ebp
  102e0d: 83 ec 28                     	subl	$40, %esp
  102e10: 8b 45 08                     	movl	8(%ebp), %eax
  102e13: 89 45 ec                     	movl	%eax, -20(%ebp)
  102e16: 8b 45 0c                     	movl	12(%ebp), %eax
  102e19: 8d 50 ff                     	leal	-1(%eax), %edx
  102e1c: 8b 45 08                     	movl	8(%ebp), %eax
  102e1f: 01 d0                        	addl	%edx, %eax
  102e21: 89 45 f0                     	movl	%eax, -16(%ebp)
  102e24: c7 45 f4 00 00 00 00         	movl	$0, -12(%ebp)
  102e2b: 83 7d 08 00                  	cmpl	$0, 8(%ebp)
  102e2f: 74 0a                        	je	10 <vsnprintf+0x31>
  102e31: 8b 55 ec                     	movl	-20(%ebp), %edx
  102e34: 8b 45 f0                     	movl	-16(%ebp), %eax
  102e37: 39 c2                        	cmpl	%eax, %edx
  102e39: 76 07                        	jbe	7 <vsnprintf+0x38>
  102e3b: b8 fd ff ff ff               	movl	$4294967293, %eax
  102e40: eb 2a                        	jmp	42 <vsnprintf+0x62>
  102e42: 8b 45 14                     	movl	20(%ebp), %eax
  102e45: 89 44 24 0c                  	movl	%eax, 12(%esp)
  102e49: 8b 45 10                     	movl	16(%ebp), %eax
  102e4c: 89 44 24 08                  	movl	%eax, 8(%esp)
  102e50: 8d 45 ec                     	leal	-20(%ebp), %eax
  102e53: 89 44 24 04                  	movl	%eax, 4(%esp)
  102e57: c7 04 24 9e 2d 10 00         	movl	$1060254, (%esp)
  102e5e: e8 62 fb ff ff               	calll	-1182 <vprintfmt>
  102e63: 8b 45 ec                     	movl	-20(%ebp), %eax
  102e66: c6 00 00                     	movb	$0, (%eax)
  102e69: 8b 45 f4                     	movl	-12(%ebp), %eax
  102e6c: 89 ec                        	movl	%ebp, %esp
  102e6e: 5d                           	popl	%ebp
  102e6f: c3                           	retl

00102e70 strlen:
  102e70: 55                           	pushl	%ebp
  102e71: 89 e5                        	movl	%esp, %ebp
  102e73: 83 ec 10                     	subl	$16, %esp
  102e76: c7 45 fc 00 00 00 00         	movl	$0, -4(%ebp)
  102e7d: eb 03                        	jmp	3 <strlen+0x12>
  102e7f: ff 45 fc                     	incl	-4(%ebp)
  102e82: 8b 45 08                     	movl	8(%ebp), %eax
  102e85: 8d 50 01                     	leal	1(%eax), %edx
  102e88: 89 55 08                     	movl	%edx, 8(%ebp)
  102e8b: 0f b6 00                     	movzbl	(%eax), %eax
  102e8e: 84 c0                        	testb	%al, %al
  102e90: 75 ed                        	jne	-19 <strlen+0xf>
  102e92: 8b 45 fc                     	movl	-4(%ebp), %eax
  102e95: 89 ec                        	movl	%ebp, %esp
  102e97: 5d                           	popl	%ebp
  102e98: c3                           	retl

00102e99 strnlen:
  102e99: 55                           	pushl	%ebp
  102e9a: 89 e5                        	movl	%esp, %ebp
  102e9c: 83 ec 10                     	subl	$16, %esp
  102e9f: c7 45 fc 00 00 00 00         	movl	$0, -4(%ebp)
  102ea6: eb 03                        	jmp	3 <strnlen+0x12>
  102ea8: ff 45 fc                     	incl	-4(%ebp)
  102eab: 8b 45 fc                     	movl	-4(%ebp), %eax
  102eae: 3b 45 0c                     	cmpl	12(%ebp), %eax
  102eb1: 73 10                        	jae	16 <strnlen+0x2a>
  102eb3: 8b 45 08                     	movl	8(%ebp), %eax
  102eb6: 8d 50 01                     	leal	1(%eax), %edx
  102eb9: 89 55 08                     	movl	%edx, 8(%ebp)
  102ebc: 0f b6 00                     	movzbl	(%eax), %eax
  102ebf: 84 c0                        	testb	%al, %al
  102ec1: 75 e5                        	jne	-27 <strnlen+0xf>
  102ec3: 8b 45 fc                     	movl	-4(%ebp), %eax
  102ec6: 89 ec                        	movl	%ebp, %esp
  102ec8: 5d                           	popl	%ebp
  102ec9: c3                           	retl

00102eca strcpy:
  102eca: 55                           	pushl	%ebp
  102ecb: 89 e5                        	movl	%esp, %ebp
  102ecd: 57                           	pushl	%edi
  102ece: 56                           	pushl	%esi
  102ecf: 83 ec 20                     	subl	$32, %esp
  102ed2: 8b 45 08                     	movl	8(%ebp), %eax
  102ed5: 89 45 f4                     	movl	%eax, -12(%ebp)
  102ed8: 8b 45 0c                     	movl	12(%ebp), %eax
  102edb: 89 45 f0                     	movl	%eax, -16(%ebp)
  102ede: 8b 55 f0                     	movl	-16(%ebp), %edx
  102ee1: 8b 45 f4                     	movl	-12(%ebp), %eax
  102ee4: 89 d1                        	movl	%edx, %ecx
  102ee6: 89 c2                        	movl	%eax, %edx
  102ee8: 89 ce                        	movl	%ecx, %esi
  102eea: 89 d7                        	movl	%edx, %edi
  102eec: ac                           	lodsb	(%esi), %al
  102eed: aa                           	stosb	%al, %es:(%edi)
  102eee: 84 c0                        	testb	%al, %al
  102ef0: 75 fa                        	jne	-6 <strcpy+0x22>
  102ef2: 89 fa                        	movl	%edi, %edx
  102ef4: 89 f1                        	movl	%esi, %ecx
  102ef6: 89 4d ec                     	movl	%ecx, -20(%ebp)
  102ef9: 89 55 e8                     	movl	%edx, -24(%ebp)
  102efc: 89 45 e4                     	movl	%eax, -28(%ebp)
  102eff: 8b 45 f4                     	movl	-12(%ebp), %eax
  102f02: 83 c4 20                     	addl	$32, %esp
  102f05: 5e                           	popl	%esi
  102f06: 5f                           	popl	%edi
  102f07: 5d                           	popl	%ebp
  102f08: c3                           	retl

00102f09 strncpy:
  102f09: 55                           	pushl	%ebp
  102f0a: 89 e5                        	movl	%esp, %ebp
  102f0c: 83 ec 10                     	subl	$16, %esp
  102f0f: 8b 45 08                     	movl	8(%ebp), %eax
  102f12: 89 45 fc                     	movl	%eax, -4(%ebp)
  102f15: eb 1e                        	jmp	30 <strncpy+0x2c>
  102f17: 8b 45 0c                     	movl	12(%ebp), %eax
  102f1a: 0f b6 10                     	movzbl	(%eax), %edx
  102f1d: 8b 45 fc                     	movl	-4(%ebp), %eax
  102f20: 88 10                        	movb	%dl, (%eax)
  102f22: 8b 45 fc                     	movl	-4(%ebp), %eax
  102f25: 0f b6 00                     	movzbl	(%eax), %eax
  102f28: 84 c0                        	testb	%al, %al
  102f2a: 74 03                        	je	3 <strncpy+0x26>
  102f2c: ff 45 0c                     	incl	12(%ebp)
  102f2f: ff 45 fc                     	incl	-4(%ebp)
  102f32: ff 4d 10                     	decl	16(%ebp)
  102f35: 83 7d 10 00                  	cmpl	$0, 16(%ebp)
  102f39: 75 dc                        	jne	-36 <strncpy+0xe>
  102f3b: 8b 45 08                     	movl	8(%ebp), %eax
  102f3e: 89 ec                        	movl	%ebp, %esp
  102f40: 5d                           	popl	%ebp
  102f41: c3                           	retl

00102f42 strcmp:
  102f42: 55                           	pushl	%ebp
  102f43: 89 e5                        	movl	%esp, %ebp
  102f45: 57                           	pushl	%edi
  102f46: 56                           	pushl	%esi
  102f47: 83 ec 20                     	subl	$32, %esp
  102f4a: 8b 45 08                     	movl	8(%ebp), %eax
  102f4d: 89 45 f4                     	movl	%eax, -12(%ebp)
  102f50: 8b 45 0c                     	movl	12(%ebp), %eax
  102f53: 89 45 f0                     	movl	%eax, -16(%ebp)
  102f56: 8b 55 f4                     	movl	-12(%ebp), %edx
  102f59: 8b 45 f0                     	movl	-16(%ebp), %eax
  102f5c: 89 d1                        	movl	%edx, %ecx
  102f5e: 89 c2                        	movl	%eax, %edx
  102f60: 89 ce                        	movl	%ecx, %esi
  102f62: 89 d7                        	movl	%edx, %edi
  102f64: ac                           	lodsb	(%esi), %al
  102f65: ae                           	scasb	%es:(%edi), %al
  102f66: 75 08                        	jne	8 <strcmp+0x2e>
  102f68: 84 c0                        	testb	%al, %al
  102f6a: 75 f8                        	jne	-8 <strcmp+0x22>
  102f6c: 31 c0                        	xorl	%eax, %eax
  102f6e: eb 04                        	jmp	4 <strcmp+0x32>
  102f70: 19 c0                        	sbbl	%eax, %eax
  102f72: 0c 01                        	orb	$1, %al
  102f74: 89 fa                        	movl	%edi, %edx
  102f76: 89 f1                        	movl	%esi, %ecx
  102f78: 89 45 ec                     	movl	%eax, -20(%ebp)
  102f7b: 89 4d e8                     	movl	%ecx, -24(%ebp)
  102f7e: 89 55 e4                     	movl	%edx, -28(%ebp)
  102f81: 8b 45 ec                     	movl	-20(%ebp), %eax
  102f84: 83 c4 20                     	addl	$32, %esp
  102f87: 5e                           	popl	%esi
  102f88: 5f                           	popl	%edi
  102f89: 5d                           	popl	%ebp
  102f8a: c3                           	retl

00102f8b strncmp:
  102f8b: 55                           	pushl	%ebp
  102f8c: 89 e5                        	movl	%esp, %ebp
  102f8e: eb 09                        	jmp	9 <strncmp+0xe>
  102f90: ff 4d 10                     	decl	16(%ebp)
  102f93: ff 45 08                     	incl	8(%ebp)
  102f96: ff 45 0c                     	incl	12(%ebp)
  102f99: 83 7d 10 00                  	cmpl	$0, 16(%ebp)
  102f9d: 74 1a                        	je	26 <strncmp+0x2e>
  102f9f: 8b 45 08                     	movl	8(%ebp), %eax
  102fa2: 0f b6 00                     	movzbl	(%eax), %eax
  102fa5: 84 c0                        	testb	%al, %al
  102fa7: 74 10                        	je	16 <strncmp+0x2e>
  102fa9: 8b 45 08                     	movl	8(%ebp), %eax
  102fac: 0f b6 10                     	movzbl	(%eax), %edx
  102faf: 8b 45 0c                     	movl	12(%ebp), %eax
  102fb2: 0f b6 00                     	movzbl	(%eax), %eax
  102fb5: 38 c2                        	cmpb	%al, %dl
  102fb7: 74 d7                        	je	-41 <strncmp+0x5>
  102fb9: 83 7d 10 00                  	cmpl	$0, 16(%ebp)
  102fbd: 74 18                        	je	24 <strncmp+0x4c>
  102fbf: 8b 45 08                     	movl	8(%ebp), %eax
  102fc2: 0f b6 00                     	movzbl	(%eax), %eax
  102fc5: 0f b6 d0                     	movzbl	%al, %edx
  102fc8: 8b 45 0c                     	movl	12(%ebp), %eax
  102fcb: 0f b6 00                     	movzbl	(%eax), %eax
  102fce: 0f b6 c8                     	movzbl	%al, %ecx
  102fd1: 89 d0                        	movl	%edx, %eax
  102fd3: 29 c8                        	subl	%ecx, %eax
  102fd5: eb 05                        	jmp	5 <strncmp+0x51>
  102fd7: b8 00 00 00 00               	movl	$0, %eax
  102fdc: 5d                           	popl	%ebp
  102fdd: c3                           	retl

00102fde strchr:
  102fde: 55                           	pushl	%ebp
  102fdf: 89 e5                        	movl	%esp, %ebp
  102fe1: 83 ec 04                     	subl	$4, %esp
  102fe4: 8b 45 0c                     	movl	12(%ebp), %eax
  102fe7: 88 45 fc                     	movb	%al, -4(%ebp)
  102fea: eb 13                        	jmp	19 <strchr+0x21>
  102fec: 8b 45 08                     	movl	8(%ebp), %eax
  102fef: 0f b6 00                     	movzbl	(%eax), %eax
  102ff2: 38 45 fc                     	cmpb	%al, -4(%ebp)
  102ff5: 75 05                        	jne	5 <strchr+0x1e>
  102ff7: 8b 45 08                     	movl	8(%ebp), %eax
  102ffa: eb 12                        	jmp	18 <strchr+0x30>
  102ffc: ff 45 08                     	incl	8(%ebp)
  102fff: 8b 45 08                     	movl	8(%ebp), %eax
  103002: 0f b6 00                     	movzbl	(%eax), %eax
  103005: 84 c0                        	testb	%al, %al
  103007: 75 e3                        	jne	-29 <strchr+0xe>
  103009: b8 00 00 00 00               	movl	$0, %eax
  10300e: 89 ec                        	movl	%ebp, %esp
  103010: 5d                           	popl	%ebp
  103011: c3                           	retl

00103012 strfind:
  103012: 55                           	pushl	%ebp
  103013: 89 e5                        	movl	%esp, %ebp
  103015: 83 ec 04                     	subl	$4, %esp
  103018: 8b 45 0c                     	movl	12(%ebp), %eax
  10301b: 88 45 fc                     	movb	%al, -4(%ebp)
  10301e: eb 0e                        	jmp	14 <strfind+0x1c>
  103020: 8b 45 08                     	movl	8(%ebp), %eax
  103023: 0f b6 00                     	movzbl	(%eax), %eax
  103026: 38 45 fc                     	cmpb	%al, -4(%ebp)
  103029: 74 0f                        	je	15 <strfind+0x28>
  10302b: ff 45 08                     	incl	8(%ebp)
  10302e: 8b 45 08                     	movl	8(%ebp), %eax
  103031: 0f b6 00                     	movzbl	(%eax), %eax
  103034: 84 c0                        	testb	%al, %al
  103036: 75 e8                        	jne	-24 <strfind+0xe>
  103038: eb 01                        	jmp	1 <strfind+0x29>
  10303a: 90                           	nop
  10303b: 8b 45 08                     	movl	8(%ebp), %eax
  10303e: 89 ec                        	movl	%ebp, %esp
  103040: 5d                           	popl	%ebp
  103041: c3                           	retl

00103042 strtol:
  103042: 55                           	pushl	%ebp
  103043: 89 e5                        	movl	%esp, %ebp
  103045: 83 ec 10                     	subl	$16, %esp
  103048: c7 45 fc 00 00 00 00         	movl	$0, -4(%ebp)
  10304f: c7 45 f8 00 00 00 00         	movl	$0, -8(%ebp)
  103056: eb 03                        	jmp	3 <strtol+0x19>
  103058: ff 45 08                     	incl	8(%ebp)
  10305b: 8b 45 08                     	movl	8(%ebp), %eax
  10305e: 0f b6 00                     	movzbl	(%eax), %eax
  103061: 3c 20                        	cmpb	$32, %al
  103063: 74 f3                        	je	-13 <strtol+0x16>
  103065: 8b 45 08                     	movl	8(%ebp), %eax
  103068: 0f b6 00                     	movzbl	(%eax), %eax
  10306b: 3c 09                        	cmpb	$9, %al
  10306d: 74 e9                        	je	-23 <strtol+0x16>
  10306f: 8b 45 08                     	movl	8(%ebp), %eax
  103072: 0f b6 00                     	movzbl	(%eax), %eax
  103075: 3c 2b                        	cmpb	$43, %al
  103077: 75 05                        	jne	5 <strtol+0x3c>
  103079: ff 45 08                     	incl	8(%ebp)
  10307c: eb 14                        	jmp	20 <strtol+0x50>
  10307e: 8b 45 08                     	movl	8(%ebp), %eax
  103081: 0f b6 00                     	movzbl	(%eax), %eax
  103084: 3c 2d                        	cmpb	$45, %al
  103086: 75 0a                        	jne	10 <strtol+0x50>
  103088: ff 45 08                     	incl	8(%ebp)
  10308b: c7 45 fc 01 00 00 00         	movl	$1, -4(%ebp)
  103092: 83 7d 10 00                  	cmpl	$0, 16(%ebp)
  103096: 74 06                        	je	6 <strtol+0x5c>
  103098: 83 7d 10 10                  	cmpl	$16, 16(%ebp)
  10309c: 75 22                        	jne	34 <strtol+0x7e>
  10309e: 8b 45 08                     	movl	8(%ebp), %eax
  1030a1: 0f b6 00                     	movzbl	(%eax), %eax
  1030a4: 3c 30                        	cmpb	$48, %al
  1030a6: 75 18                        	jne	24 <strtol+0x7e>
  1030a8: 8b 45 08                     	movl	8(%ebp), %eax
  1030ab: 40                           	incl	%eax
  1030ac: 0f b6 00                     	movzbl	(%eax), %eax
  1030af: 3c 78                        	cmpb	$120, %al
  1030b1: 75 0d                        	jne	13 <strtol+0x7e>
  1030b3: 83 45 08 02                  	addl	$2, 8(%ebp)
  1030b7: c7 45 10 10 00 00 00         	movl	$16, 16(%ebp)
  1030be: eb 29                        	jmp	41 <strtol+0xa7>
  1030c0: 83 7d 10 00                  	cmpl	$0, 16(%ebp)
  1030c4: 75 16                        	jne	22 <strtol+0x9a>
  1030c6: 8b 45 08                     	movl	8(%ebp), %eax
  1030c9: 0f b6 00                     	movzbl	(%eax), %eax
  1030cc: 3c 30                        	cmpb	$48, %al
  1030ce: 75 0c                        	jne	12 <strtol+0x9a>
  1030d0: ff 45 08                     	incl	8(%ebp)
  1030d3: c7 45 10 08 00 00 00         	movl	$8, 16(%ebp)
  1030da: eb 0d                        	jmp	13 <strtol+0xa7>
  1030dc: 83 7d 10 00                  	cmpl	$0, 16(%ebp)
  1030e0: 75 07                        	jne	7 <strtol+0xa7>
  1030e2: c7 45 10 0a 00 00 00         	movl	$10, 16(%ebp)
  1030e9: 8b 45 08                     	movl	8(%ebp), %eax
  1030ec: 0f b6 00                     	movzbl	(%eax), %eax
  1030ef: 3c 2f                        	cmpb	$47, %al
  1030f1: 7e 1b                        	jle	27 <strtol+0xcc>
  1030f3: 8b 45 08                     	movl	8(%ebp), %eax
  1030f6: 0f b6 00                     	movzbl	(%eax), %eax
  1030f9: 3c 39                        	cmpb	$57, %al
  1030fb: 7f 11                        	jg	17 <strtol+0xcc>
  1030fd: 8b 45 08                     	movl	8(%ebp), %eax
  103100: 0f b6 00                     	movzbl	(%eax), %eax
  103103: 0f be c0                     	movsbl	%al, %eax
  103106: 83 e8 30                     	subl	$48, %eax
  103109: 89 45 f4                     	movl	%eax, -12(%ebp)
  10310c: eb 48                        	jmp	72 <strtol+0x114>
  10310e: 8b 45 08                     	movl	8(%ebp), %eax
  103111: 0f b6 00                     	movzbl	(%eax), %eax
  103114: 3c 60                        	cmpb	$96, %al
  103116: 7e 1b                        	jle	27 <strtol+0xf1>
  103118: 8b 45 08                     	movl	8(%ebp), %eax
  10311b: 0f b6 00                     	movzbl	(%eax), %eax
  10311e: 3c 7a                        	cmpb	$122, %al
  103120: 7f 11                        	jg	17 <strtol+0xf1>
  103122: 8b 45 08                     	movl	8(%ebp), %eax
  103125: 0f b6 00                     	movzbl	(%eax), %eax
  103128: 0f be c0                     	movsbl	%al, %eax
  10312b: 83 e8 57                     	subl	$87, %eax
  10312e: 89 45 f4                     	movl	%eax, -12(%ebp)
  103131: eb 23                        	jmp	35 <strtol+0x114>
  103133: 8b 45 08                     	movl	8(%ebp), %eax
  103136: 0f b6 00                     	movzbl	(%eax), %eax
  103139: 3c 40                        	cmpb	$64, %al
  10313b: 7e 3b                        	jle	59 <strtol+0x136>
  10313d: 8b 45 08                     	movl	8(%ebp), %eax
  103140: 0f b6 00                     	movzbl	(%eax), %eax
  103143: 3c 5a                        	cmpb	$90, %al
  103145: 7f 31                        	jg	49 <strtol+0x136>
  103147: 8b 45 08                     	movl	8(%ebp), %eax
  10314a: 0f b6 00                     	movzbl	(%eax), %eax
  10314d: 0f be c0                     	movsbl	%al, %eax
  103150: 83 e8 37                     	subl	$55, %eax
  103153: 89 45 f4                     	movl	%eax, -12(%ebp)
  103156: 8b 45 f4                     	movl	-12(%ebp), %eax
  103159: 3b 45 10                     	cmpl	16(%ebp), %eax
  10315c: 7d 19                        	jge	25 <strtol+0x135>
  10315e: ff 45 08                     	incl	8(%ebp)
  103161: 8b 45 f8                     	movl	-8(%ebp), %eax
  103164: 0f af 45 10                  	imull	16(%ebp), %eax
  103168: 89 c2                        	movl	%eax, %edx
  10316a: 8b 45 f4                     	movl	-12(%ebp), %eax
  10316d: 01 d0                        	addl	%edx, %eax
  10316f: 89 45 f8                     	movl	%eax, -8(%ebp)
  103172: e9 72 ff ff ff               	jmp	-142 <strtol+0xa7>
  103177: 90                           	nop
  103178: 83 7d 0c 00                  	cmpl	$0, 12(%ebp)
  10317c: 74 08                        	je	8 <strtol+0x144>
  10317e: 8b 45 0c                     	movl	12(%ebp), %eax
  103181: 8b 55 08                     	movl	8(%ebp), %edx
  103184: 89 10                        	movl	%edx, (%eax)
  103186: 83 7d fc 00                  	cmpl	$0, -4(%ebp)
  10318a: 74 07                        	je	7 <strtol+0x151>
  10318c: 8b 45 f8                     	movl	-8(%ebp), %eax
  10318f: f7 d8                        	negl	%eax
  103191: eb 03                        	jmp	3 <strtol+0x154>
  103193: 8b 45 f8                     	movl	-8(%ebp), %eax
  103196: 89 ec                        	movl	%ebp, %esp
  103198: 5d                           	popl	%ebp
  103199: c3                           	retl

0010319a memset:
  10319a: 55                           	pushl	%ebp
  10319b: 89 e5                        	movl	%esp, %ebp
  10319d: 83 ec 28                     	subl	$40, %esp
  1031a0: 89 7d fc                     	movl	%edi, -4(%ebp)
  1031a3: 8b 45 0c                     	movl	12(%ebp), %eax
  1031a6: 88 45 d8                     	movb	%al, -40(%ebp)
  1031a9: 0f be 55 d8                  	movsbl	-40(%ebp), %edx
  1031ad: 8b 45 08                     	movl	8(%ebp), %eax
  1031b0: 89 45 f8                     	movl	%eax, -8(%ebp)
  1031b3: 88 55 f7                     	movb	%dl, -9(%ebp)
  1031b6: 8b 45 10                     	movl	16(%ebp), %eax
  1031b9: 89 45 f0                     	movl	%eax, -16(%ebp)
  1031bc: 8b 4d f0                     	movl	-16(%ebp), %ecx
  1031bf: 0f b6 45 f7                  	movzbl	-9(%ebp), %eax
  1031c3: 8b 55 f8                     	movl	-8(%ebp), %edx
  1031c6: 89 d7                        	movl	%edx, %edi
  1031c8: f3 aa                        	rep		stosb	%al, %es:(%edi)
  1031ca: 89 fa                        	movl	%edi, %edx
  1031cc: 89 4d ec                     	movl	%ecx, -20(%ebp)
  1031cf: 89 55 e8                     	movl	%edx, -24(%ebp)
  1031d2: 8b 45 f8                     	movl	-8(%ebp), %eax
  1031d5: 8b 7d fc                     	movl	-4(%ebp), %edi
  1031d8: 89 ec                        	movl	%ebp, %esp
  1031da: 5d                           	popl	%ebp
  1031db: c3                           	retl

001031dc memmove:
  1031dc: 55                           	pushl	%ebp
  1031dd: 89 e5                        	movl	%esp, %ebp
  1031df: 57                           	pushl	%edi
  1031e0: 56                           	pushl	%esi
  1031e1: 53                           	pushl	%ebx
  1031e2: 83 ec 30                     	subl	$48, %esp
  1031e5: 8b 45 08                     	movl	8(%ebp), %eax
  1031e8: 89 45 f0                     	movl	%eax, -16(%ebp)
  1031eb: 8b 45 0c                     	movl	12(%ebp), %eax
  1031ee: 89 45 ec                     	movl	%eax, -20(%ebp)
  1031f1: 8b 45 10                     	movl	16(%ebp), %eax
  1031f4: 89 45 e8                     	movl	%eax, -24(%ebp)
  1031f7: 8b 45 f0                     	movl	-16(%ebp), %eax
  1031fa: 3b 45 ec                     	cmpl	-20(%ebp), %eax
  1031fd: 73 42                        	jae	66 <memmove+0x65>
  1031ff: 8b 45 f0                     	movl	-16(%ebp), %eax
  103202: 89 45 e4                     	movl	%eax, -28(%ebp)
  103205: 8b 45 ec                     	movl	-20(%ebp), %eax
  103208: 89 45 e0                     	movl	%eax, -32(%ebp)
  10320b: 8b 45 e8                     	movl	-24(%ebp), %eax
  10320e: 89 45 dc                     	movl	%eax, -36(%ebp)
  103211: 8b 45 dc                     	movl	-36(%ebp), %eax
  103214: c1 e8 02                     	shrl	$2, %eax
  103217: 89 c1                        	movl	%eax, %ecx
  103219: 8b 55 e4                     	movl	-28(%ebp), %edx
  10321c: 8b 45 e0                     	movl	-32(%ebp), %eax
  10321f: 89 d7                        	movl	%edx, %edi
  103221: 89 c6                        	movl	%eax, %esi
  103223: f3 a5                        	rep		movsl	(%esi), %es:(%edi)
  103225: 8b 4d dc                     	movl	-36(%ebp), %ecx
  103228: 83 e1 03                     	andl	$3, %ecx
  10322b: 74 02                        	je	2 <memmove+0x53>
  10322d: f3 a4                        	rep		movsb	(%esi), %es:(%edi)
  10322f: 89 f0                        	movl	%esi, %eax
  103231: 89 fa                        	movl	%edi, %edx
  103233: 89 4d d8                     	movl	%ecx, -40(%ebp)
  103236: 89 55 d4                     	movl	%edx, -44(%ebp)
  103239: 89 45 d0                     	movl	%eax, -48(%ebp)
  10323c: 8b 45 e4                     	movl	-28(%ebp), %eax
  10323f: eb 36                        	jmp	54 <memmove+0x9b>
  103241: 8b 45 e8                     	movl	-24(%ebp), %eax
  103244: 8d 50 ff                     	leal	-1(%eax), %edx
  103247: 8b 45 ec                     	movl	-20(%ebp), %eax
  10324a: 01 c2                        	addl	%eax, %edx
  10324c: 8b 45 e8                     	movl	-24(%ebp), %eax
  10324f: 8d 48 ff                     	leal	-1(%eax), %ecx
  103252: 8b 45 f0                     	movl	-16(%ebp), %eax
  103255: 8d 1c 01                     	leal	(%ecx,%eax), %ebx
  103258: 8b 45 e8                     	movl	-24(%ebp), %eax
  10325b: 89 c1                        	movl	%eax, %ecx
  10325d: 89 d8                        	movl	%ebx, %eax
  10325f: 89 d6                        	movl	%edx, %esi
  103261: 89 c7                        	movl	%eax, %edi
  103263: fd                           	std
  103264: f3 a4                        	rep		movsb	(%esi), %es:(%edi)
  103266: fc                           	cld
  103267: 89 f8                        	movl	%edi, %eax
  103269: 89 f2                        	movl	%esi, %edx
  10326b: 89 4d cc                     	movl	%ecx, -52(%ebp)
  10326e: 89 55 c8                     	movl	%edx, -56(%ebp)
  103271: 89 45 c4                     	movl	%eax, -60(%ebp)
  103274: 8b 45 f0                     	movl	-16(%ebp), %eax
  103277: 83 c4 30                     	addl	$48, %esp
  10327a: 5b                           	popl	%ebx
  10327b: 5e                           	popl	%esi
  10327c: 5f                           	popl	%edi
  10327d: 5d                           	popl	%ebp
  10327e: c3                           	retl

0010327f memcpy:
  10327f: 55                           	pushl	%ebp
  103280: 89 e5                        	movl	%esp, %ebp
  103282: 57                           	pushl	%edi
  103283: 56                           	pushl	%esi
  103284: 83 ec 20                     	subl	$32, %esp
  103287: 8b 45 08                     	movl	8(%ebp), %eax
  10328a: 89 45 f4                     	movl	%eax, -12(%ebp)
  10328d: 8b 45 0c                     	movl	12(%ebp), %eax
  103290: 89 45 f0                     	movl	%eax, -16(%ebp)
  103293: 8b 45 10                     	movl	16(%ebp), %eax
  103296: 89 45 ec                     	movl	%eax, -20(%ebp)
  103299: 8b 45 ec                     	movl	-20(%ebp), %eax
  10329c: c1 e8 02                     	shrl	$2, %eax
  10329f: 89 c1                        	movl	%eax, %ecx
  1032a1: 8b 55 f4                     	movl	-12(%ebp), %edx
  1032a4: 8b 45 f0                     	movl	-16(%ebp), %eax
  1032a7: 89 d7                        	movl	%edx, %edi
  1032a9: 89 c6                        	movl	%eax, %esi
  1032ab: f3 a5                        	rep		movsl	(%esi), %es:(%edi)
  1032ad: 8b 4d ec                     	movl	-20(%ebp), %ecx
  1032b0: 83 e1 03                     	andl	$3, %ecx
  1032b3: 74 02                        	je	2 <memcpy+0x38>
  1032b5: f3 a4                        	rep		movsb	(%esi), %es:(%edi)
  1032b7: 89 f0                        	movl	%esi, %eax
  1032b9: 89 fa                        	movl	%edi, %edx
  1032bb: 89 4d e8                     	movl	%ecx, -24(%ebp)
  1032be: 89 55 e4                     	movl	%edx, -28(%ebp)
  1032c1: 89 45 e0                     	movl	%eax, -32(%ebp)
  1032c4: 8b 45 f4                     	movl	-12(%ebp), %eax
  1032c7: 83 c4 20                     	addl	$32, %esp
  1032ca: 5e                           	popl	%esi
  1032cb: 5f                           	popl	%edi
  1032cc: 5d                           	popl	%ebp
  1032cd: c3                           	retl

001032ce memcmp:
  1032ce: 55                           	pushl	%ebp
  1032cf: 89 e5                        	movl	%esp, %ebp
  1032d1: 83 ec 10                     	subl	$16, %esp
  1032d4: 8b 45 08                     	movl	8(%ebp), %eax
  1032d7: 89 45 fc                     	movl	%eax, -4(%ebp)
  1032da: 8b 45 0c                     	movl	12(%ebp), %eax
  1032dd: 89 45 f8                     	movl	%eax, -8(%ebp)
  1032e0: eb 2e                        	jmp	46 <memcmp+0x42>
  1032e2: 8b 45 fc                     	movl	-4(%ebp), %eax
  1032e5: 0f b6 10                     	movzbl	(%eax), %edx
  1032e8: 8b 45 f8                     	movl	-8(%ebp), %eax
  1032eb: 0f b6 00                     	movzbl	(%eax), %eax
  1032ee: 38 c2                        	cmpb	%al, %dl
  1032f0: 74 18                        	je	24 <memcmp+0x3c>
  1032f2: 8b 45 fc                     	movl	-4(%ebp), %eax
  1032f5: 0f b6 00                     	movzbl	(%eax), %eax
  1032f8: 0f b6 d0                     	movzbl	%al, %edx
  1032fb: 8b 45 f8                     	movl	-8(%ebp), %eax
  1032fe: 0f b6 00                     	movzbl	(%eax), %eax
  103301: 0f b6 c8                     	movzbl	%al, %ecx
  103304: 89 d0                        	movl	%edx, %eax
  103306: 29 c8                        	subl	%ecx, %eax
  103308: eb 18                        	jmp	24 <memcmp+0x54>
  10330a: ff 45 fc                     	incl	-4(%ebp)
  10330d: ff 45 f8                     	incl	-8(%ebp)
  103310: 8b 45 10                     	movl	16(%ebp), %eax
  103313: 8d 50 ff                     	leal	-1(%eax), %edx
  103316: 89 55 10                     	movl	%edx, 16(%ebp)
  103319: 85 c0                        	testl	%eax, %eax
  10331b: 75 c5                        	jne	-59 <memcmp+0x14>
  10331d: b8 00 00 00 00               	movl	$0, %eax
  103322: 89 ec                        	movl	%ebp, %esp
  103324: 5d                           	popl	%ebp
  103325: c3                           	retl
