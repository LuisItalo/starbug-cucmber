#language: pt

Funcionalidade: Catalogo de cafes
    Como um usuario do site,  
    Eu quero ver o catalogo de cafes na pagina principal 
    Para que eu possa escolher e saber mais sobre os produtos disponiveis

Cenário: Acessar o catalogo de cafes na pagina principal

    Quando acesso a pagina principal da Starbugs
    Entao eu devo ver uma lista de cafe disponiveis


Cenário: Iniciar a compra de um cafe

    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name     | Expresso Gelado |
        | price    | R$ 9,99         |
        | delivery | R$ 10,00        |
    Quando inicio a compra desse item
    Entao devo ver a pagina de Checkout com os detalhes do produto
        E com o valor total da compra deve ser de "R$ 19,99"


Cenário: Cafe indisponivel

    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name | Expresso Cremoso |
    Quando inicio a compra desse item
    Entao devo ver um pop-up informando que o produto esta indisponivel