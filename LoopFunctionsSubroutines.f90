Module LoopFunctionsSubroutines

  Use LoopFunctions

contains

  !>    @brief Subroutine for vertexC0tilde
  !!    @param m12 m12
  !!    @param m22 m22
  !!    @param m32 m32
  !!    @param re real part of result
  !!    @param im imaginary part of result
  Subroutine vertexC0tildeSub(m12, m22, m32, re, im)

    implicit none

    double precision, intent(in) :: m12, m22, m32
    double precision, intent(out) :: re, im
    Complex(dp) :: res

    res = vertexC0tilde(m12, m22, m32)

    re = dble(res)
    im = dimag(res)

    return
  end Subroutine vertexC0tildeSub

End Module LoopFunctionsSubroutines
