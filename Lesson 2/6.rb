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
    products[item_name] = { price: price, amount: amount, }
    #puts products
  end
end

products.each do |item_name, info|
  item_total = info[:price] * info[:amount]
  total_price += item_total
  puts "Товар: #{item_name}, Цена:#{info[:price]}, Количество: #{info[:amount]}, Итого: #{item_total}"
end
puts "Общая сумма покупок #{total_price}"
