puts "What is your name?"
name = gets.chomp

puts "What is your height in cm?"
height = gets.chomp.to_f

puts "What is your weight in kg?"
weight = gets.chomp.to_f

perfect_weight = height - 110.0


if perfect_weight>=weight
	puts "Hi, #{name}. Your weight is perfect!"
else
	puts "Hi, #{name}. The perfect weight for you is #{perfect_weight}"
end