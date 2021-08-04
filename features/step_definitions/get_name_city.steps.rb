Dado('o endereço da API utilizada para o request') do
    $uri_teste = "http://api.openweathermap.org/data/2.5/weather?q=#{@cidade}&appid=#{@appid_is_valid}"
    log  "#{$uri_teste}"
end

Quando('é informado a cidade de origem') do
    $resultado = HTTParty.get($uri_teste);
    log  "#{$resultado}"
end

Então('verifico que o status code é {int}') do |int|
    log "status code #{$resultado.code}"
end

Então('há conversão de kelvin para celsius') do
  pending # Write code here that turns the phrase above into concrete actions
end