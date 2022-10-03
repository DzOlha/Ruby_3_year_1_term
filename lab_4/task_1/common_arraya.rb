
def common(one, two)
    sizeOne = one.length - 1
    sizeTwo = two.length - 1
    res = []
    k = 0
    for i in 0..sizeOne do
        for j in 0..sizeTwo do
            if(one[i] === two[j]) then
                res[k] = one[i]
                k += 1;
            end
        end
    end
    return res
end

def testCase(one, two, real)
    if(common(one, two) == real) then
        return true
    end
    return false
end
arr_1 = [2, 5, 1, 8, 3, 18]
arr_2 = [4, 6, 5, 1, 18]

test_1 = arr_1 & arr_2;
print arr_1, "\n"
print arr_2, "\n"
print test_1, "\n"

puts testCase(arr_1, arr_2, test_1);

