require 'cpf_cnpj'
#ENTRADA: UM NÚMERO DE CPF
#MÉTODO PARA VERIFICAR SE O CPF É VÁLIDO

puts "VALIDADOR DE CPF/CNPJ"
print "DIGITE O NÚMERO DO DOCUMENTO A SER VERIFICADO: "
documento = gets.chomp.to_i

def validar_cpf num
  
  if CPF.valid?(num)
    cpf = CPF.new(num)
    "CPF VALIDO: #{cpf.formatted}"
  else
    "Documento não existe."
  end

end

resultado = validar_cpf(documento)

puts resultado