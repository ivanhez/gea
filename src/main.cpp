#include <iostream>
#include "Pong.h"

int main(int argv, char **args)
{
    Pong pong = Pong("pong", 800, 600);

    pong.run();

    return 0;
}