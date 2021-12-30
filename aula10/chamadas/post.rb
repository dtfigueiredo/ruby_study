require 'net/http'

httplib = Net::HTTP

post = httplib::Post.new('/api/users')
#para fazer chamadas post https
post.set_form_data({name: 'Mario', job: 'Encanador'})

response = httplib.start('reqres.in', use_ssl: true) do |https|
  https.request(post)
end

puts response.code
puts response.body