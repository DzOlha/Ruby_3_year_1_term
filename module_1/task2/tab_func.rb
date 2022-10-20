class String
    def numeric?
        Float(self) != nil rescue false
    end
end
def func(a, b, c, x)
    if(a < 0 && c != 0) then
        f = a*(x**2) + b*x + c
    elsif(a > 0 && c == 0) then
        f = (-a)*(x - c)
    else 
        f = a*(x + c)
    end
    
    if((a.to_i && (b.to_i || c.to_i)) != 0) then
        return f
    else 
        return f.to_i
    end
end

def tabulate_f(a, b, c, xStart, xEnd, xStep)
    i = xStart
    while i <= xEnd do
        print "func =  ", func(a, b, c, i), " on ", i, " step.\n"
        i += xStep
    end
    print "\n"
end

def inputNumber(numName)
    print "Enter number: " + numName + " = "
    s_a = gets.chomp
    print "\n"
    while (s_a.numeric? != true) do
        print "Enter NUMBER: " + numName + " = "
        s_a = gets.chomp
        print "\n"
    end
    return s_a.to_f
end

a = inputNumber("a")
b = inputNumber("b")
c = inputNumber("c")

xStart = inputNumber("xStart")
xEnd = inputNumber("xEnd")
xStep = inputNumber("xStep")

tabulate_f(a, b, c, xStart, xEnd, xStep)

