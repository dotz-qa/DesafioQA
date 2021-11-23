Funcionalidade: Verificar se o usuário consegue utilizar a funcionalidade de Login via WEB
Como usuário da Dotz
Eu quero logar no site da Dotz
A fim fazer o uso do site autenticado

Cenário: Fazer Login na Dotz com um usuário válido
  Dado que o usuário esteja na tela de Login da Dotz
  E utilize um cpf válido
  Quando é preenchido o campo senha com valor correto
  E é preenchido o campo data de nascimento com o valor correto
  Então é feito o login corretamentamente

Cenário: Tentar fazer Login com cpf válido que não esteja cadastrado
  Dado que o usuário esteja na tela de Login da Dotz
  E utilize um cpf válido que não esteja cadastrado
  Então é carregado os componentes referente ao Regulamento e Política de Privacidade