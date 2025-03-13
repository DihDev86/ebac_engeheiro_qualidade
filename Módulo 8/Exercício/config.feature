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








