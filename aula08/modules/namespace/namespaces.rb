# NAMESPACES SÃO CONTAINERS PARA AGRUPAR OBJETOS RELACIONADOS (CLASSES, CONSTANTES, MÉTODOS OU OUTROS MODULES)

module ReverseWorld
  def self.puts (text)
    print text.reverse.to_s
  end

  class Imprimir
    def printer (text)
      print text
      print ' --- printed ---'
    end 
  end
end

texto = 'texto para ser invertido no módulo'

ReverseWorld::puts texto #sobreescrita do método puts para não causar conflito com o método padrão do ruby (linha 12)
puts ' -- texto para ser invertido no módulo'

printer_hp =  ReverseWorld::Imprimir.new #instanciando uma classe dentro do namespace
puts printer_hp.printer(texto)