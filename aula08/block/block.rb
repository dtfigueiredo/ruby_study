# BLOCKS SÃO FUNÇÕES SEM NOME - DEFINIDOS ENTRE "DO ... END" OU "{ }" - PODEM, OU NÃO, RECEBER PARÂMETROS.

# exemplo 01
puts "ex: 01"
n = 2
n.times { puts "Exec this block #{n} times."}
puts

# exemplo 02
puts "ex: 02"
sum = 0
numbers = [1,2,3]
numbers.each {|number| sum += number}
puts "soma é igual a = #{sum}"
puts

# exemplo 03 - para blocos de várias linhas. usa-se o "DO ... END"
puts "ex: 03"
example = { 2 => 3, 4 => 5}

example.each do |key, value|
  puts '- start -'
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key*value}"
  puts "- end -"
  puts
end

# exemplo 04 - passando blocos como parâmetros de métodos - SÓ SE PODE PASSAR UM BLOCO POR PARÂMETRO
puts "ex: 04"
numbers = [10, 20, 30]

def example
  # cada yield chama o bloco passado como parâmetro para o método e o executa.
  yield
  yield
end

example { puts "testando 0123"}

example do
  multiply = puts numbers.map { |number| number * 2}
  divide = puts numbers.map { |number| number / 2}
  pow = puts numbers.map { |number| number ** 2}
end


# fazendo verificação para caso o bloco tenha sido informado como parâmetro ou não
def example2
  if block_given?
    yield
  else
    puts "no blocks given"
  end
end

example2
example2 {puts "a block was given"}
puts

# exemplo 05
def example05(name, &block)
  @name = name
  block.call
end

puts "ex: 05"
example05('Daniel') {puts "exemplo 05. bloco como um parâmetro (callback) => Hello, #{@name}"}
puts

# exemplo 06
puts "ex: 06"
def example06 (numeros, &block)
  if block_given?
    numeros.each do |key, value|
      block.call(key, value)
    end
  end
end

numeros = {1 => 1, 2 => 2, 3 => 3}

example06(numeros) do |key, value|
  puts "multiplicação: #{key} * #{value} = #{key*value}"
  puts "adição: #{key} + #{value} = #{key+value}"
  puts
end
