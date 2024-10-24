#include <iostream>
#include "mod2.h"
#include "mod4.h"

int main()
{
    std::clog << "I am mod5-calling fun2 of mod2.so" << std::endl;
    fun2();

    std::clog << "Calling mod4.a -static library function f4()"<< std::endl;
    f4();

    return 0;
}