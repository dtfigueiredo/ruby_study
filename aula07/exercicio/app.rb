require_relative 'produto'
require_relative 'mercado'

product = Product.new
product.name = "Chinelo"
product.price = 25

market = Market.new(product.name, product.price)
puts market.buy