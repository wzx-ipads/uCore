# ucore lab1

## Exercise 1

***

## Exercise 2

#### Exercise 2.1

从CPU加电后执行的第一条指令开始，单步跟踪BIOS的执行。

* 在 lab1 目录下执行 `make debug` 即可进入gdb界面，使用si可以进行单步跟踪

#### Exercise 2.2

在初始化位置0x7c00设置实地址断点,测试断点正常。

* 将 tools/gdbinit 中的 `breakpoint kern_init`修改为 `breakpoint *0x7c00` 即可在0x7c00处设置实断点

#### Exercise 2.3

从0x7c00开始跟踪代码运行,将单步跟踪反汇编得到的代码与bootasm.S和 bootblock.asm进行比较。

* 可以看到，bootasm.S 中， CPU 一上电后会进入16位的实模式，使用16位的寄存器。但是在gdb反汇编得到的代码中，看到的却是32位的寄存器。

* `lgdt gdtdesc` 指令在反汇编得到的代码中将gdtdesc替换为了`(%esi)` 

*   `movl %cr0, %eax` 莫名其妙变成了以下这一段 

  `insb   (%dx),%es:(%edi)                                            
  jl     0x7c33                                                      
  and    %al,%a`

#### Exercise 2.4

自己找一个bootloader或内核中的代码位置，设置断点并进行测试。

* `b cprintf` 设置断点

***

## Exercise 3

**BIOS将通过读取硬盘主引导扇区到内存，并转跳到对应内存中的位置执行bootloader。请分析bootloader是如何完成从实模式进入保护模式的。**

* A20： 通过修改A20地址线可以完成从实模式到保护模式的转换。早期的Intel CPU 提供了20根地址线，也就是说最大的寻址范围是1MB。而段基址和段内偏移最多都是16位，这也就是说段基址加上段内偏移是有可能超过1MB的寻址空间的，8086解决这个问题的方式就是当寻址到超过1MB的内存时，会发生“回卷”（不会发生异常）。后来的CPU中不止20根寻址线，为了保持向下兼容，模仿以上的回绕特征，于是出现了A20 Gate。一开始时A20地址线控制是被屏蔽的（总为0），直到系统软件通过一定的IO操作去打开它（参看bootasm.S）。很显然，在实模式下要访问高端内存区，这个开关必须打开，在保护模式下，由于使用32位地址线，如果A20恒等于0，那么系统只能访问奇数兆的内存，即只能访问0--1M、2-3M、4-5M......，这样无法有效访问所有可用内存。所以在保护模式下，这个开关也必须打开。
* 在保护模式下，为了使能所有地址位的寻址能力，需要打开A20地址线控制，即需要通过向键盘控制器8042发送一个命令来完成。键盘控制器8042将会将它的的某个输出引脚的输出置高电平，作为 A20 地址线控制的输入。一旦设置成功之后，内存将不会再被绕回(memory wrapping)，这样我们就可以寻址整个 286 的 16M  内存，或者是寻址 80386级别机器的所有 4G 内存了。
* 保护模式下，有两个段表：GDT（Global Descriptor Table）和LDT（Local Descriptor Table），每一张段表可以包含8192 (2^13)个描述符，因而最多可以同时存在2 * 2^13 = 2^14个段。
* 分段机涉及4个关键内容：逻辑地址、段描述符（描述段的属性）、段描述符表（包含多个段描述符的“数组”）、段选择子（段寄存器，用于定位段描述符表中表项的索引）。转换逻辑地址（Logical Address,应用程序员看到的地址）到物理地址（Physical Address, 实际的物理内存地址）分以下两步：
* 选择子( selector ): 线性地址部分的选择子是用来选择哪个描述符表和在该表中索引一个描述符的。选择子可以做为指针变量的一部分，从而对应用程序员是可见的，但是一般是由连接加载器来设置的。段选择子结构:
  - 索引（Index）：在描述符表中从8192个描述符中选择一个描述符。处理器自动将这个索引值乘以8（描述符的长度），再加上描述符表的基址来索引描述符表，从而选出一个合适的描述符。
  - 表指示位（Table Indicator，TI）：选择应该访问哪一个描述符表。0代表应该访问全局描述符表（GDT），1代表应该访问局部描述符表（LDT）。
  - 请求特权级（Requested Privilege Level，RPL）：保护机制，在后续试验中会进一步讲解。

