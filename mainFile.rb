print "tg(pi - x^3) => Enter x =  "
$s_x = gets.chomp
print "\n"

print "sqrt(a) => Enter a =  "
$s_a = gets.chomp
print "\n"

print "arccos(|b^3|) = > Enter b =  "
$s_b = gets.chomp
print "\n"

$x = $s_x.to_s.to_f
$a = $s_a.to_s.to_f
$b = $s_b.to_s.to_f

half = 1/2
numerator = (6.2 * (10**2.7) * Math.tan(Math::PI - $x**3))
denominator = Math::E + (Math.log(Math.acos(($b**3).abs)))**half

arg = (10**2 * Math.sqrt($a))/(2 * $x + 87.2)

$result = numerator/denominator + Math.atan(arg)

puts "---------------------------------------------------"
print "\nResult = ", $result


