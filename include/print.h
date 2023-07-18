#pragma once
#include <iostream>
#define vprint(var) print(#var ": ", var)

void print() {
    std::cout << std::endl;
}

void print(auto one, bool last = true) {
    std::cout << one;
    if (last) {
        std::cout << std::endl;
    }
}

void print(auto first, auto... args) {
    print(first, false);

    if constexpr (sizeof...(args) > 0) {
        std::cout << ' ';
        print(args...);
    } else {
        std::cout << std::endl;
    }
}