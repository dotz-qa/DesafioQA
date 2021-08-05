#language: pt
Funcionalidade: Obter dados meteorológicos pelo nome da cidade
Como usuário do sistema do tempo
Eu quero realizar um request para obter informações meteorológicas da minha cidade
A fim de obter os dados da temperatura para realizar conversão

@name_city
Cenario: Validações para cidade de origem
Dado o endereço da API
Quando  é informado a cidade de origem
Então verifico que o status code é 200
E há conversão de kelvin para celsius

@token
Cenario: Token invalido
Quando informo a cidade de origem com token inválido
Então percebo que o status code é 401 e a mensagem "Invalid API key. Please see http://openweathermap.org/faq#error401 for more info."