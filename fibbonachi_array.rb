#encoding utf-8
#Заполнить массив числами фибоначчи до 100
fib_array =[]
fib_array[0] = 0 
fib_array[1] = 1 
i = 2
while i <= 100 do
	fib_array[i] = fib_array[i-2] + fib_array[i-1]
	i +=1
end
print fib_array	