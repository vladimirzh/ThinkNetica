alphabet = ('a'..'z').to_a
vovel_array = ['a','e','i','o','u','y']
vovel_hash = Hash.new

#puts alphabet

i=0
while i<alphabet.size do
	if vovel_array.include? alphabet[i]
		vovel_hash[alphabet[i]] = i
	end
	i+=1
end

puts vovel_hash