acute_triangle=0
puts "Please enter the side 1 of triangle"
a = gets.chomp

puts "Please neter the side 2 of triangle"
b = gets.chomp

puts "Please neter the side 3 of triangle"
c = gets.chomp

puts "----------------------------------------"
puts "side 1: #{a}, side 2: #{b}, side 3: #{c}"

if(a.to_f==b.to_f && a.to_f==c.to_f)
	puts "equilateral triangle (ravnostoronny)"
elsif(a.to_f==b.to_f || a.to_f==c.to_f || b.to_f==c.to_f)
	puts "isosceles triangle (ravnobedrenny)"
else
	if(a>b)
		if(a>c)
			if(a.to_f**2==b.to_f**2+c.to_f**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		else
			if(c.to_f**2==b.to_f**2+a.to_f**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		end
	else
		if(b>c)
			if(b.to_f**2==a.to_f**2+c.to_f**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		else
			if(c.to_f**2==b.to_f**2+a.to_f**2)
				puts "right triangle (priamougolny)"
			else
				puts "acute_triangle (obichny)"
			end
		end
	end
end
		