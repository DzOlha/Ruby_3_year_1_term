
def fillMatrix(n)
    matrix = Array.new(n){Array.new(n)}
    n -= 1
    for i in 0..n do
        for j in 0..n do
            if(i === j) then
                matrix[i][j] = 1
            else
                matrix[i][j] = rand(10) 
            end
        end
    end
    return matrix
end

def transposeMatrix(matrix)
    n = matrix.length
    tran = Array.new(n){Array.new(n)}
    n -= 1
    for i in 0..n do 
        for j in 0..n do
            tran[j][i] = matrix[i][j]
        end
    end
    return tran
end
A = fillMatrix(8)
realTranspose = A.transpose()
myTranspose = transposeMatrix(A)

if(realTranspose == myTranspose) then 
    printf "Test passed!\n\n"
end
print "Matrix A = ", A, "\n\n"
print "Transpose matrix A = ", myTranspose, "\n\n"