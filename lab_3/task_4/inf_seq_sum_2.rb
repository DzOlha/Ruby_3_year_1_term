
def suma(e)
    n = 1
    prev_sum = 0.0
    curr_sum = 0.0
    diff = 1.0
    while !(diff < e) do
        curr_sum = prev_sum + 1.0/((4*n - 1)*(4*n + 1))
        diff = (curr_sum - prev_sum).abs
        prev_sum = curr_sum
        n += 1
    end
    return curr_sum
end
test_value = 1.0/2 - Math::PI/8
e1 = 0.00000000001
e2 = 0.00001
puts suma(e2)
puts test_value