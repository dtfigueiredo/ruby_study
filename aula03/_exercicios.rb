# criar uma calculadora que ofereça as operções básicas ao usuário

result = ''

loop do
  puts result
  puts "CALCULADORA BÁSICA DE TERMINAL"
  print "GOSTARIA DE REALIZAR ALGUM CÁLCULO? (Y/N): "
  inicio = gets.chomp

  if inicio == "Y" || inicio == "y"
    print "Digite o primeiro número para a calculadora: "
    num1 = gets.chomp.to_i
    print "Digite o segundo número para a calculadora: "
    num2 = gets.chomp.to_i

    puts "1 - Somar  |  2 - Subtrair  |  3 - Dividir  |  4 - Multiplicar  |  5 - Sair"
    puts "Escolha a operação que quer realizar: "
    option = gets.chomp.to_i

    case option
      when 1 
        result = "A soma entre #{num1} e #{num2} é: #{num1 + num2}."
      when 2
        result = "A subtração entre #{num1} e #{num2} é: #{num1 - num2}."
      when 3
        result = "A divisão entre #{num1} e #{num2} é: #{num1 / num2}."
      when 4
        result = "A multiplicação entre #{num1} e #{num2} é: #{num1 * num2}."
      when  5
        break
      else
        result = "Operação inválida"
    end

  elsif inicio == "N" || inicio == "n"
    break

  else
    result = "Opção inválida"
    
 end

  system "clear"
end
