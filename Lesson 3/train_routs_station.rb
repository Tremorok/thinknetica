class station
  def initialize(name)
    @name = name
    @trains = []
  end

  def train_take(train)
    @trains << train
    puts "Станция #{@name} - Поезд #{train.number} прибыл"
  end


  def accepted_trains
    puts @trains
  end


  def accepted_trains_by_type
    @trains.select { |train| train.type == train_type }
  end


  def train_send
    @trains.delete(train)
    puts "Станция #{@name} - Поезд #{train.number} отправлен"
  end
end


class route
  def initialize(started_station,ended_station)
    @routes = [started_station, ended_station]
  end

  def add_station(station, position)
    if position > 0 && position < @routes.size
      @routes.insert(position, station)
    else
      puts 'Вы можете добавить только промежуточные станции'
    end
  end

  def delete_station(station)
    if routes != @routes.first && station != @routes.last
      @routes.delete(station)
    else
      puts 'Нельзя удалить крайние станции'
    end
  end

  def station_list
    puts @routes
  end
end

class train
  @number_of_cars = 0
  def initialize(number, type, number_of_cars)
    @number_of_cars = number_of_cars
    @number = number
    @type = type
    @speed = 0
  end
  def speed_up(speed)
    @speed += speed
  end
  def get_speed
    puts @speed
  end
  def slow_down(speed)
    if @speed - speed >= 0
      @speed -= speed
    else
      puts 'Вы пытаетесь снизить скорость ниже 0'
    end
  end
  def stop
    @speed = 0
  end
  def cars
    puts @number_of_cars
  end
  def add_car
    if @speed = 0
      @number_of_cars += 1
    else
      puts "Поезд еще не остановлен"
    end
  end
  def remove_car
    if @speed = 0 and @number_of_cars >=1
      @number_of_cars -= 1
    else
      puts "Количество вагонов не может быть меньше 0"
    end
  end

  def receive_route(route)
    @route = route
    @route.routes.first.receive_train(self)
    @station_position = 0
  end

  def move_next_station
    if @station_position < @route.routes.size - 1
      current_station.send_train(self)
      next_station.receive_train(self)
      @station_position += 1
    else
      puts 'Поезд уже прибыл на конечную станцию'
    end
  end

  def move_back_station
    if @station_position > 0
      current_station.send_train(self)
      previous_station.receive_train(self)
      @station_position -= 1
    else
      puts 'Поезд уже прибыл на начальную станцию'
    end
  end

  def current_station
    @route.routes[@station_position]
  end

  def previous_station
    @route.routes[@station_position - 1] if @station_position - 1 >= 0
  end

  def next_station
    @route.routes[@station_position + 1] if @station_position + 1 < @route.routes.size
  end
end
