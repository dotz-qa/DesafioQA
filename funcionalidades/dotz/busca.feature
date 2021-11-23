#language: pt

Funcionalidade: Verificar se o usuário consegue utilizar a funcionalidade de Busca via WEB
Como usuário da Dotz
Eu quero realizar buscas no site
A fim de procurar por um determinado produto

Cenário: Buscar por um produto específico
  Dado que o usuário esteja na home da Dotz
  Quando é feita uma busca por "Iphone"
  Então é exibido o resultado da busca com a mensagem "Foram encontrados"

Cenário: Buscar por um produto não encontrado
  Dado que o usuário esteja na home da Dotz
  Quando é feita uma busca por "testando"
  Então é exibido o resultado da busca com a mensagem "Nenhum produto encontrado"