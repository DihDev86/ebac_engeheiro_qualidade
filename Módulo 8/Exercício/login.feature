#Cenário usando contexto e esquema de cenário
            Funcionalidade: Login na plataforma
            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            #cenário 1
            Cenário: Autenticação válida
            Quando eu digitar o usuário 
            E a senha correta   
            Então deve exibir uma mensagem de "boas vindas"

            #cenário 2
            Cenário: Usuário inexistente
            Quando Eu digitar o usuário 
            E digitar usuário inexistente
            Então deve exibir uma mensagem de alerta "usuário inexistente"

            #cenário 3
            Cenário: Senha inválida
            Quando Eu digitar o usuário 
            E digitar senha incorreta
            Então deve exibir uma mensagem de alerta "Senha inválida"

            #Esquema do Cenário: Login na plataforma
            Esquema do Cenário: Login na plataforma
            Quando eu digitar <usuario>
            E a senha <senha>
            Então deve exibir uma <mensagem> de boas vindas

            Exemplos:

            | usuário            | senha      | mensagem              |
            | "diego@ebac.com"   | "senha123" | "Olá Diego"           |
            | "talita@ebac.com"  | "senha123" | "Olá Talita"          |
            | "maria@ebac.com"   | "senha123" | "Olá Maria"           |
            | "ninguem@ebac.com" | "senha123" | "Usuário inexistente" |
            | "joao@ebac.com"    | "errado"   | "Senha inválida"      |
            | "lucas@ebac.com"   | "senha123" | "Olá Lucas"           |

            #Entendi que as tags são escritas somente no esquema do cenário, não no cenário em si.
            #Tentei melhorar a fluidez da escrita, tinha alguns errros de digitação.
            #Tentei melhorar a descrição nos cenários. 