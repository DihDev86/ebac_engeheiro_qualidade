            #language: pt

            Funcionalidade: calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: soma de 2 números
            Quando eu digitar <numero1>
            E digitar <numero2>
            Então deve exibir o <resultado>

            Exemplos:

            | numero1 | numero2 | resultado |
            | 1       | 1       | 2         |
            | 1       | 2       | 3         |
            | 1       | 3       | 4         |
            | 1       | 4       | 5         |
            | 1       | 5       | 6         |
            | 1       | 6       | 7         |
            | 1       | 8       | 9         |
            | 1       | 9       | 10        |
            | 1       | 11      | 12        |
            | 1       | 12      | 13        |