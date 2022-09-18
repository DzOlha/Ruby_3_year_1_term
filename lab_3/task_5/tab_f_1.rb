#---------------------------------------------------------------------------------------
def func_1(x, n, c)
    add1 = (((x + c)**(-n/4.0)*(c**(-1.0/n)))/((x**(2.0 - n))*c**(-3.0/4)))**(4.0/3)
    add2 = (x**2 - 1)/(x**3 - 3*x + 1.0/n)
    y = add1 + add2
    return y
end
#---------------------------------------------------------------------------------------
def func_2(x)
    add1 = Math.sin((15.0/8)*Math::PI - 2*x)**2
    sub2 = Math.cos((17.0/8)*Math::PI - 2*x)**2
    add3 = Math.cos(x)**(1.0/x)
end
#---------------------------------------------------------------------------------------
def func_sum(x, n, c)
    f = func_1(x, n, c) + func_2(x)
    if x > 2 && x < n 
        f = func_1(x, n, c)
    elsif x > n && x < 2*n
        f = func_2(x)
    end
    return f
end 
#---------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------
def tab_f1(n, c)
    len = n - 1
    count = n + c
    i = 1.0
    while i <= n do
        print "func_1 =  ", func_1(i, n, c), " on ", i, " step.\n"
        i += len.to_f/count
    end
    print "\n"
end

#---------------------------------------------------------------------------------------
def tab_f2(n, c)
    i = Math::PI/n
    len = Math::PI - Math::PI/n
    count = (3.0/2)*n + c
    while i <= Math::PI do
        print "func_2 =  ", func_2(i), " on ", i, " step.\n"
        i += len.to_f/count
    end
    print "\n"
end
#---------------------------------------------------------------------------------------
def tab_sum_f1_f2(n, c) 
    len = c - 2
    count = 2*n
    i = 2.0
    while i <= c do
        print "func_sum =  ", func_sum(i, n, c), " on ", i, " step.\n"
        i += len.to_f/count
    end
    print "\n"
end

N = 4
C = 4

tab_f1(N, C)
tab_f2(N, C)
tab_sum_f1_f2(N, C)