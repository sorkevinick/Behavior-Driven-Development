#language: pt
Funcionalidade: Tela de Login

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu acesse página de login da EBAC-SHOP

Cenário: Autenticação Válida
Quando eu digitar o usuario "kevin@gmail.com"
E a senha "senha123"
Então deve exibir uma mensagem de boas vindas: "OLÁ KEVIN"

Cenário: Usuário inexistente
Quando eu digitar o usuario "zeninguem@gmail.com"
E a senha "senha123"
Então deve exibir uma mensagem de alerta: "USUÁRIO INEXISTENTE"

Cenário: Usuário com senha inválida
Quando eu digitar o usuario "kevin@gmail.com"
E a senha "ahgdhsa"
Então deve exibir uma mensagem de alerta: "USUÁRIO OU SENHA INVÁLIDOS"

Esquema do Cenário: Autenticar múltiplos usários
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir uma <mensagem> de sucesso

Exemplos:
| usuario           | senha      | mensagem    |
| "kevin@gmail.com" | "senha123" | "OLÁ KEVIN" |
| "joao@gmail.com"  | "senha123" | "OLÁ JOAO"  |
| "noa@gmail.com"   | "senha123" | "OLÁ NOA"   |

1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
 
