class Train
  attr_reader :speed, :carriages_count, :number

  def initialize(number, type, carriages_count)
    @carriages_count = carriages_count
    @number = number
    @type = type
    @speed = 0
  end

  def speed_up(speed)
    @speed = speed
  end

  def slow_down(speed)
    if @speed - speed > 0
      @speed -= speed
    else
      @speed = 0
    end
  end

  def stop
    @speed = 0
  end

  def add_car
    return unless @speed == 0
    @carriages_count += 1
  end

  def remove_car
    return unless @speed == 0
    return unless @carriages_count > 0
    @carriages_count -= 1
  end

  def receive_route(route)
    @route = route
    @route.stations.first.take_train(self)
    @station_position = 0
  end

  def move_next_station
    return if next_station.nil?
    current_station.send_train(self)
    next_station.take_train(self)
    @station_position += 1
  end

  def move_back_station
    return if previous_station.nil?
    current_station.send_train(self)
    previous_station.take_train(self)
    @station_position -= 1
  end

  def current_station
    @route.stations[@station_position]
  end

  def previous_station
    @route.stations[@station_position - 1]
  end

  def next_station
    @route.stations[@station_position + 1]
  end
end
