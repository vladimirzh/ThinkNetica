class Train

  #Может показывать текущую скорость
  attr_accessor :speed
  #Может показывать количество вагонов
  attr_accessor :wagons_nymber
  attr_accessor :route
  attr_accessor :current_station
  attr_reader :type
  attr_reader :number


  #Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
  def initialize(number, type, wagons_nymber)
    @number = number
    @type = type
    @wagons_nymber = wagons_nymber
    @speed = 0
  end

  #Может набирать скорость
  def go
    self.speed += 10
  end

  #Может тормозить (сбрасывать скорость до нуля)
  def stop
    self.speed = 0
  end

  #Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
  #Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
  def add_wagon
      self.wagons_nymber += 1 if speed==0
  end

  def remove_wagon
    self.wagons_nymber -= 1 if wagons_nymber>0 && speed==0
  end

  #Может принимать маршрут следования (объект класса Route)
  def add_route(route)
    self.route = route
    self.current_station = route.stations.first
  end

  #Может перемещаться между станциями, указанными в маршруте.
  def move_to_station(station_name)
    if route?
      to_station = route.stations.find { 'station' station == station_name }
      current_station.send_train(self.number)
      go
      to_station.accept_train(self.number)
      stop
      self.current_station = to_station
    end
  end

  #Показывать предыдущую станцию, текущую, следующую, на основе маршрута
  def current_station_index
    if route?
      route.stations.find_index(current_station)
    end
  end

  def prevous_station
    route.stations[current_station_index - 1] if route? && current_station_index != 0
  end

  def next_station
    route.stations[current_station_index + 1] if route? && current_station_index < route.stations.size - 1
  end

end
