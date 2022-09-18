#--------------------------------------------
def expression(x, p)
    return ((Math.log(x)/Math.log(1/3) > Math.log(0.7)/Math.log(1/3)) && (Math.sqrt(x) > x*x) && !p)
end

X = 3
P = true
puts expression(X, P)