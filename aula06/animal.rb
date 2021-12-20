class Animal
    def pular
        puts "jump jump jump"
    end

    def dormir
        puts "zzzzzzzzzzzzz"
    end
end

class Cachorro < Animal
    def latir
        puts "au au au"
    end
end

class Gato < Animal
    def miar
        puts "meow meow"
    end
end

pudou = Cachorro.new
pudou.latir
pudou.dormir

bixano = Gato.new
bixano.miar
bixano.dormir