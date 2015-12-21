#include <iostream>
#include "cpp_interface.hpp"

using namespace std;

int main()
{
   const std::complex<double> vc0(vertexC0tilde(100,200,300));

   cout << "vc0 = " << vc0 << endl;

   return 0;
}
