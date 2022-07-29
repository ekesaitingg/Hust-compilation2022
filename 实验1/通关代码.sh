####### 第一关
# 请用 gcc 编译器，连编def-test.c, alibaba.c，生成def-test二进制可执行代码。通过在编译命令行加适当的参数，
# 使生成的程序能形成Alibaba和Bili两个人的对话：
gcc -DBILIBILI def-test.c alibaba.c -o def-test

####### 第二关

# 请用 用clang编译器把bar.c“翻译”成优化的(优化级别O2)armv7架构，linux系统，符合gnueabihf嵌入式二进制接口规则，
# 并支持arm硬浮点的汇编代码（程序中并没有浮点数）。汇编代码文件名为bar.clang.arm.s
# 请使用恰当的编译选项以完成上述任务：
clang -S -O2 -target armv7-linux-gnueabihf bar.c -o bar.clang.arm.s

####### 第三关
# 用arm-linux-gnueabihf-gcc 将iplusf.c编译成arm汇编代码iplusf.arm.s
arm-linux-gnueabihf-gcc -S iplusf.c -o iplusf.arm.s
# 再次用arm-linux-gnueabihf-gcc 汇编iplusf.arm.s，同时连接SysY2022的运行时库sylib.a，生成arm的可执行代码iplusf.arm
arm-linux-gnueabihf-gcc iplusf.arm.s sylib.a -o iplusf.arm
# 用qemu-arm运行iplusf.arm
qemu-arm -L /usr/arm-linux-gnueabihf/ iplusf.arm

