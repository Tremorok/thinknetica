#encoding: utf-8
puts "Впишите коэфициент a:"
a = gets.to_i
puts "Впишите коэфициент b:"
b = gets.to_i
puts "Впишите коэфициент c:"
c = gets.to_i
d = b**2 - 4 * a * c
if d == 0 #1 корень
    x1 = -b / ( 2 * a )
    puts "Дискриминант равен 0, и соответственно решением уравнения является 1 ответ."
    puts "X1 = #{x1}"
end
if d > 0 #2 корня
    sqrt_d = Math.sqrt(d)
    x1 = (-b + sqrt_d) / (2 * a)
    x2 = (-b - sqrt_d) / (2 * a)
    puts "Дискриминант больше нуля, а значит решением уравнения является 2 ответа."
    puts "X1 = #{x1}"
    puts "X2 = #{x2}"
end
if d < 0 #нет корней
puts "Нет корней"
end