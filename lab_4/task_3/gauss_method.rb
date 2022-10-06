def gaussianElimination(matrix, vector)
0.upto(matrix.length - 2) do |pivotIdx|
    # Find the best pivot. This is the one who has the largest absolute value
    # relative to his row (scaled partial pivoting). This step can be omitted
    # to improve speed at the cost of increased error.
    maxRelVal = 0
    maxIdx = pivotIdx
    (pivotIdx).upto(matrix.length - 1) do |row|
    relVal = matrix[row][pivotIdx] / matrix[row].map{ |x| x.abs }.max
    if relVal >= maxRelVal
        maxRelVal = relVal
        maxIdx = row
    end
    end

    # Swap the best pivot row into place.
    matrix[pivotIdx], matrix[maxIdx] = matrix[maxIdx], matrix[pivotIdx]
    vector[pivotIdx], vector[maxIdx] = vector[maxIdx], vector[pivotIdx]

    pivot = matrix[pivotIdx][pivotIdx]
    # Loop over each row below the pivot row.
    (pivotIdx+1).upto(matrix.length - 1) do |row|
    # Find factor so that [this row] = [this row] - factor*[pivot row]
    # leaves 0 in the pivot column.
    factor = matrix[row][pivotIdx]/pivot
    # We know it will be zero.
    matrix[row][pivotIdx] = 0.0
    # Compute [this row] = [this row] - factor*[pivot row] for the other cols.
    (pivotIdx+1).upto(matrix[row].length - 1) do |col|
        matrix[row][col] -= factor*matrix[pivotIdx][col]
    end
    vector[row] -= factor*vector[pivotIdx]
    end
end

return [matrix,vector]
end
    
# Assumes 'matrix' is in row echelon form.
def backSubstitution(matrix, vector)
(matrix.length - 1).downto( 0 ) do |row|
    tail = vector[row]
    (row+1).upto(matrix.length - 1) do |col|
    tail -= matrix[row][col] * vector[col]
    matrix[row][col] = 0.0
    end
    vector[row] = tail / matrix[row][row]
    matrix[row][row] = 1.0
end
end
    
def fillMatrix(n, k)
    matrix = Array.new(n){Array.new(n)}
    n -= 1
    for i in 0..n do
        for j in 0..n do
            if(i === j) then
                matrix[i][j] = 2.0
            else
                matrix[i][j] = k + 2.0 
            end
        end
    end
    return matrix
end

def fillVector(n)
    vec = Array.new(n)
    n -= 1
    for i in 0..n do
        vec[i] = i + 1.0 
    end
    return vec
end

print "Enter number from the interval [3..9]: n =  "
$n = gets.chomp
print "\n"
while $n.to_f < 3 || $n.to_f > 9 do
    print "Enter number FROM THE INTERVAL [3..9]: n =  "
    $n = gets.chomp
    print "\n"
end

n = $n.to_f
k = 3 #number of my variant
A = fillMatrix(n, k)
b = fillVector(n)

print "Initial matrix A = ", A, "\n"
print "Initial vector b = ", b, "\n"

 gaussianElimination(A, b)
 backSubstitution(A, b)

print "After elimination A = ", A, "\n"
print "Vector of result = ", b, "\n"

