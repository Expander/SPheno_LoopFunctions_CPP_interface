  Program Test

    Use LoopFunctions
    Use LoopFunctionsSubroutines

    double precision :: re, im
    Complex*16 :: res

    ! vertexC0tilde vertexC0tildeSub
    write (*,*) "testing vertexC0tilde == vertexC0tildeSub"

    res = vertexC0tilde(100._dp, 200._dp, 300._dp)
    call vertexC0tildeSub(100._dp, 200._dp, 300._dp, re, im)

    write (*,*) "Result: (real,imag) = ", dble(res).EQ.re, dimag(res).EQ.im

  End Program Test
