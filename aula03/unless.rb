store_state = "open"

#funciona da mesma maneira que if/else porém a primeira execução é a negativa (a menos que)
unless store_state == "open"
  check_state = "can not"
else
  check_state = "can"
end

puts "You #{check_state} enter the store."