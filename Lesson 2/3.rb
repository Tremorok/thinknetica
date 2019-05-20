fibonacci_numbers = [0]
next_number = 1

def fib(f)
  f[-1] + f[-2]
end
puts "До какого числа вы хотите заполнить массив?"
input_data = gets.to_i
while next_number < input_data do
  fibonacci_numbers.push(next_number)
  next_number = fib(fibonacci_numbers)
end

puts "Числа Фибоначчи"
puts fibonacci_numbers
