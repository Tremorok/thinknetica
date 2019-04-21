#Идеальный вес
puts "Давайте узнаем ваш идельный вес."
puts "Впишите ваше имя:"
name = gets.chomp
name.capitalize!
puts "Впишите ваш рост:"
height = gets.to_i
perfect_weight = height - 110
if perfect_weight <= 0
  puts "#{name}, Ваш идеальный вес, #{perfect_weight}." #до этого я задание криво прочел, ищем же идеальный вес, а не лишний =)
else
  excess_weight = height - 110
  puts "Ваш вес уже оптимальный"
end