**bootloader进入保护模式的方法：**

* 8042键盘控制器的IO端口是0x60～0x6f，实际上IBM PC/AT使用的只有0x60和0x64两个端口。

  * 读60h端口，读output buffer
  * 写60h端口，写input buffer
  * 读64h端口，读Status Register
  * 操作Control  Register，首先要向64h端口写一个命令（20h为读命令，60h为写命令），然后根据命令从60h端口读出Control  Register的数据或者向60h端口写入Control Register的数据（64h端口还可以接受许多其它的命令）。

* 除了这些资源外，8042还有3个内部端口：Input Port、Outport Port和Test  Port，这三个端口的操作都是通过向64h发送命令，然后在60h进行读写的方式完成，其中本文要操作的A20 Gate被定义在Output  Port的bit 1上，所以有必要对Outport Port的操作及端口定义做一个说明。

  * 读Output Port：向64h发送0d0h命令，然后从60h读取Output Port的内容
  * 写Output Port：向64h发送0d1h命令，然后向60h写入Output Port的数据
  * 禁止键盘操作命令：向64h发送0adh
  * 打开键盘操作命令：向64h发送0aeh

  ```c
  seta20.1:
      inb $0x64, %al               # 把status register读到al中
      testb $0x2, %al				 # 检查input register中是否有数据
      jnz seta20.1				 # 若有数据，跳转回seta20.1，继续检查
  
      movb $0xd1, %al              # 将0xd1写入寄存器al
      outb %al, $0x64              # 向0x64h发送0xd1命令，意思是要向60h里写Out Port数据了
  
  seta20.2:
      inb $0x64, %al               # 再读status register到al中
      testb $0x2, %al				 # 检查input register中是否有数据
      jnz seta20.2				 # 若有数据，跳转回seta20.2，继续检查
  
      movb $0xdf, %al              # 把0xdf写入0x60h                 
      outb %al, $0x60              # 0xdf = 11011111, 意味着P2的A20位（1 bit）被设为1
      
      
      lgdt gdtdesc                 # 加载gdt
      movl %cr0, %eax				 # cr0的第一位为PR位。If 1, system is in protected mode, else system is in real mode
      orl $CR0_PE_ON, %eax		 # CRO_PE_ON 为1
      movl %eax, %cr0				 # 将cr0的第一位设为1, 代表进入32位实模式
          
   # Bootstrap GDT
  .p2align 2                                          # force 4 byte alignment
  gdt:
      SEG_NULLASM                                     # null seg
      SEG_ASM(STA_X|STA_R, 0x0, 0xffffffff)           # code seg for bootloader and kernel
      SEG_ASM(STA_W, 0x0, 0xffffffff)                 # data seg for bootloader and kernel
  
  gdtdesc:
      .word 0x17                                      # sizeof(gdt) - 1
      .long gdt                                       # address gdt
  ```

* **如何初始化GDT表**

  * 一个段描述符的内部结构可以看 kern/mm/mmu.h 中 segdesc 的定义。
  * SEG_NULLASM和SEG_ASM为boot/asm.h中定义的宏，用于构造一个段描述符。
  * `lgdt gdtdesc` （load gdt）将 gdtdesc 加载到 global descriptor table register (GDTR)  中。

***

## Exercise 4

#### Exercise 4.1

**bootloader如何读取硬盘扇区的？**

* 一般主板有2个IDE通道，每个通道可以接2个IDE硬盘。访问第一个硬盘的扇区可设置IO地址寄存器0x1f0-0x1f7实现的。

