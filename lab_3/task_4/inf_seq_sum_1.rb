
def infSequenceSum(e)
    n = 2
    prev_sum = 0.0
    curr_sum = 0.0
    diff = 1.0
    while !(diff < e) do
        curr_sum = prev_sum + (1.0/((n+1)*n))**((n+1)*n)
        diff = (curr_sum - prev_sum).abs
        prev_sum = curr_sum
        n += 1
    end
    return curr_sum
end
    
E = 0.00001
print "Suma of infinitive sequence = ", infSequenceSum(E), "\n"