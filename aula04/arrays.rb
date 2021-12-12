#arrays
filmes = []

#INSERINDO ELEMENTOS NO ARRAY
filmes.push('Star Wars') #adicionando elementos ao final do array
filmes.push('Harry Potter', 'Indiana Jones', 'Star Trek') #adicionando vários elementos ao final do array (separar-se os elementos por vírgulas)
filmes.insert(0, 'Avengers') #adiciona elementos no índice informado na chamada do método.
filmes.insert(3, 'Insert no índice 03', 'Insert no índice 04') #também podem ser inseridos mais que um elemento

#ACESSANDO ELEMENTOS NO ARRAY
filmes[2..5] #acessando todo o intervalo entre as posições 2 e 5
filmes[-3] #acessando elementos do final para o início do array (também serve com intervalos -3..-1)
filmes.first #acessa diretamente o primeiro elemento
filmes.last #acessa diretamente o último elemento
filmes.empty? #retorna TRUE caso o array esteja vazio ou FALSE caso o array tenho pelo menos um elemento
filmes.include?('Harry Potter') #retorna TRUE caso o array possua o elemento pesquisado e FALSE caso não

#REMOVENDO ELEMENTOS DO ARRAY
filmes.pop #remove o último elemento do array
filmes.shift #remove o último elemento do array
filmes.delete_at(9) #remove o elemento na posição passada no parâmetro da chamada
