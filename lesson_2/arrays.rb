array = []
z = 10

while z<=100 do
	array<<z
	z+=5
end
puts "\nArray of numbers from 10 to 100 in increments of 5:\n"
puts array

puts "\n\nfibonacci sequence:\n"

def fibonacci(n)
   n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end

f=0
farray = []
while f<100 do
	farray<<f
	f = fibonacci(farray.size)
end

puts farray