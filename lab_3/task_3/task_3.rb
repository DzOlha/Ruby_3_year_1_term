
#1 -(2/3)x + (3/4)x**2 - (4/5)x**3 + ...+ (11/12)x**10
def sum_1(x)
    sum = 1
    for i in 1..10 do
        sum += (-1)**i * x * (i+1)/(i+2)
    end
    return sum
end

#1 + 1/3 + 1/3**2 + ...+ 1/3**8
def sum_2()
    sum = 1
    for i in 1..8 do 
        sum += 1.0/(3**i)
    end
    return sum
end

X = 2
print "Suma of 1 -(2/3)x + (3/4)x**2 - (4/5)x**3 + ...+ (11/12)x**10 = ", sum_1(X), "\n"
print "Suma of 1 + 1/3 + 1/3**2 + ...+ 1/3**8 = ", sum_2()
