#------------------------------------------------------
def a_exp(a, b) 
    return (!(a || b)&&(a&&!b))
end
#------------------------------------------------------
def b_exp(a, b, x, y, z) 
    return ((z != y) <= (6 >= y)&&a&&b&&c&&x>=1.5)
end
#-------------------------------------------------------
def c_exp(x, y, z)
    return ((8 - x*2 <= z)&&(x**2 <= y**2)||z >= 15)
end
#-------------------------------------------------------
def d_exp(x, y, z)
    return (x > 0 || y < 0 || z >= (x*y + (-y/x)) + (-z))
end
#-------------------------------------------------------
def e_exp(a, b, c)
    return (!(a || b && !(c || (!a || b))))
end
#-------------------------------------------------------
def f_exp(x, y)
    return (x**2 + y**2 >= 1 && x >= 0 && y >= 0)
end
#-------------------------------------------------------
def g_exp(a, b, c)
    return (a && (c && b <=> b || a) || c)&&b
end
#-------------------------------------------------------
A = false
B = true
C = true

X = 90
Y = -1
Z = 5
puts a_exp(A, B)
#puts b_exp(A, B, X, Y, Z)
puts c_exp(X, Y, Z)
puts d_exp(X, Y, Z)
puts e_exp(A, B, C)
puts f_exp(X, Y)
puts g_exp(A, B, C)