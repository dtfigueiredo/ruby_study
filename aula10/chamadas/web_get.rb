require 'net/http'

#alocando a biblioteca em uma variável
caller = Net::HTTP
#alocando o URI em uma variavel
uri = URI('http://www.google.com/')

#criando um arquivo para copiar os dados dessa página
File.open('google.html', 'w') do |line|
  line.puts(caller.get(uri))
end