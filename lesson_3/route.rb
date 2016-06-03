class Route
  # Имеет начальную и конечную станцию, а также список промежуточных станций.
  # Может выводить список всех станций по-порядку от начальной до конечной
  attr_accessor :stations

  # Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
  def initialize(first_station, last_station)
    @stations = [first_station]
    @stations << last_station
  end

  # Может добавлять промежуточную станцию в список
  def add_intermediate_station(station)
    self.stations.insert(-2, station) if !self.stations.include?(station)
  end

  # Может удалять промежуточную станцию из списка
  def remove_intermediate_station(station)
    self.stations.delete(station) if station != stations.first && station != stations.last
  end
end
