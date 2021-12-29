puts '--- lista de compras ---'

# utilizando a classe File para abrir um arquivo
file = File.open('shopping-list.txt')
# iterando sobre esse arquivo
file.map {|line| puts "- #{line}"}