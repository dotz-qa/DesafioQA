Dado('o endereço da API para fazer uma requisição de acordo com a cidade de origem') do
  $response = OpenWeather.new
end

Quando('é feita a requisição enviando como cidade {string}') do |city|
  $resp = $response.getTemperatureByCity(city)
end

Então('a API retornará a temperatura referente a cidade {string}') do |city|
  expect($resp["cod"]).to eq(200)
  temp_kelvin = $resp["main"]["temp"]
  $temp_celsius = $response.convertKelvinToCelsius(temp_kelvin)
  log "Temperatura em Celsius: #{$temp_celsius}"
end

Dado('o endereço da API para fazer uma requisição de acordo com a latitude e longitude') do
  $response = OpenWeather.new
end

Quando('é feita a requisição enviando latitude: {float} , longitude: {float}') do |lat, lon|
  $resp = $response.getTemperatureByLatLong(lat, lon)
end

Quando('é feita a requisição enviando um appid inválido') do
  $resp = $response.getUnAuthorized("Rio de Janeiro")
end

Então('a API retornará status code {int}') do |cod|
  expect($resp["cod"]).to eq(cod)
end

Então('a API retornará a temperatura referente a latitude: {float} , longitude: {float}') do |float, float2|
  $weather = $resp["weather"][0]["main"]
  $visibility = $resp["visibility"]
  log "Weather: #{$weather} and Visibility: #{$visibility}"
  expect($resp["cod"]).to eq(200)
end
