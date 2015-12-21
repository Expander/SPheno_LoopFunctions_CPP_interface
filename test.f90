  Program Test

    Use LoopFunctions
    Use LoopFunctionsSubroutines

    double precision :: re, im
    Complex(dp) :: res
    Logical :: eqre, eqim, error

    ! vertexC0tilde vertexC0tildeSub
    res = vertexC0tilde(100._dp, 200._dp, 300._dp)
    call vertexC0tildeSub(100._dp, 200._dp, 300._dp, re, im)

    eqre = dble(res).EQ.re
    eqim = dimag(res).EQ.im
    error = error.OR.eqre.OR.eqim

    write (*,*) "Testing vertexC0tilde == vertexC0tildeSub: (real,imag) = ", eqre, eqim

    if (error) then
       write (*,*) "Test result: OK"
    else
       write (*,*) "Test result: FAIL"
    end if

  End Program Test
