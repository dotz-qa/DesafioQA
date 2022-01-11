Quando('faço uma requisição GET da minha cidade origem para o serviço Weather') do
    @request_weather = weather.get_origem("Botucatu", "5b1f44bf561cf8f740907980a9b04cd9", "metric")
  end
  
  Então('o serviço Weather deve responder com {int}') do |status_code|
    expect(@request_weather.code).to eq status_code

  end
  
  Então('armazenar o valor de temp em celsius') do
    @temperatura = @request_weather.parsed_response['main']

  end

  Quando('faço uma requisição GET passando lat e lon da cidade para o serviço Weather') do
    @request_weather = weather.get_latlon("-22.8904", "-48.4553", "5b1f44bf561cf8f740907980a9b04cd9")
    
  end
  
  Então('armazenar o valor de main dentro de weather e visibility') do
    @dados = @request_weather.parsed_response['weather' + 'visibility']
  end

  Quando('faço uma requisição GET da minha cidade para o serviço Weather com uma autenticacao invalida') do
    @request_weather = weather.get_origem("Botucatu", "c35205acc8938d356723d78d1d48a76", "metric")

  end
  
  Então('o servico weather deve retornar Unauthorized status code {int}') do |status_code|
    expect(@request_weather.code).to eq status_code

  end
