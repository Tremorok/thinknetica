class Route
  attr_reader :routes
  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    if stations != @stations.first && station != @stations.last
      @stations.delete(station)
    end
  end
end
