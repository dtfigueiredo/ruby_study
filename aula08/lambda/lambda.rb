# LAMBDAS SÃO SIMILARES AOS BLOCKS, MAS PODEM SER SALVAS EM VARIÁVEIS

# exemplo 01
puts "ex: 01"
first_lambda = lambda {puts "my first lambda"} #o bloco é um parâmetro para a Lambda que irá retornar um obj
first_lambda.call
puts "------------"

# exemplo 02
puts "ex: 02"
second_lambda = -> {puts "second lambda. alternative sintax"} #sintaxe alternativa para a lambda // só funciona para blocos de uma linha
second_lambda.call
puts "------------"

# exemplo 03 - lambda com parâmetros
puts "ex: 03"
third_lambda = -> (names) {names.each {|name| puts name.upcase}}

names = ['Ikki', 'Argo', 'zozo', 'PiiPiin', 'toNY']

third_lambda.call(names)
puts "------------"

# exemplo 04 - lambda com parâmetros de múltiplas linhas
puts "ex: 04"
fourth_lambda = lambda do |numbers|
  index = 0
  puts 'Índice Atual + Próximo Índice'
  numbers.each do |number| 
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index+1]}) = (#{numbers[index] + numbers[index+1]})"
    index+=1
  end
end

numbers = [1, 2, 3, 4 ,5]
fourth_lambda.call(numbers)

double_numbers = numbers.map {|num| num * 2}
fourth_lambda.call(double_numbers)
puts "------------"

# exemplo 05 - lambdas podem ser passados como parâmetros para métodos. (inclusive podem ser mais de um parâmetro)
puts "ex: 05"

def example05(first_lambda, fourth_lambda)
  numbers = [1, 2, 3, 4 ,5]

  first_lambda.call
  fourth_lambda.call(numbers)
end

example05(first_lambda, fourth_lambda)
puts "------------"