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


