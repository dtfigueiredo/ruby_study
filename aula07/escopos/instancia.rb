class User
  def add(name)
    @name = name
    puts "User adicionado"
    hello
  end

  def hello
    puts "Bem vindo, #{@name}"
  end
end

user = User.new
user.add('Jeremias')

user2 = User.new
user.add('Daniel')