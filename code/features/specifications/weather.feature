#language:pt
Funcionalidade: Verificação de dados de tempo utilizando a API OpenWeather
	Como Usuário
	Eu quero realizar uma requisição
	A fim de verificar dados de tempo sobre uma cidade arbitrária 

	@statusCodeValido
	Cenário: Validar status code e capturar temperatura   
		Dado o endereço da API para ser realizada a requisição 
		Quando o usuário utiliza como parâmetro o nome da cidade de "Patos"
		Então o código 200 será retornado e a temperatura Kelvin convertida para Celsius

	@latitudeLongitudeValidas
	Cenário: Validar status code e capturar informações de tempo e visibilidade  
		Dado o endereço da API para ser realizada a requisição 
		Quando o usuário insere a latitude e longitude da cidade de "João Pessoa"
		Então o código 200 será retornado junto com o tempo e a visibilidade 

	@appidInvalido
	Cenário: Validar uso de appid inválido    
		Dado o endereço da API para ser realizada a requisição 
		Quando o usuário utiliza como parâmetro o nome da cidade de "Campina Grande" e um Appid inválido
		Então o código 401 será retornado 