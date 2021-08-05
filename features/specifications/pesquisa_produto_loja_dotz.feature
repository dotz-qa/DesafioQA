#language: pt
#https://loja.dotz.com.br/
Funcionalidade: Loja Dotz
Como usuário da Dotz
Eu desejo pesquisar por produtos para verificar sua disponibilidade
A fim de obter informações do produto desejado

@pesquisa_produto
Cenario: Pesquisar produto na loja Dotz
Dado que estou na loja dotz
Quando pesquiso o produto Notebook
Então o resultado é uma lista de Notebook com vários modelos

Cenario: Produto inexistente
Dado que estou na loja dotz
Quando pesquiso o produto Crepioca
Então percebo que nenhum produto foi encontrado