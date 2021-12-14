class Esportista
    def competir
        puts "Participando de uma competição."
    end
end

class JogadorFutebol < Esportista
    def correr
        puts "Correndo atrás da bola."
    end
end

class Maratonista < Esportista
    def correr
        puts "Percorrendo o circuito."
    end
end

neymar = JogadorFutebol.new
puts "Jogador de Futebol:"
neymar.competir
neymar.correr

bolt = Maratonista.new
puts "Maratonista:"
bolt.competir
bolt.correr