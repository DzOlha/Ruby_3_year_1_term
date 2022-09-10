def calcSquare(arr, n)
    square = 0.0
    for i in 0..n do 
        nex = i + 1

        if(i == n) then
            nex = 0
        end

        tmp = (arr[i][0] + arr[nex][0])*(arr[i][1] - arr[nex][1])
        square += tmp
    end
    return square.abs/2
end

points = [
    [69, 43],[110, 46],[147, 50], [186, 45],[238, 37],
    [298, 34],[344, 34],[396, 57],[429, 79],[482, 149],
    [485, 215],[488, 273],[443, 314],[350, 307],[271, 299],
    [207, 275],[177,206],[136, 168],[97,141],[47, 95],
    [49,71],[56,57]
]
#Test example: S = 1
pt = [
    [1,1],[4,2],[5,3]
]
n = pt.size - 1
print "Test S = ", calcSquare(pt, n), "\n";

point_size = points.size - 1
print "S = ", calcSquare(points, point_size);
