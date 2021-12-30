require 'rest-client'
require 'json'

class Translator

  def initialize

    @endpoint = 'https://api.cognitive.microsofttranslator.com/'
    @path = '/translate?api-version=3.0'
    @headers = {"Ocp-Apim-Subscription-Key" => "4fed8bd724d0457cb8122cffa6850bd4", "Ocp-Apim-Subscription-Region" => "brazilsouth", "Content-Type": "application/json"}
    @params = "&from=#{@lang_original}&to=#{@lang_translated}"

    print "Digite a frase para ser traduzida: "
    @text_to_translate = gets.chomp
    print "Digite o idioma original (pt-br, en, it, fr, etc): "
    @lang_original = gets.chomp
    print "Digite o idioma para o qual quer traduzir (pt-br, en, it, fr, etc): "
    @lang_translated = gets.chomp

    generate_file
  end

  #método para traduzir o texto
  def translate_text
    content = '[{"Text" : "' + @text_to_translate + '"}]'

    body_request = send_request(content)

    return body_request
  end

  #método request
  def send_request(content)
    url_to_request = @endpoint+@path+@params
    response = RestClient.post(url_to_request, content, @headers).force_encoding("utf-8")

    return JSON.parse(response)
  end

  #método para gerar o arquivo
  def generate_file
    puts 'translating...'

    result = translate_text

    date_time = Time.now
    file = File.open("log_#{date_time.strftime('%d-%m-%y_%H-%M')}.txt", "w") do |line|
      line.write(result)
    end
  end

end

app = Translator.new