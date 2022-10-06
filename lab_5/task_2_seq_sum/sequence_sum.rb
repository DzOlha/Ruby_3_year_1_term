
def infSequenceSum(e, x)
    i = 0
    prev_sum = 0.0
    curr_sum = 0.0
    diff = 1.0
    while !(diff < e) do
        curr_sum = prev_sum + (((-1.0)**i) * (x**(2.0*i+1)) / (2.0*i + 1))
        diff = (curr_sum - prev_sum).abs
        prev_sum = curr_sum
        i += 1.0
    end
    return curr_sum
end

def calcForInterval(a, b, e)
    x = a
    while (x <= b) do 
        print "Suma of infinitive sequence for X = ", x, "  =>  ", infSequenceSum(e, x), "\n"
        x += 0.1
    end
end
#interval for x variable = [0.1; 1]
a = 0.1
b = 1
E = 0.001
calcForInterval(a, b, E)