characters = {
  'falcon' => 'MARVEL',
  'black_widow' => 'MARVEL',
  'flash' => 'DC',
  'batman' => 'DC',
  'hulk' => 'MARVEL',
  'green_arrow' => 'DC'
}

selected_characters = characters.select do |key, value|
  key[0] == 'f'
end

puts selected_characters

marvel_characters = characters.select do |key, value|
  value == 'MARVEL'
end

puts marvel_characters