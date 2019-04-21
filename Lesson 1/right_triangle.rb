#Проверка треугольника
puts "Давайте узнаем является ли треугольник, прямоугольным."
puts "Впишите первую сторону:"
a = gets.to_i
puts "Впишите вторую сторону:"
b = gets.to_i
puts "Впишите третью сторону:"
c = gets.to_i
cathetus1, cathetus2, hypotenuse = [a, b, c].sort!
right_triangle = cathetus1**2 + cathetus2**2 == hypotenuse**2 # проверка т. Пифагора

if right_triangle && cathetus2 == cathetus1
  puts "Треугольник является прямоугольным и равнобедренным."
elsif right_triangle
  puts 'Треугольник прямоугольный.'
elsif a == b && b == c
  puts 'Треугольник непрямоугольный, но равносторонний.'
else
  puts 'Треугольник непрямоугольный.'
end
