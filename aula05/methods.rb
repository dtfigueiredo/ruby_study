#métodos são funções. iniciam pela palavra reservada DEF, recebem o nome de chamada "IMPRIMIRNOME", e o parâmetro "NOME"

def imprimir_nome nome
  puts "Imprimindo: #{nome}"
end

imprimir_nome "Daniel"
imprimir_nome "Naxulha"

def somar (num1, num2=3)
  soma = num1 + num2
  puts "A soma é #{soma}"
end

somar 5,7
somar 10