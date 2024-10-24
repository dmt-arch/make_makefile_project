VAR1=10
VAR2=30
VAR3=40

# VAR1=$(VAR1) 10000  报错：*** Recursive variable 'VAR1' references itself (eventually).  Stop.
VAR1 :=$(VAR1) 10000

default:
	echo $(VAR1)

.PHONY: default # 如果文件夹中存在名为default的文件，则无法执行make default
# 而是是直接执行该文件，因此需要使用.PHONY来声明该目标是一个伪目标
# 即makefile中定义的虚拟目标，它本身不对应文件，执行时不会去检查是否存在该文件
