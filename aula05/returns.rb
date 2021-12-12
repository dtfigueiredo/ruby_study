def compare (num1, num2)
  num1 > num2
end

num1 = 3
num2 = 9

#os métodos sempre retornar um valor, que podem ser armazenados em uma variável
result = compare(num1, num2)

puts "Resultado é #{result}"

#o retorno de um método será sempra a última linha de execução, A MENOS QUE EXISTA UM RETORNO EXPLÍCITO
def retorno
  return 12
  puts "hello teste"
end

puts retorno
