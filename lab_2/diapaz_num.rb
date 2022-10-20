def calcDiap(p_, r, t)
    x = p_**r
    y = 1/(p_**t)
    return x*(1 - y)
end

custom_P = 4
t = 32
r = 16

print "Test = ", calcDiap(6, 10, 15), "\n"
print "Task Result = ", calcDiap(custom_P, r, t)