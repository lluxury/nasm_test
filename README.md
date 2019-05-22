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
