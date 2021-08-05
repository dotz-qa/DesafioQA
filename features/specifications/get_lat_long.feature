#language: pt

Funcionalidade: Obter dados meteorológicos pela latitude e longitude
Como usuário do sistema do tempo
Eu quero realizar um request para obter informações meteorológicas pela latitude e longitude
A fim de obter os dados weather->main e o visibility

@lat_long
Cenario: Validações para latitude e longitude informada
Dado o endereço da API utilizada para o request
Quando  informo a latitude e longitude da melhor cidade visitada
Então armazeno os dados do weather->main e o visibility
E valido que o status code é 200