* | IO地址 | 功能                                                         |
  | ------ | ------------------------------------------------------------ |
  | 0x1f0  | 读数据，当0x1f7不为忙状态时，可以读。                        |
  | 0x1f2  | 要读写的扇区数，每次读写前，你需要表明你要读写几个扇区。最小是1个扇区 |
  | 0x1f3  | 如果是LBA模式，就是LBA参数的0-7位                            |
  | 0x1f4  | 如果是LBA模式，就是LBA参数的8-15位                           |
  | 0x1f5  | 如果是LBA模式，就是LBA参数的16-23位                          |
  | 0x1f6  | 第0~3位：如果是LBA模式就是24-27位     第4位：为0主盘；为1从盘 |
  | 0x1f7  | 状态和命令寄存器。操作时先给命令，再读取，如果不是忙状态就从0x1f0端口读数据 |

* 读取硬盘扇区会调用 `void readseg(uintptr_t va, uint32_t count, uint32_t offset)` , 把磁盘上offset处开始的count个字节读取到虚拟地址va上。

* readseg中会调用readsect来真正的从硬盘上读取数据

  * ```c
    void
    readsect(void *dst, uint32_t secno) {
        // wait for disk to be ready
        waitdisk();
    
        outb(0x1F2, 1);                         // count = 1
        outb(0x1F3, secno & 0xFF);
        outb(0x1F4, (secno >> 8) & 0xFF);
        outb(0x1F5, (secno >> 16) & 0xFF);
        outb(0x1F6, ((secno >> 24) & 0xF) | 0xE0);
        outb(0x1F7, 0x20);                      // cmd 0x20 - read sectors
    
        // wait for disk to be ready
        waitdisk();
    
        // read a sector
        insl(0x1F0, dst, SECTSIZE / 4);
    }
    ```

#### Exercise 4.2

**bootloader是如何加载ELF格式的OS？**

* bootmain首先从硬盘offset为0的位置读一个页大小的数据，这是ELF格式文件的elf header。

* elf header中的e_phoff存储了program header的起始位置

* elf header中的e_phnum存储了程序段中entry的个数

* 接着遍历一个一个program header，并调用readseg讲程序段读入内存

  ` readseg(ph->p_va & 0xFFFFFF, ph->p_memsz, ph->p_offset);`

* elf header中的e_entry是OS可执行文件的入口，调用该函数进入kernel。

***

## Exercise 5

```c
void
print_stackframe(void) {
     uint32_t ebp, eip;
     ebp = read_ebp();
     eip = read_eip();

    while (ebp != 0) {
        cprintf("ebp:0x%08x eip:0x%08x args:0x%08x 0x%08x 0x%08x 0x%08x\n", ebp, eip, *(((uint32_t *)ebp)+2), *(((uint32_t *)ebp)+3), *(((uint32_t *)ebp)+4), *(((uint32_t *)ebp)+5));
        print_debuginfo(eip);
        eip = *(((uint32_t *)ebp)+1);
        ebp = *((uint32_t *)ebp);
    }
}
```

***

## Exercise 6

#### Exercise 6.1

**中断描述符表（也可简称为保护模式下的中断向量表）中一个表项占多少字节？其中哪几位代表中断处理代码的入口？**

* Interrupt Descriptor 为 0x40 即 64个字节。 
* [0..15] 为中断处理函数入口的lower bits， [16..31]为中断处理函数入口的middle bits， [32..63] 为中断处理函数入口的higher bits、

#### Exercise 6.2

**请编程完善kern/trap/trap.c中对中断向量表进行初始化的函数idt_init。在idt_init函数中，依次对所有中断入口进行初始化。使用mmu.h中的SETGATE宏，填充idt数组内容。每个中断的入口由tools/vectors.c生成，使用trap.c中声明的vectors数组即可。**

```c
void idt_init(void) {
    extern uint32_t __vectors[];
    int i;

    // Exception Gate
    for (i = 0; i < 32; ++i) {
        SETGATE(idt[i], 1, 8, __vectors[i], 0);
    }

    // Interrupt Gate
    for (i = 32; i < 256; ++i) {
        if (i == 0x80) {
            // syscall
            SETGATE(idt[i], 8, 0, __vectors[i], 3);
        } else {
            SETGATE(idt[i], 8, 0, __vectors[i], 0);
        }
    }

    lidt(&idt_pd);
}
```

