#array que receba 3 números e retorne cada elemento à segunda potência

numeros = [2,3,4]

pow_numbers = numeros.map do |num|
  puts num ** 2
end