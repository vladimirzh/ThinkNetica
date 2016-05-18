require 'mathn'

puts "Please enter the number A"
a = gets.chomp

puts "Please neter the number B"
b = gets.chomp

puts "Please neter the number C"
c = gets.chomp

puts "----------------------------------------"
puts "num A: #{a}, num B: #{b}, num C: #{c}"

discriminan = b.to_i**2-4*a.to_i*c.to_i
puts "----------------------------------------"

if(discriminan<0)
	C = CMath.sqrt(discriminan.to_i)
	x1 = (-b.to_i+C) / (2*a.to_i)
	x2 = (-b.to_i-C) / (2*a.to_i)
	puts "Discriminant = #{discriminan}, radical1 = #{x1}, radical2 = #{x2}"
elsif(discriminan==0)
	C = 0
	x1 = -b.to_i/(2*a.to_i)
	puts "Discriminant = #{discriminan}, radical1 = radical2 = #{x1}"
else
	x1 = (-b.to_i + Math.sqrt(discriminan.to_i))/(2*a.to_i)
	x2 = (-b.to_i - Math.sqrt(discriminan.to_i))/(2*a.to_i)
	puts "Discriminant = #{discriminan}, radical1 = #{x1}, radical2 = #{x2}"
end