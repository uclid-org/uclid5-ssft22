// C++ basic oracle which takes in two bitvectors and returns a bool

#include <iostream>
#include <sstream>

#define WIDTH 8

unsigned int do_the_work(unsigned int x, unsigned int y)
{
  return false;
}

int main(int argc, const char *argv[])
{
    if(argc!=3 || !(isdigit(*argv[1])) || !(isdigit(*argv[2])))
    {
        std::cout<<"This is the oracle that expects 2 inputs which are bitvector values\n";
        return 1;
    }

    unsigned int x, y;

    // arg 1 is x
    std::istringstream ssX(argv[1]);
    if(!(ssX >> x))
        std::cerr<<"Unable to parse input value"<<std::endl;

    // arg 2 is y
    std::istringstream ssY(argv[2]);
    if(!(ssY >> y))
        std::cerr<<"Unable to parse input value"<<std::endl;

    // force the arguments to be the correct width (does nothing if they already fit )
    x = x % (1 << WIDTH);
    y = y % (1 << WIDTH);


    if (do_the_work(x,y))
        std::cout << "true"<<std::endl;
    else
        std::cout << "false"<<std::endl;

    return 0;
}
