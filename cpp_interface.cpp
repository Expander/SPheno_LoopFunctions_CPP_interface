#include "cpp_interface.hpp"

extern "C" {
void __loopfunctionssubroutines_MOD_vertexc0tildesub(double*, double*, double*, double*, double*);
}

std::complex<double> vertexC0tilde(double m12in, double m22in, double m32in)
{
   double real, imag;
   __loopfunctionssubroutines_MOD_vertexc0tildesub(&m12in, &m22in, &m32in, &real, &imag);
   return std::complex<double>(real, imag);
}
