fruits = ['banana', 'maçã', 'mamão']
numbers = [1,2,3,4,5,6]

#mesma estrutura do FOR ... OF
for fruit in fruits
  puts fruit
end
puts '--------------------------------------------------'

for number in numbers
  puts (number*2)
end
puts '--------------------------------------------------'

counter = 0

for element in numbers
  puts element
  puts "elemento dobrado #{counter+=2}"
end