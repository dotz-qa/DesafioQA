#language: pt

@weather
Funcionalidade: Weather
    validar operações da API Weather

    @get_cidadeOrigem
    Cenário: Validar GET API Weather
        Quando faço uma requisição GET da minha cidade origem para o serviço Weather
        Então o serviço Weather deve responder com 200
        E armazenar o valor de temp em celsius

        @get_cidadeLatLon
    Cenário: Validar GET API Weather com latitude e longitude
        Quando faço uma requisição GET passando lat e lon da cidade para o serviço Weather
        Então o serviço Weather deve responder com 200
        E armazenar o valor de main dentro de weather e visibility

   @get_keyinvalida
    Cenário: Validar acesso nao autorizado
        Quando faço uma requisição GET da minha cidade para o serviço Weather com uma autenticacao invalida
        Então o servico weather deve retornar Unauthorized status code 401