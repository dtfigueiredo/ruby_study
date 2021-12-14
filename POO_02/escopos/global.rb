class Bar
  def foo
    $global = 0
    puts "foo: #{$global}"
  end
end

class Boteco
  def foofoo
    $global+=1
    puts "foofoo: #{$global}"
  end
end

bar = Bar.new
boteco = Boteco.new

bar.foo #0
boteco.foofoo #1
boteco.foofoo #2
bar.foo #0
boteco.foofoo #1