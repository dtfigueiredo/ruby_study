#crie um hash em que o usuário possa inserir 3 elementos (chave+valor) -> retornar a string 'a chave é: ? e o valor é ?

userhash = {}

3.times do
  puts ""
  puts "Digite uma banda que vc gosta: "
  band_name = gets.chomp.to_sym
  puts "Digite o gênero musical dessa banda: "
  band_genre = gets.chomp

  userhash[band_name] = band_genre
end

puts ""
puts "Resultados: "
userhash.each do |key, value|
  puts "Conteúdo da chave: #{key} => Conteúdo do valor: #{value}"
end