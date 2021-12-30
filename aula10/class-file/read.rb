puts '--- lista de compras ---'

# utilizando a classe File para abrir um arquivo
file = File.open('shopping-list.txt')
file2 = File.open('./files/shopping-2.txt')
excel = File.open('./files/teste.xlsx')
# iterando sobre esse arquivo
file.map {|line| puts "- #{line}"}
file2.map {|line| puts "- #{line}"}
# excel.map {|line| puts "- #{line}"} # descobrir como ler arquivos excel de forma efetiva