require_relative 'animal'
require_relative 'cachorro'

puts "---Animal---"
bixano = Animal.new
bixano.dormir

puts "---Cachorro---"
bulldog = Cachorro.new
bulldog.dormir
bulldog.latir
