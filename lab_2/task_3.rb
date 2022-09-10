
def convertToDec(num, base_of_num)
    #make reversed array from digits of the number
    num_arr = num.digits
    n = num_arr.size - 1
    result = 0.0

    for i in 0..n do
        result += (num_arr[i])*base_of_num**i
    end
    return result
end
myNum = 10000100101
base = 2
print "Test = ", convertToDec(myNum, base)