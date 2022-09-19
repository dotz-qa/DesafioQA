Dado('o endereço da API para ser realizada a requisição') do
    $response = Weather.new
end

Quando('o usuário insere a latitude e longitude da cidade de {string}') do |city|
    latitude = CITY[city]["latitude"]
    longitude = CITY[city]["longitude"]
    $resp = $response.getInfosByLatLong(latitude, longitude)
end

Quando('o usuário utiliza como parâmetro o nome da cidade de {string}') do |city|
    $resp = $response.getInfosByCityName(city)
end

Quando('o usuário utiliza como parâmetro o nome da cidade de {string} e um Appid inválido') do |city|
    $resp = $response.getInfosByCityNameWithInvalidAppid(city)
end

Então('o código {int} será retornado e a temperatura Kelvin convertida para Celsius') do |status_code|
    celsiusTemp = $response.convertKelvinToCelsius($resp["main"]["temp"])
    expect($resp["cod"]).to eq status_code
end

Então('o código {int} será retornado junto com o tempo e a visibilidade') do |status_code|
    weatherMain = $resp["weather"][0]["main"]
    visibility = $resp["visibility"]
    expect($resp["cod"]).to eq status_code
end

Então('o código {int} será retornado') do |status_code|
    expect($resp["cod"]).to eq status_code
end