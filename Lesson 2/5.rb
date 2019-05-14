months = {Январь: 31, Февраль: 28, Март: 31, Апрель: 30, Май: 31, Июнь: 30, Июль: 31, Август: 31, Сентябрь: 30, Октябрь: 31, Ноябрь: 30, Декабрь: 31,}
puts "Введите число, месяц, год (Пример: 02 12 1996)"
input_data = gets.chomp
if input_data.split(" ").length < 3
  puts "Вы ввели значения в неправильном формате."
else
  day, month, year = input_data.split(" ").map{ |x| x.to_f }
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    puts "Год является высокосным."
    months["Февраль"] = 29
  end
  days_from_start = 0
  (0...month-1).each { |i| days_from_start += months[months.keys[i]] }
  puts "Дней с начала года: #{days_from_start + day}"
end
