#language: pt

@weather
Funcionalidade: Verificar a temperatura utilizando a API OpenWeather
Como usuário da openWeather API
Eu quero realizar as requisições na API
A fim de ter uma resposta da API de acordo com as infos passadas

Cenário: Verificar a temperatura por cidade
  Dado o endereço da API para fazer uma requisição de acordo com a cidade de origem
  Quando é feita a requisição enviando como cidade "Rio de Janeiro"
  Então a API retornará a temperatura referente a cidade "Rio de Janeiro"

Cenário: Verificar a temperatura utilizando latitude e longitude
  Dado o endereço da API para fazer uma requisição de acordo com a latitude e longitude
  Quando é feita a requisição enviando latitude: -23.3369 , longitude: -44.6288
  Então a API retornará a temperatura referente a latitude: -23.3369 , longitude: -44.6288

Cenário: Verificar a temperatura por cidade
  Dado o endereço da API para fazer uma requisição de acordo com a cidade de origem
  Quando é feita a requisição enviando um appid inválido
  Então a API retornará status code 401
