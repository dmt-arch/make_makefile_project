OUTPUT = ../../bins/mod1_bin
INPUT = mod1.c
OBJ1 = ../../objs/mod1.o

CFLAGS = -Wall -Werror
LDFLAGS = -lm

$(OUTPUT): $(OBJ1)
	gcc $< -o $@ $(LDFLAGS)
# -lm表示链接math库
# -o表示输出文件名

$(OBJ1): $(INPUT)
	gcc $(CFLAGS) -c $< -o $@
# $(<)给出第一个依赖的文件名，$(^)给出所有依赖的文件名，@给出目标文件名
# $(@) 等同于 $@
# -Wall表示显示所有警告信息 -Werror表示将警告信息当作错误处理
# -c表示只编译不链接


