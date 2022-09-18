def factorial(n)
    return n > 1 ? n * factorial(n - 1) : 1
end
# after some operations we get sum(1/(3**(2*n + 1)*2*n**2)
def suma(e)
    n = 1
    prev_sum = 0.0
    curr_sum = 0.0
    diff = 1.0
    while !(diff < e) do
        curr_sum = prev_sum + (1.0/(3**(2*n + 1)*2*(n**2)))
        diff = (curr_sum - prev_sum).abs
        prev_sum = curr_sum
        n += 1
    end
    return curr_sum
end

e1 = 0.00000000001
e2 = 0.00001
puts suma(e2)