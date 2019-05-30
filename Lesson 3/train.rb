class Train
  attr_reader :speed, :carriages_count
  @carriages_count = 0
  def initialize(number, type, carriages_count)
    @carriages_count = carriages_count
    @number = number
    @type = type
    @speed = 0
  end

  def speed_up(speed)
    @speed += speed
  end

  def slow_down(speed)
    if @speed - speed >= 0
      @speed -= speed
    end
  end

  def stop
    @speed = 0
  end

  def add_car
    if @speed = 0
      @carriages_count += 1
    end
  end

  def remove_car
    if @speed = 0 and @carriages_count >=1
      @carriages_count -= 1
    end
  end

  def current_station(route)
    @route = route
    @route.routes.first.receive_train(self)
    @station_position = 0
  end

  def move_next_station
    return if next_station.nil?
      current_station.send_train(self)
      next_station.receive_train(self)
      @station_position += 1
    end
  end

  def move_back_station
    return if previous_station.nil?
      current_station.send_train(self)
      previous_station.receive_train(self)
      @station_position -= 1
    end
  end

  def current_station
    @Route.stations[@station_position]
  end

  def previous_station
    @Route.stations[@station_position - 1]
  end

  def next_station
    @Route.stations[@station_position + 1]
  end
end
