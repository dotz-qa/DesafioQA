#language:pt
@Login 
Funcionalidade: Validar Login no site da Dotz
	Como Usuário
	Eu quero realizar login 
	A fim de conseguir utilizar as funcionalidades do site 

	@loginValido
	Cenário: Validar login com sucesso no site Dotz 
		Dado que o usuário acessar o site da "Dotz" 
		Quando o usuário clica no botão Entrar 
       	E insere um CPF válido cadastrado  
        E clica no botão Entrar 
		Então o usuário é redirecionado para a tela inicial do usuário 

    @loginInvalido
	Cenário: Validar login com dados inválidos no site Dotz 
		Dado que o usuário acessar o site da "Dotz" 
		Quando o usuário clica no botão Entrar 
        E insere um CPF inválido  
		Então o botão de Entrar deve ficar desabilitado  
