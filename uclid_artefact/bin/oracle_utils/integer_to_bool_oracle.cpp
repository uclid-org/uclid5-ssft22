// C++ basic oracle which takes a single integer and returns true/false

#include <iostream>
#include <sstream>

 
bool do_the_work(int n)
{
    return false;
}
 
// Driver code
int main(int argc, const char *argv[])
{
 // parse argument
    if(argc!=2 || !(isdigit(*argv[1])))
    {
        std::cout<<"Expected integer value"<<std::endl;
        return 1;
    }

    int n;
    // arg 1 is x
    std::istringstream ssX(argv[1]);
    if(!(ssX >> n))
        std::cerr<<"Unable to parse input "<<std::endl;

    if (do_the_work(n))
        std::cout << "true"<<std::endl;
    else
        std::cout << "false"<<std::endl;
 
    return 0;
}
