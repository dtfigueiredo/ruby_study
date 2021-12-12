result = ''

loop do
  puts result
  puts "Seleciona uma das duas opções abaixo: "
  puts "1 - Descobrir a idade de uma pessoa"
  puts "0 - Desligar o programa"
  print "Opção: "

  option = gets.chomp.to_i

 if option == 1
   print "Digite o seu ano de nascimento: "
   birth_year = gets.chomp.to_i
   print "Digite o ano atual: "
   todays_year = gets.chomp.to_i
   age = todays_year - birth_year
   result = "You're #{age} years old."
 elsif option == 0
  #método if simplicado e escrito em uma linha
   break
 else
   result =  'Opção inválida!'
 end

 system "clear"

end