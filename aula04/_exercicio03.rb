numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

biggest_number = numbers.values.sort.pop

selected_number = numbers.select do |key, value|
  value == biggest_number
end

puts selected_number