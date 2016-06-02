class Station

	attr_accessor :name
	# Может показывать список всех поездов на станции, находящиеся в текущий момент
	attr_accessor :trains

	def initialize(name)
		# Имеет название, которое указывается при ее создании
		@name = name
		@trains = []
	end

	#Может принимать поезда (по одному за раз)
	def accept_train(train)
		self.trains << train
	end

	# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
	def send_train(train_number)
		trains.delete_if { |train| train==train_number }
	end

	# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
	def trains_by_type(type)
		trains.select { |train| train.type == type }
	end
end





