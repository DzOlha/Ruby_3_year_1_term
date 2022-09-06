class String
    def numeric?
        Float(self) != nil rescue false
    end
end

#Check of input for X variable ------------------------------------------------------
print "Enter number: x =  "
$s_x = gets.chomp
print "\n"
while $s_x.numeric? != true do
    print "Enter NUMBER: x =  "
    $s_x = gets.chomp
    print "\n"
end

#Check of input for A variable ------------------------------------------------------
print "Enter positive number: a =  "
$s_a = gets.chomp
print "\n"
while ($s_a.numeric? != true) do
    print "Enter positive NUMBER: a = "
    $s_a = gets.chomp
    print "\n"
end
while ($s_a.to_f < 0.0) do
    print "Enter POSITIVE number: a = "
    $s_a = gets.chomp
    print "\n"
end

#Check of B variable ---------------------------------------------------------------
print "Enter number from interval [-1;1]:  b =  "
$s_b = gets.chomp
print "\n"
while ($s_b.numeric? != true) do
    print "Enter NUMBER from interval [-1; 1]: b =  "
    $s_b = gets.chomp
    print "\n"
end
while ($s_b.to_f > 1.0 || $s_b.to_f < -1.0) do
    print "Enter number FROM INTERVAL [-1; 1]: b =  "
    $s_b = gets.chomp
    print "\n"
end
x = $s_x.to_f
a = $s_a.to_f
b = $s_b.to_f
puts "---------------------------------------------------"
print "You entered: x = ", x, "\n"
print "             a = ", a, "\n"
print "             b = ", b, "\n"

half = 1/2
numerator = (6.2 * (10**2.7) * Math.tan(Math::PI - x**3))
denominator = Math::E + (Math.log(Math.acos((b**3).abs)))**half

arg = (10**2 * Math.sqrt(a))/(2 * x + 87.2)

$result = numerator/denominator + Math.atan(arg)

print "---------------------------------------------------\n"
print "Result = ", $result