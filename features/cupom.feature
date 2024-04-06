#language: pt

Funcionalidade: Uso de cupons no checkout

    Como um usuario do Starbugs, Eu quero poder aplicar cupons de desconto na pagina checkout,
    Para que eu possa obter reduções no preço de produtos, aumentando satisfação da minha experiencia de compra

    Contexto: 
        Dado que iniciei a compra do item:
            | name     | Café com Leite |
            | price    | R$ 19,99       |
            | delivery | R$ 10,00       |
            | total    | R$ 29,99       |
    
    Cenario: Aplicar descontro de 20%
        Quando aplico o seguinte cupom: "MEUCAFE"
        Entao o valor final da compra deve ser atualizado para "R$ 25,99"


    Cenario: Cupom expirado
        Quando aplico o seguinte cupom: "PROMO20"
        Entao devo ver a seguinte notificação "Cupom expirado!"
        E o valor final deve permanecer o mesmo


    Cenario: Cupom inválido
        Quando aplico o seguinte cupom: "PROMO100"
        Entao devo ver a seguinte notificação "Cupom inválido!"
        E o valor final deve permanecer o mesmo