### MÉTODOS PRIVADOS SÓ PODEM SER CHAMADOS POR OUTROS MÉTODOS DE UMA MESMA CLASSE

class Private_test
  def call_private
    private_method
  end

  private

  def private_method
    puts "This is a private method!"
  end
end

teste = Private_test.new
teste.call_private
teste.private_method #erro