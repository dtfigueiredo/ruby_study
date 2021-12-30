File.open('shopping-list.txt', 'a') do |line| # 'a' para append -> não sobrescreve o original
  line.puts('arroz')
  line.puts('feijão')
  line.puts('macarrão')
  line.puts('toranja')
  line.print('óleo') #print pois o puts pularia uma linha para cada inserção
  line.print(' de ')
  line.print('soja')
  puts  
end
