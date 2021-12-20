# CÓDIGOS PARA INCLUIR EM OUTRAS CLASSES
module Impressao
  def imprimir (text)
    decoracao = '-' * 10
    puts decoracao
    puts text
  end
end

module Pernas
  include Impressao

  def chute_frontal
    imprimir "Chute frontal"
  end

  def chute_lateral
    imprimir "Chute lateral"
  end
end

module Bracos
  include Impressao

  def jab_esquerda
    imprimir "Jab de esquerda"
  end

  def jab_direita
    imprimir "Jab de direita"
  end

  def direto
    imprimir "Direto. Soco forte."
  end

  def gancho
    imprimir "Gancho cruzado. Golpe Finalizador"
  end
end

# lutador 01
class Lutador01
  include Bracos
end

# lutador 02
class Lutador02
  include Pernas
end

hitmonchan = Lutador01.new
hitmonlee = Lutador02.new

hitmonchan.jab_direita
hitmonchan.direto
hitmonchan.gancho

hitmonlee.chute_frontal
hitmonlee.chute_lateral