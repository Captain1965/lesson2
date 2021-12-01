# encoding utf-8
# Пользователь вводит поочередно название товара, цену за единицу и
# кол-во купленного товара (может быть нецелым числом). Пользователь 
#может ввести произвольное кол-во товаров до тех пор, пока не введет 
#"стоп" в качестве названия товара. На основе введенных данных требуется:
#Заполнить и вывести на экран хеш, ключами которого являются названия 
#товаров, а значением - вложенный хеш, содержащий цену за единицу товара 
#и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
#Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
product_h ={}
name_product_h ={}
loop do 
puts 'Введите название товара , закончите ввод введя end'
name_product = STDIN.gets.chomp
break if name_product == "end"
puts 'Введите цену товара'
price_product = STDIN.gets.chomp.to_f
puts 'Введите количество купленного товарa '
quantity_product = STDIN.gets.chomp.to_f
product_h[:price] = price_product
product_h[:quantity] = quantity_product  
puts product_h    
#hash.merge!(item2: 2)
name_product_h[name_product] = product_h
name_product_h.merge(a:product_h)
end
puts name_product_h
#определим количесво пар ключ-значение в хэше с наименованием покупок
sum = 0
n = name_product_h.length
n.times do 
	keys_h = name_product_h.keys[0].to_s
	sum += name_product_h[keys_h][:price]*name_product_h[keys_h][:quantity]
end	
puts " Вы купили следующие товары #{name_product_h.keys} на сумму #{sum} денежных единиц"

