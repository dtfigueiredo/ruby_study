numbers = [1,2,3,4,5]

double_numbers = numbers.map do |a|
  a*2
end

puts 'Array original: '
puts "#{numbers}"
puts 'Array manipulado: '
puts "#{double_numbers}"