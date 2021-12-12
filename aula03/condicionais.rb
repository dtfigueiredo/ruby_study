print "Digite um número inteiro: "
num = gets.chomp.to_i

if num % 2 == 0
  result = "é par"
else
  result = "é impar"
end

puts "#{num} #{result}"