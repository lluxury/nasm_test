# nasm_test
汇编复习

sudo apt-get install gcc nasm vim gcc-multilib -y

#代码
int main() {
    return 0;
}


nasm -f elf first.asm -o first.o
gcc -m32 first.o -o first

ls
first  first.asm  first.o

./first ; echo $?

#由于错误的结果,得到错误的结论很容易

0BC71820
00001011 11000111 00011000 00100000

#讨论的寄存器，它的宽度都是32位,32个2进制

( 847623785 * 12874873 + 274632 ) / 999 =

#寄存器不够用?需要用内存了
#内存地址编号 

mov eax, 1
mov [0x5566],eax  寄存器内容保存到内存地址中, 
		  想一下赋值,另int需要4个字节,4个内存地址

mov eax, [0x0699]  取出
#以上语句,保护模式无效,用tmp替代

section .data     放文件数据区,分配内存	
sui_bian_xie   dw    0  开辟4字节空间,用0填充  double word

#add ebx, eax # 默认返回eax, 这样写的结果就是10,汇编真的很容易错

sudo apt-get install gdb -y

nasm -f elf test.asm -o test.o ; gcc -m32 test.o -o test
./test ; echo $?


gdb ./test
set disassembly-flavor intel
disas main

# 把反汇编的格式调整称为intel的格式

Dump of assembler code for function main:
   0x080483f0 <+0>:	mov    eax,0x1
   0x080483f5 <+5>:	mov    ebx,0x2
   0x080483fa <+10>:	add    eax,ebx
   0x080483fc <+12>:	ret    
   0x080483fd <+13>:	xchg   ax,ax
   0x080483ff <+15>:	nop
End of assembler dump.

# 前面内容为指令的地址

  break *0x080483f5
  run
  info register eax
  info register ebx
  stepi
  info register ebx
  stepi
  disas
  continue



# C语言与汇编语言的关系
# 例程

int x, y, z;

int main() {
    x = 2;
    y = 3;
    z = x + y;
    return z;
}

gcc -m32 test01.c -o test01
./test01 ; echo $?

nasm -f elf test02.asm -o test02.o 
gcc -m32 test02.o -o test02
./test02 ; echo $?



gcc -m32 test01.c -o test01
nasm -f elf test02.asm -o test02.o
gcc -m32 -fno-lto test02.o -o test02
ls



gdb ./test01
set disassembly-flavor intel
disas main


gdb ./test02
set disassembly-flavor intel
disas main


# 对比
