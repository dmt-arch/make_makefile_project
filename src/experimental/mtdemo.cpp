#include <future>
#include <iostream>

void f()
{
    std::clog << "MT DEMO- ASYNC\n";
}

int main()
{
    auto fut = std::async(std::launch::deferred, f);

    fut.wait();
}

//使用g++ mtdemo.cpp编译
//还可以g++ -std=c++11 mtdemo.cpp编译
//设置部分参数
