counter = 0

#mesma lógica de utilizar o DO WHILE, EXECUTA uma vez e verifica se a condição é verdadeira para prosseguir
loop do
  puts counter
  break if counter == 10
  counter += 1
end