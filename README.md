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

x = 2;
y = 3;  的语句

mov eax, 2
mov [x], eax
mov eax, 3
mov [y], eax

z = x + y; 的语句

mov eax, [x]
mov ebx, [y]
add eax, ebx
mov [z], eax

return z;  的语句
mov eax, [z]
ret


# 虽然很啰嗦,但是说明了执行的流程,要多熟悉




# 顺序执行
# 寄存器保存执行位置的信息 eip
# 不能用 mov 修改

# jmp 相当于goto 跳转



# if 程序
# c 代码
int main() {
    int a = 50;
    if( a > 10 ) {
        a = a - 10;
    }
    return a;
}


    cmp eax, 10              ; 对eax和10进行比较
    jle less_func            ; 小于或等于的时候跳转
    sub eax, 10

# 和10，a大于10的时候，进入if块中执行减法
# 比较eax和10，eax小于等于10的时候，跳过中间的减法
# 这个比较坑,思路上要注意下


# c代码

int main() {
    int x = 1;
    if ( x > 100 ) {
        x = x - 20;
    }
    x = x + 1;
    return x;
}

# 虽然不太好接受,不过貌似不是函数的概念
# 就是说语句必定运行,除非跳转掉

# c代码

int main() {
    int x = 10;
    if ( x > 100 ) {
        x = x - 20;
    }
    if( x <= 10 ) {
        x = x + 10;
    }
    x = x + 1;
    return 0;
}


# 熟悉一下: 一条线执行下去,逻辑判断,就使用jmp的变体跳过
# 注意,之前直接写的时候,用的0x50 是十进制 80


# 跳转指令后的<main+21>，就对应的是反汇编指令前是<+21>的指令



# 状态寄存器 eflags
# cmp指令实际上是在对两个操作数进行减法，减法后的一些状态最终就会反映到eflags寄存器中
# 前一次运算的结果是正还是负、计算过程有没有发生进位、计算结果是不是零等信息
# 跳转指令，就是根据eflags寄存器中的状态，来决定是否要进行跳转的

