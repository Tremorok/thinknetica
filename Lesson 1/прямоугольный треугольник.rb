#encoding: utf-8
puts "Давайте узнаем является ли треугольник, прямоугольным."
puts "Впишите первую сторону:"
a = gets.to_i
puts "Впишите вторую сторону:"
b = gets.to_i
puts "Впишите третью сторону:"
c = gets.to_i
error = 0.3
if a > b and a > c
    if a ** 2 - ( b ** 2 + c ** 2 ) < error
        puts "Треугольник прямоугольный."
        else puts "Треугольник не прямоугольный"
    end
end

if b > a and b > c
    if b ** 2 - ( a ** 2 + c ** 2 ) < error
        puts "Треугольник прямоугольный."
        else puts "Треугольник не прямоугольный"
    end
end

if c > b and c > a
    if c ** 2 - (b ** 2 + a ** 2 ) < error
        puts "Треугольник прямоугольный."
        else puts "Треугольник не прямоугольный"
    end
end

if a == b and a == c
    puts "Треугольник равносторонний, но не прямоугольный."
end
if a == b or b == c or c == a
    puts "Треугольник равнобедренный."
end