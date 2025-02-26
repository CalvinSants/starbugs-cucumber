Feature: Pedido
    Como um usuaário do site starbugs, eu quero selecionar e comprar cafes
    Para que eu possa receber os produtos em meu endereco e efetuar o pagamento na entrega

Scenario:  Compra bem sucedida

    Given que estou na pagina principal da starbugs
    And que iniciei a compra do item "Expresso Tradicional"
    When faco a busca do seguinte CEP: "04534011"
    And informo os demais dados do endereco:
        | number  | 1000    |
        | details | Apto 22 |
    And escolho a forma de pagamento "CARTÃO DE DÉBITO"
    And por fim finalizo a compra
    Then sou redirecionado para a pagina de confirmacao de Pedidos
    And deve ser informado um prazo de entrega entre 20 a 30 minutos