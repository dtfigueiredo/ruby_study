#SELECT FUNCIONA IGUAL AO FILTER. RETORNA OS ELEMENTOS QUE SEJAM VALIDADOS PELA CONDIÇÃO
numbers = [1,2,3,4,5]

selected_numbers = numbers.select do |element|
  element >=3
end

puts "#{selected_numbers}"