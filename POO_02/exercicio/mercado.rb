class Market
  def initialize(name, price)
    @product = name
    @price = price
  end

  def buy
    puts "Você comprou => Produto: #{@product}, Valor: #{@price}R$"
  end
end