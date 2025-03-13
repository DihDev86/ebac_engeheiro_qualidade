#Cenário usando contexto
            Funcionalidade: Tela de cadastro - check-out

            Contexto:
            Dado que eu queira fazer o cadastro na plataforma EBAC-SHOP

            #cenário 1
            Cenário: Dados obrigatórios
            Quando eu preencher todos os campos obrigatórios marcados com asteriscos
            Então devo ver uma mensagem de sucesso "Cadastro realizado com sucesso"

            #cenário 2
            Cenário: Cadastrar e-mail no formato inválido
            Quando eu preencher o campo de e-mail com um formato inválido
            Então devo ver uma mensagem de alerta "E-mail inválido"

            #cenário 3
            Cenário: Tentativa de cadastro com campos vazios
            Quando eu tentar cadastrar sem preencher nenhum campo obrigatório
            Então devo ver uma mensagem de alerta "Preencha todos os campos obrigatórios"

            #Realmente me senti confuso em relação ao uso do E, me parecia desnecessário. Obrigado pelo feedback!