            #language: pt

            Funcionalidade: tela de login
            como aluno do portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxx@ebac.com.br"
            E senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E senha "fsdfsdfds"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválida"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a mensagem <mensagem> de sucesso

            Exemplos:
            | usuario            | senha      | mensagem    |
            | "joao@ebac.com.br" | "test@123" | "olá João!" |
            | "maria@ebac.com.br" | "test@123" | "olá Maria!" |
            | "lucas@ebac.com.br" | "test@123" | "olá Lucas!" |









