            #languague: pt

            #Cenário simples
            Funcionalidade: Configuração do produto

            Cenário: Configurar produto
            Dado queira um produto
            Quando eu selecionar o produto, posso escolher a cor e o tamanho
            E escolher a quantidade
            Então devo inserir o produto no carrinho

            Cenário: Limite de produtos
            Dado que eu tenha 10 produtos no carrinho
            E queira adicionar mais produtos
            Então deve exibir uma mensagem de alerta: "Limite de produtos atingido"

            Cenário: Esvaziar carrinho 
            Dado que eu tenha produtos no carrinho
            E queira esvaziar o carrinho
            Então deve exibir uma mensagem de confirmação: "Tem certeza que deseja esvaziar o carrinho?"

            #---------------------------------------------------------------------------------------------------------------------------------

            #Cenário usando contexto e esquema de cenário
            Funcionalidade: Login na plataforma
            Contexto:
            Dado que eu acessa a página de autenticação da EBAC-SHOP

            #cenário 1
            Cenário: Autenticação válida
            Quando eu digitar o usuário <usuario>
            E senha <senha>
            Então deve exibir uma <mensagem> de "boas vindas"

            #cenário 2
            Cenário: Usuário inexistente
            Quando Eu digitar o usuário <usuario>
            E senha <senha>
            Então deve exibir uma <mensagem> de alerta "usuário inexistente"

            #cenário 3
            Cenário: Senha inválida
            Quando Eu digitar o usuário <usuario>
            E senha <senha>
            Então deve exibir uma <mensagem> de alerta "Senha inválida"

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

            #---------------------------------------------------------------------------------------------------------------------------------
            
            #Cenário usando contexto
            Funcionalidade: Tela de cadastro - check-out

            Contexto:
            Dado que eu queira fazer o cadastro na plataforma EBAC-SHOP

            #cenário 1
            Cenário: Dados obrigatórios
            Quando eu preencher todos os campos obrigatórios marcados com asteriscos
            E tentar cadastrar
            Então devo ver uma mensagem de sucesso "Cadastro realizado com sucesso"

            #cenário 2
            Cenário: Cadastrar e-mail no formato inválido
            Quando eu preencher o campo de e-mail com um formato inválido
            E tentar cadastrar
            Então devo ver uma mensagem de alerta "E-mail inválido"

            #cenário 3
            Cenário: Tentativa de cadastro com campos vazios
            Quando eu tentar cadastrar sem preencher nenhum campo obrigatório
            E tentar cadastrar
            Então devo ver uma mensagem de alerta "Preencha todos os campos obrigatórios"








