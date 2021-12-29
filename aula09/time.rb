# CLASSE TIME => TRABALHA COM DATA E HORAS
$agora = Time.now

# https://www.shortcutfoo.com/app/dojos/ruby-date-format-strftime/cheatsheet -> shortcuts date format
dia_lambda = lambda {
  week_day = $agora.strftime('%A')
  dia_da_semana = ''
  
  case week_day
  when 'Sunday'
    dia_da_semana = 'Domingo'
  when 'Monday'
    dia_da_semana = 'Segunda-Feira'
  when 'Tuesday'
    dia_da_semana = 'Terça-Feira'
  when 'Wednesday'
    dia_da_semana = 'Quarta-Feira'
  when 'Thursday'
    dia_da_semana = 'Quinta-Feira'
  when 'Friday'
    dia_da_semana = 'Sexta-Feira'
  when 'Saturday'
    dia_da_semana = 'Sábado'
  else
    dia_da_semana = 'Data inválida'
  end
  
  dia_da_semana
}

mes_lambda = lambda {
  month = $agora.strftime('%B')
  mes_do_ano = ''
  
  case month
  when 'January'
    mes_do_ano = 'Janeiro'
  when 'February'
    mes_do_ano = 'Fevereiro'
  when 'March'
    mes_do_ano = 'Março'
  when 'April'
    mes_do_ano = 'Abril'
  when 'May'
    mes_do_ano = 'Maio'
  when 'June'
    mes_do_ano = 'Junho'
  when 'July'
    mes_do_ano = 'Julho'
  when 'August'
    mes_do_ano = 'Agosto'
  when 'September'
    mes_do_ano = 'Setembro'
  when 'October'
    mes_do_ano = 'Outubro'
  when 'November'
    mes_do_ano = 'Novembro'
  when 'December'
    mes_do_ano = 'Dezembro'
  else
    mes_do_ano = 'Data inválida'
  end
  
  mes_do_ano
}

def imprimir_data(dia_lambda, mes_lambda)
  puts "Hoje é: #{$agora.strftime("%d/#{mes_lambda.call}/%Y - #{dia_lambda.call}")}"
end

imprimir_data(dia_lambda, mes_lambda)
# puts $agora
# puts dia_lambda.call
# puts mes_lambda.call