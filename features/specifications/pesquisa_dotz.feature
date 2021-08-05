#language: pt
#https://www.dotz.com.br/
Funcionalidade: Página inicial Dotz
Como um visitante ao site da Dotz
Eu desejo pesquisar na homepage
A fim de obter informações sobre minha pesquisa

@pesquisa_homepage
Cenario: Obter informaçoes sobre o que deseja na homepage
Dado que estou na homepage da Dotz
Quando procuro por Clube
Então o resultado é uma lista com vários itens Associado ao Clube Dotz

Cenario: Produto inexistente
Dado que estou na loja dotz
Quando pesquiso o produto Chiclete
Então percebo que nenhum produto foi encontrado