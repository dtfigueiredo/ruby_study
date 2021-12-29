### CHAMANDO O SELF ATRAVÉS DE UMA INSTÂNCIA
class Test
  def poc
    puts self
  end
end

testando = Test.new

puts testando # retorna o objeto criado pela instância
testando.poc # retorna o objeto criado pela instância

### CHAMANDO ATRAVES DA PROPRIA CLASSE
class Test2
  def self.test
    puts self
  end
end

Test2.test # retorna a própria classe ao invés do obj de instância

### 
class Pen
  attr_accessor :color

  def colored
    puts "A cor da caneta é #{self.color}" # imprime a cor adicionada ao atributo após instanciação.''
  end
end

bic = Pen.new
bic.color = 'azul'
bic.colored