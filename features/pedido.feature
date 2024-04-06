#language: pt

Funcionalidade: Pedidos

    como um usuario do site starbugs, eu quero selecionar e comprar cafes
    para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

    @smoke
    Cenario: Compra bem sucedida

        Dado que estou na pagina principal da Starbugs
            E que iniciei a compra do item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP: "04534011"
            E informo os demais dados do endereço:
                | number      | 1000    |
                | details | apto 22 |
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Entao sou redirecionado para a pagina de comfirmação de Pedidos
            E deve ser informado o seguinte prazo e entrega: "20 min - 30 min"