require 'net/http'

https = Net::HTTP.new('reqres.in', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get("/api/users")
# status code
puts "code: #{response.code}"
# status message
puts "message: #{response.message}"
# body (json)
puts "json: "
puts response.body