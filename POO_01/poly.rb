class Ferramenta
    def escrever
        "escrevendo"
    end
end

class Teclado < Ferramenta
    def escrever
        puts "teclaaaaaaaaaado"
        super
    end
end

class Lapis < Ferramenta
    def escrever
        "escrevendo à lápis"
    end
end

class Caneta < Ferramenta
    def escrever
        "escrevendo à caneta"
    end
end

keyboard = Teclado.new
puts "teclado: " + keyboard.escrever
faber_castel = Lapis.new
puts "lapis: " + faber_castel.escrever
bic = Caneta.new
puts "cabeta: " + bic.escrever
