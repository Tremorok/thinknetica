load 'station.rb'
load 'route.rb'
load 'train.rb'
first_station = Station.new('Алтуфьево')
last_station = Station.new('Отрадное')
alt_station = Station.new('Бибирево')
route1 = Route.new(first_station, last_station)
route1.add_station(alt_station)
train1 = Train.new('1234', 'Gruz', 10)
train1.receive_route(route1)
train1.speed_up(100)
puts train1.current_station.name
puts train1.next_station.name
train1.move_next_station
puts train1.current_station.name
train1.move_back_station
puts train1.current_station.name
puts route1.stations
