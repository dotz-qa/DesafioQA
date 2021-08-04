Dado('o endereço da API') do
    @request = Owm.new()

end

Quando('informo a latitude e longitude da melhor cidade visitada') do
    @response =  @request.latitude_and_longitude
end

Então('armazeno os dados do weather->main e o visibility') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('valido que o status code é {int}') do |int|
    expect(@response.code).to eq(200)
end