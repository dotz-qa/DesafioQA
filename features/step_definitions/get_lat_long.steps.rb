Dado('o endereço da API') do
    $request = Owm.new()
end

Quando('informo a latitude e longitude da melhor cidade visitada') do
    @response =  $request.latitude_and_longitude
end

Então('armazeno os dados do weather->main e o visibility') do
    @armezena_dados = store_information(@response["weather"][0]["main"], @response["visibility"])
    log "Main: #{@armezena_dados[0]}"
    log "Visibility: #{@armezena_dados[1]}"
end

Então('valido que o status code é {int}') do |status_code|
    expect(@response.code).to eq(status_code)
end