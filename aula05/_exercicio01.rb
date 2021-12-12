#método que calcule a potência de um número e seu expoente. sendo ambos informados pelo usuário

puts "EXERCÍCIO SOBRE MÉTODOS"
puts "CALCULANDO A POTẼNCIA DE UM NÚMERO"
print "Digite o número base a ser calculado: "
base = gets.chomp.to_i
print "Digite o expoente para calcular a potência: "
expoente = gets.chomp.to_i

def potencia (base, expoente)
  base ** expoente
end

resultado = potencia(base, expoente)

puts "R: #{base} elevado à #{expoente} é igual a #{resultado}."
