#language: pt
@name_city
Funcionalidade: Obter dados pelo nome da cidade
Como usuário do sistema do tempo
Eu quero realizar um request para obter informações meteorológicas da minha cidade
A fim de obter os dados da temperatura para realizar conversão

Cenario: Validações para cidade de origem
Dado o endereço da API utilizada para o request
Quando  é informado a cidade de origem
Então verifico que o status code é 200
E há conversão de kelvin para celsius