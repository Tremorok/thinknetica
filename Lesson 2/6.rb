products = {}
total_price = 0

loop do
  puts "Введите наименование товара, стоимость и количество (через пробел)"
  input_data = gets.chomp
  if input_data == "стоп"
    break
  elsif input_data.split(" ").length < 3
    puts "Недостаточно данных"
  else
    item_name, price, amount = input_data.split(" ")
    price = price.to_f
    amount = amount.to_f
    products[item_name] = { pirce: price, amount: amount }
    #puts products
  end
end

products.each do |item_name, price_amount|
  price_all = price_amount.values[0] * price_amount.values[1]
  total_price += price_all
  puts "Товар: #{item_name}, Цена:#{price_amount.values[0]}, Количество: #{price_amount.values[1]}, Итого: #{price_all}"
end
puts "Общая сумма покупок #{total_price}"
