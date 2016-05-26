cart = Hash.new

name = ''
totalsumm = 0

while name!='stop'
  puts "~~~~~~~~~~~~~~~~~~~~~~"
  puts "Please enter the product name."
  puts "Type `stop` if you want to stop entering the products."
  name = gets.chomp.to_s

  if name!="stop"
    puts "Please enter the product price"
    price = gets.chomp.to_f

    puts "Please enter the product numbers"
    numbers = gets.chomp.to_f

    cart[name] = {price: price, numbers: numbers}
  end
end

puts "Thank you for the order!"
puts "-----------------------------\n\n"
puts "\nOrder list:\n\n"

cart.each do |name,attributes|
  puts "Product title: #{name}"
  summ = 1
  attributes.each do |elem|
    puts "- #{elem[0]}:\t#{elem[1]}"
    summ *= elem[1]
  end

  puts "- summ:\t\t#{sprintf('%.2f',summ)}\n"
  totalsumm+=summ
end

totalsumm = sprintf('%.2f', totalsumm)

puts "-----------------------------"
puts "Total summ: #{totalsumm}"