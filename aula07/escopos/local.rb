def foo
  #pode ser definida como "local" ou "_local"
  local = 'Local é acessada apenas dentro deste método'
  print local
end

foo #imprime o conteúdo da váriavel. (string "Local é acessada...")

puts local #erro pois local é uma variável presa ao escopo de onde foi declarada