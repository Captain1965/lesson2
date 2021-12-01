#encoding utf-8
#Заполнить хеш гласными буквами, где значением 
#будет являться порядковый номер буквы в алфавите (a - 1).
#создаем массив из букв алфавита
#последовательно находим номер элемента массива совпадающего с буквой 
#записываем в хэш ключом номер буквы на единицу больше номера элемента массива
#записываем по ключу соответствующее значение
alphabet =[]
alphabet = ("а".."я").to_a
print alphabet
k = alphabet.index("а")+1
h = { k=> "а"}
k = alphabet.index("е")+1
h[k] = "e"
k = alphabet.index("и")+1
h[k] = "и"
k = alphabet.index("о")+1
h[k] = "о"
k = alphabet.index("у")+1
h[k] = "у" 
k = alphabet.index("ы")+1
h[k] = "ы"
k = alphabet.index("э")+1
h[k] = "э"
k = alphabet.index("ю")+1
h[k] = "ю"
k = alphabet.index("я")+1
h[k] = "я"
h.invert
puts
print h
 



