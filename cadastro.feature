#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho


Contexto:
Dado que eu tente comprar um produto da loja


Cenário: Seleção Válida
Quando eu selcionar a cor "Blue"
E o tamanho "S"
E a quantidade "1"
Então poderá seguir para a compra

Cenário: Seleção Inválida
Quando eu selcionar a cor "Blue"
E não selecionar o tamanho
E a quantidade "1"
Então deve exibir uma mensagem de alerta: "PREENCHA TODAS AS INFORMAÇÕES: COR, TAMANHO e QUANTIDADE"

Cenário: Quantidade de Produtos Válidos
Quando eu adicionar 3 produtos no carrinho
E selecionar comprar
Então poderá seguir para a compra

Cenário: Quantidade de Produtos Inválidos
Quando eu adicionar 11 produtos no carrinho
E selecionar comprar
Então deve exibir um mensagem de erro: "O carrinho permite apenas 10 produtos por venda"

Cenário: Limpar
Quando eu selcionar a cor
E  selecionar o tamanho
E clicar no botão "limpar"
Então deve voltar ao estado original


