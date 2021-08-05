Dado('o endereço da API utilizada para o request') do
    $request = Owm.new()
end

Quando('é informado a cidade de origem') do
    @response =  $request.city
end

Então('verifico que o status code é {int}') do |status_code|
    expect(@response.code).to eq(status_code)
end

Então('há conversão de kelvin para celsius') do
    @converter = $request.kelvin_to_celsius(@response["main"]["temp"], @response["main"]["temp_max"], @response["main"]["temp_min"])
    log "Kelvin to Celsius: #{@converter[0]}"
    log "Kelvin to Celsius: #{@converter[1]}"
    log "Kelvin to Celsius: #{@converter[2]}"
end

Quando('informo a cidade de origem com token inválido') do
  @response_token_invalid =  $request.token_invalid
end

Então('percebo que o status code é {int} e a mensagem {string}') do |status_code, mensagem|
    expect(@response_token_invalid["cod"]).to eq status_code
    expect(@response_token_invalid["message"]).to eq mensagem
end