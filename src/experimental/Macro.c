#include <stdio.h>

int main()
{
    printf("%s\n", MY_NAME);
}

//用gcc -DMY_NAME=\"Subrat\" Macro.c -o MacroTest编译，
//输出Subrat