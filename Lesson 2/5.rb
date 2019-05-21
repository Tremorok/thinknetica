months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31,]
puts "Введите число, месяц, год (Пример: 02 12 1996)"
date_array = gets.chomp.split(" ").map(&:to_f)
if date_array.length < 3
  abort("Вы ввели значения в неправильном формате.")
end
day, month, year = date_array.map{ |x| x.to_f }
if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  puts "Год является высокосным."
  months[1] = 29
end
days_from_start = day + months.take(month - 1).sum
puts "Дней с начала года: #{days_from_start}"
