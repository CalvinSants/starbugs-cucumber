Feature: Catalogo de cafes
    Como um usuário do site, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Scenario:  acessar catalogo de cafes na página principal

    When acesso a página principal da starbugs
    Then eu devo ver uma lista de cafes disponíveis

Scenario: iniciar a compra de um café

    Given que estou na página principal da Starbugs

        And que desejo comprar o seguinte produto:

        # quando se trata somente de uma informação, como a referida abaixo, não há necessidade
        # de utilizar a table.hashes - pode ser feito com: puts table.rows.hash na seguinte composição

        | name     | Expresso Gelado |
        | price    | R$ 9,99         |
        | delivery | R$ 10,00        |

        # Quando vou precisar acessar diversas informações em um Scenario Outline
        # | product         | price   | delivery |
        # | Expresso Gelado | R$ 9,99 | R$ 10,00 |

    When inicio a compra desse item
    Then devo ver a pagina de checkout com os detalhes do produto
        And o valor total da compra deve ser de "R$ 19,99"
 
Scenario: cafe indisponivel

    Given que estou na página principal da Starbugs
        And que desejo comprar o seguinte produto:
        | name     | Expresso Cremoso |
    When inicio a compra desse item
    Then devo ver um popup informando que o produto esta indisponivel
