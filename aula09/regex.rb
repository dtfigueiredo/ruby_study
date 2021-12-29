# CRIANDO REGEX
regex01 = /abcd/
regex02 = %r{abcd}
Regexp.new('abcd')

# UTILIZANDO REGEX
def changingPosition
  strng = 'ruby'
  position = (/by/ =~ strng) #retorna a posição do primeiro elemento encontrado na string
  strng[position] = '_' #substituindo o elemento encontrado por outro qualquer
  return strng
end

puts "exemplo01: #{changingPosition}"

phrase = 'Hellow, how are you?'
match_data = /how/.match(phrase) #mostra o resultado da pesquisa
puts  "exemplo02: #{match_data.pre_match}" #mostra o conteúdo que precede o termo pesquisado
puts  "exemplo02: #{match_data.post_match}"  #mostra o conteúdo que vem depois do termo pesquisado

# SINTAXE DO REGEX
## CARACTERES ESPECIAIS - utiliza-se o '|' para fazer a busca de caracteres especiais
meta = /\?/.match(phrase)
puts "exemplo03: #{meta}"

## CHARACTER CLASSES - delimitada pelo uso de colchetes
char_class = /[t]exto/.match('texto começando com t')
puts "exemplo04: #{char_class}"

num_class = /[1-5]*/.match('123') #o elemento '*' faz com que o match retorne todas os elementos compatíveis com o filtro (1,2 e 3). Sem o '*' o retorno seria apenas (1)
puts "exemplo05: #{num_class}"

str_class = /[aA-zZ]*/.match('Thunder')
puts "exemplo06: #{str_class}"

###mesclando
poc = /A\d/.match('A8')
puts "exemplo07: #{poc}"

###telefone
telefone = /\d{2} \d{9}/.match('11 974740718')
puts "exemplo08: #{telefone}"