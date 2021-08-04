Dado('o endereço da API utilizada para o request') do
    @request = Owm.new()

end

Quando('é informado a cidade de origem') do
    @response =  @request.city
end

Então('verifico que o status code é {int}') do |int|
    expect(@response.code).to eq(200)
end

Então('há conversão de kelvin para celsius') do
    log "Tempetura: #{@response["main"]["temp"]}"
    log "Temperatura máxima: #{@response["main"]["temp_max"]}"
    log "Temperatura miníma: #{@response["main"]["temp_min"]}"
    @converter = @request.kelvin_to_celsius(@response["main"]["temp"], @response["main"]["temp_max"], @response["main"]["temp_min"])
    log "Kelvin to Celsius: #{@converter[0]}"
    log "Kelvin to Celsius: #{@converter[1]}"
    log "Kelvin to Celsius: #{@converter[2]}"
end