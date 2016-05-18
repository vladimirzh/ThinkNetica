puts "What is your name?"
name = gets.chomp

puts "What is your height in cm?"
height = gets.chomp

puts "What is your weight in kg?"
weight = gets.chomp

perfect_weight = height.to_i - 110

if perfect_weight>=weight.to_i
	puts "Hi, #{name}. Your weight is perfect!"
else
	puts "Hi, #{name}. The perfect weight for you is #{perfect_weight}"
end