require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
# chamadas https
https.use_ssl = true
# resposta referente ao index
response = https.get('/')
# utilizando o Nokogiri para ler a resposta html
page = Nokogiri::HTML(response.body)
# realizando uma pesquisa referente à 'h2'
h1 = page.at('h1')
h3 = page.at('h3')
# imprimindo o conteúdo da pesquisa
puts "RETORNO H1"
puts h1.content
puts "RETORNO H3"
puts h3.content

