class Car
  def get_km(phrase)
    find_km(phrase)
  end

  private
  def find_km(phrase)
    km_regex = /\d{2,}[a-z]{2}\/[a-z]/.match(phrase)
    puts km_regex
  end
end

logan = Car.new
logan.get_km("Velocidade máxima do Logan é 160km/h")