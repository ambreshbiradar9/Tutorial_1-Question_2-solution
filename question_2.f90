 !============================================================
    !AM5850 Tutorial_1 Question_2
    ! Solution to nonlinear equation f(x)=x^4+3*x-4
    ! Method: Newton Raphson method
    !===========================================================
program N_R
    implicit none
    real, parameter::tol =1e-5
    integer::i
    real::x0,x1,fun,dfun
    print*,'initial value of x'

    read*, x0
    
    i=1

    ! Newton Raphson Method
    10 x1= x0-(fun(x0)/dfun(x0))

    ! iterate  till convergence
    if(abs((x1- x0)/x1)< tol)then
        print*,"root is ", x1 ,"no. of iteration=", i
        else
            x0=x1
            i=i+1
            goto 10
    endif
end
    real function fun(x)
        real::x
        fun=x**4+3*x-4
    end
    real function dfun(x)
    real::x
    dfun=4*x**3+3
    end



    