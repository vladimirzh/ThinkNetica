acute_triangle=0
puts "Please enter the side 1 of triangle"
a = gets.chomp.to_f

puts "Please neter the side 2 of triangle"
b = gets.chomp.to_f

puts "Please neter the side 3 of triangle"
c = gets.chomp.to_f

puts "----------------------------------------"
puts "side 1: #{a}, side 2: #{b}, side 3: #{c}"

if a==b && a==c
	puts "equilateral triangle (ravnostoronny)"
elsif a==b || a==c || b==c
	puts "isosceles triangle (ravnobedrenny)"
else
	if a>b
		if a>c
			if a**2==(b**2+c**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		else
			if c**2==(b**2+a**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		end
	else
		if b>c
			if b**2==(a**2+c**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		else
			if c**2==(b**2+a**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		end
	end
end
		