class Fish
  def method_missing (method)
    puts "Fish doesn't have the '#{method}' action"
  end

  def swim
    puts "Fish is swimming"
  end
end

drake = Fish.new
drake.swim
drake.talk