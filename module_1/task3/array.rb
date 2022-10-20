N = 10 #size of the array
def fillArray(arr)
    arr = Array.new(N)
    for i in 0..N-1 do
        arr[i] = rand(3)
    end
    return arr
end

def mulptiply_ItemsWithEvenIndexes(arr) 
    result = 1
    for i in 0..N-1 do 
        if(i % 2 == 0) then
            result *= arr[i]
        end
    end
    return result
end

def suma_ItemsBetweenFirstLastZeros(arr)
    firstIndex = -1
    lastIndex = -1
    for i in 0..N-1 do 
        if(arr[i] == 0 && firstIndex == -1) then
            firstIndex = i
        end
        if(arr[N - i - 1] == 0 && lastIndex == -1) then
            lastIndex = N - i - 1
        end
        if(firstIndex != -1 && lastIndex != -1) then
            break
        end
    end
    suma = 0
    while firstIndex < lastIndex do
        firstIndex += 1
        suma += arr[firstIndex]
    end
    return suma
end

def positiveFirst_negativeLast(arr)
    tmp = 0
    for i in 0..N-1 do 
        if(arr[i] < 0) then 
            tmp = arr[i]
            arr.delete_at(i)
            arr.push(tmp)
        end
    end
    return arr
end

test_arr = fillArray(test_arr)
print test_arr, "\n"
test_arr[6] = -9
test_arr[3] = -1
mult = mulptiply_ItemsWithEvenIndexes(test_arr)
print "Multiplication of items that have even indexes = ", mult, "\n"
suma = suma_ItemsBetweenFirstLastZeros(test_arr)
print "Suma of Items that are between the first and the last zeros = ", suma, "\n"

print "Before transformation: ", test_arr, "\n"
print "After positive first - negative last transformation: "
print positiveFirst_negativeLast(test_arr)