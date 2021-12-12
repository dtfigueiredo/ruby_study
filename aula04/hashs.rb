bandas = Hash.new # ou bandas = {}

#INSERINDO VALORES EM UM HASH
bandas[:rise_against] = 'Hard Core'
bandas[:blink_182] = 'Pop Punk'
bandas[:bad_religion] = 'Punk Rock'

puts bandas

#ACESSANDO VALORES DO HASH
bandas[:bad_religion]
bandas.keys #imprime apenas as chaves do hash (rise_against e blink_182)
bandas.values #imprime apenas os valores do hash (hard core e pop punk)

hash_size = bandas.size #imprime o tamanho do hash (quantos pares chave e valor existem)
bandas.empty? #imprime TRUE caso o hash esteja vazio e FALSE caso tenha pelo menos um elemento

#DELETANDO VALORES DO HASH
bandas.delete(:blink_182)
