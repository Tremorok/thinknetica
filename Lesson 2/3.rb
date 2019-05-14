f_numbers = [0]
f_number = 1

def fib(f)
  i = f.size
  f[i-2] + f[i-1]
end
puts "До какого числа вы хотите заполнить массив?"
input_data = gets.chomp.to_i
while f_number < input_data do
  f_numbers.push(f_number)
  f_number = fib(f_numbers)
end

puts "Числа Фибоначчи"
puts f_numbers
