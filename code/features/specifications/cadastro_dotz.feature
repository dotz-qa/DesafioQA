#language:pt
@Cadastro 
Funcionalidade: Validar Cadastro no site da Dotz
	Como Usuário
	Eu quero realizar o cadastro 
	A fim de conseguir uma conta no site  

	@cadastroValido
	Cenário: Validar cadastro com sucesso no site Dotz 
		Dado que o usuário acessar o site da "Dotz" 
		Quando o usuário clica no botão Cadastrar 
        E insere um CPF válido   
        E aceita os termos de uso
        E clica no botão Entrar
		Então o usuário é redirecionado para a tela inicial do usuário 

    @cadastroInvalido
	Cenário: Validar cadastro dados inválidos no site Dotz 
		Dado que o usuário acessar o site da "Dotz" 
		Quando o usuário clica no botão Cadastrar 
        E insere um CPF inválido  
		Então o botão de Entrar deve ficar desabilitado  
