products = {}
total_price = 0

loop do
  puts "Введите наименование товара, стоимость и количество (через пробел)"
  input_data = gets.chomp
  if input_data == "стоп"
    products.each do |item_name, price_amount|
      price_all = price_amount.keys[0] * price_amount.values[0]
      total_price += price_all
      puts "Товар: #{item_name}, Цена:#{price_amount.keys[0]}, Количество: #{price_amount.values[0]}, Итого: #{price_all}"
    end
    puts "Общая сумма покупок #{total_price}"
    break
  elsif input_data.split(" ").length < 3
    puts "Недостаточно данных"
  else
    item_name, price, amount = input_data.split(" ")
    price = price.to_f
    amount = amount.to_f
    products[item_name] = {price => amount}
    #puts products
  end
end
