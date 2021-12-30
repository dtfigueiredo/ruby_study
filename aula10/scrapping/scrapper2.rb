require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
https.use_ssl = true

response = https.get('/page/22/')
scrap = Nokogiri::HTML(response.body)

#imprimindo o conteudo e o link para o primeiro retorno do 'array de posts da página'
# last_post = scrap.at('h3 a')
# puts last_post.content
# puts last_post['href']

#imprimindo o conteudo e o link para todos os retorno do 'array de posts da página'
scrap.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end