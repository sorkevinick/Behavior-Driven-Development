            #language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro completo para finalizar compra

            Dado que sou um cliente da EBAC-SHOP
            E estou na página de "Detalhes de faturamento"
            Quando eu preencher os campos obrigatórios corretamente
            Então deve exibir uma mensagem "Cadastro Realizado Com Sucesso"


            Cenário: Impedir finalização de cadastro com e-mail inválido

            Dado que sou um cliente da EBAC-SHOP
            E estou na página de "Detalhes de faturamento"
            Quando tento digitar o e-mail "arthur.com"
            Então o sistema exibe uma mensagem de erro indicando que o formato do e-mail é inválido
            E não permite a finalização do cadastro


            Cenário: Exibir mensagem de alerta ao tentar cadastrar com campos vazios

            Dado que sou um cliente da EBAC-SHOP
            E estou na página de "Detalhes de faturamento"
            Quando eu não preencher os campos obrigatórios
            Então o sistema exibe uma mensagem de alerta indicando que todos os campos obrigatórios devem ser preenchidos


            Esquema do Cenário: Conclusão de Cadastro na EBAC-SHOP

            Dado que sou um cliente da EBAC-SHOP
            E estou na página de "Detalhes de faturamento"
            Quando eu digitar o <nome> <sobrenome> <país> <endereço> <cidade> <cep> <telefone> <e-mail>

            Exemplos:
            | nome | sobrenome | país   | endereço | cidade   | cep      | telefone    | e-mail         |
            | Ana  | Fanstone  | Brasil | Rua 12   | Goiania  | 7638000  | 33535055    | ana@gmail.com  |
            | joao | Pereira   | Brasil | Rua 14   | Brasília | 45638000 | 62985621234 | joao@gmail.com |


1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Preencha os Campos Obrigatórios”
