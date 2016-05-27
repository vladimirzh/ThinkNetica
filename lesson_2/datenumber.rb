puts "Please enter the day:"
day = gets.chomp.to_i

puts "Please enter the month:"
month = gets.chomp.to_i

puts "Please enter the year:"
year = gets.chomp.to_i


leap_year=0
if year%4==0 && year%100>0
	leap_year=1
elsif year%400==0
	leap_year=1
end

days = [31,28,31,30,31,31,30,31,30,31,30,31]
if leap_year==1
	days[1]=29
end

i = 1
datenumber = 0
while i<month do
	datenumber+=days[i]
	i+=1
end 

datenumber+=day

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "The date number is #{datenumber}"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"