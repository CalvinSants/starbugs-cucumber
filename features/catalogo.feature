Feature: Catalogo de cafes
    Como um usuaário do site, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Scenario:  acessar catalogo de cafes na página principal

    When acesso a página principal da starbugs
    Then eu devo ver uma lista de cafes disponíveis

Scenario: iniciar a compra de um café

    Given que estou na página principal da Starbugs
        And que desejo comprar o café "Expresso Gelado"
        And que esse produto custa "R$ 9,99"
        And que o custo de entrega é de "R$ 10,00"
    When inicio a compra desse item
    Then devo ver a pagina de checkout com os detalhes do produto
        And o valor total da compra deve ser de "R$ 19,99"
        
Scenario: cafe indisponivel

    Given que estou na página principal da Starbugs
        And que desejo comprar o café "Expresso Cremoso"
    When inicio a compra desse item
    Then devo ver um popup informando que o produto esta indisponivel
