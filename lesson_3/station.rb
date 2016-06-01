class Station

	def initialize(name)
		@name = name
		@trains = []
	end

	def accept_train(train)
		@trains << train
	end

	def send_train(train_number)
		@trains.delete(train_number)
	end

	def show_trains
		puts "There is a list of train on Station #{@name}"
		@trains.each do |train|
			puts "Train number: #{train}"
		end
	end
end
