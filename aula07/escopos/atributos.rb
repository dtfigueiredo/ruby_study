class Dog
  def name
    @dog_name
  end

  def name= name
    @dog_name = name
  end
end

pudou = Dog.new
pudou.name = 'Marlon'
puts pudou.name