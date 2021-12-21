# criar um módulo chamado Person com as classes Juridic e Physical

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts "----------"
      puts "Pessoa Jurídica Adicionada"
      puts "Nome: #{@name}"
      puts "CNPJ: #{@cnpj}"
      puts "----------"
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "----------"
      puts "Pessoa Física Adicionada"
      puts "Nome: #{@name}"
      puts "CNPJ: #{@cpf}"
      puts "----------"
    end
  end
end

juridico = Person::Juridic.new('Calopsitas S/A', '1234.567/0001-01').add
pessoinha = Person::Physical.new('Ikki', '123.456.789-10').add
