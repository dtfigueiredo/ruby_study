# diferenças entre LAMBDA & PROCS

## LAMBDAS são instâncias de PROCS

### lambdas são defindas como: "-> {//block here}" ou "lambda {//block here}" || podem ser armazenadas em variáveis (linha 18) || caso tenham parâmetros só executaram com o número exato de argumentos na chamada.

### procs são defindos como: "my_proc = Proc.new {block here}" || executam independente do número de argumentos na chamada em relação aos parâmetros (linha 13) || retornam referente ao método em que estão inseridos.

# exemplo 01 - parâmetros
myproc = Proc.new {|x| puts x}
myproc.call(10)

myproc2 = Proc.new { |x, y| puts "Don't care about parameters"}
myproc2.call

# exemplo 02 - retornos
## Lambdas vão retornar normalmente, conforme um método padrão
## Procs vão retornar de acordo com o contexto atual (mais ou menos como arrow function)
mylambda = -> {return 1}
puts "lambda result: #{mylambda.call}"

# retornando a partir do método
def proc_num4
  puts "before proc"
  myproc4 = Proc.new { puts "proc inside the method" }
  myproc4.call
  puts "after proc"
end

proc_num4