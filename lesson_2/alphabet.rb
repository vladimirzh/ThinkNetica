alphabet = ('a'..'z').to_a
vovel_array = ['a','e','i','o','u','y']
vovel_hash = {}

alphabet.each_with_index{|value,index| vovel_hash[value]=index if vovel_array.include? value}
			
puts vovel_hash