phrase = "Olá tudo bem? Meu whatsapp é (11) 97474-0718"

phone_regex = /\(\d{2}\) \d{5}-\d{4}/.match(phrase)
puts phone_regex