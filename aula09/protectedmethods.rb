### MÉTODOS PROTEGIDOS 

class Protected_methods
  def call_protected(instance)
    instance.protected_method
  end

  protected
  def protected_method
    puts "This is a protected method."
  end
end

protec01 = Protected_methods.new
protec02 = Protected_methods.new

protec01.call_protected(protec01)
protec02.call_protected(protec02)

protec01.call_protected(protec02) #funciona. podemos utilizar um metodo protegido a partir de uma outra instancia do mesmo objeto
protec01.call_protected #erro pois somente através da instância como parâmetro o método protegido pode ser acessado