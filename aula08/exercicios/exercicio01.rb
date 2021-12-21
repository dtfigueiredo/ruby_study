# criar um método que receba uma lambda que irá transformar um nome para que sua primeira letra seja maiúscula. método capitalize

my_lambda = -> (name){puts name.capitalize}

def capitalize_string(my_lambda)
  my_lambda.call('daniel')
  my_lambda.call('naxulha')
end

capitalize_string(my_lambda)