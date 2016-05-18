require 'mathn'

puts "Please enter the number A"
a = gets.chomp.to_f

puts "Please neter the number B"
b = gets.chomp.to_f

puts "Please neter the number C"
c = gets.chomp.to_f

puts "----------------------------------------"
puts "num A: #{a}, num B: #{b}, num C: #{c}"

discriminan = b**2-4*a*c
puts "----------------------------------------"

if discriminan<0
	C = CMath.sqrt(discriminan)
	puts "Discriminant = #{discriminan}, there are no radicals"
elsif discriminan==0
	C = 0
	x1 = -b/(2*a)
	puts "Discriminant = #{discriminan}, radical1 = radical2 = #{x1}"
else
	x1 = (-b + Math.sqrt(discriminan))/(2*a)
	x2 = (-b - Math.sqrt(discriminan))/(2*a)
	puts "Discriminant = #{discriminan}, radical1 = #{x1}, radical2 = #{x2}"
end