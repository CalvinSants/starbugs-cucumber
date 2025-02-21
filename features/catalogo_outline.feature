Feature: Catalogo de cafes
    Como um usuaário do site, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis
@temp
  Scenario Outline: Iniciar a compra de um cafe
    Given que estou na pagina principal da starbugs
    And que desejo comprar o seguinte produto:
    | name   | price   | delivery   |
    | <name> | <price> | <delivery> |
    When inicio a compra desse item
    Then devo ver a pagina de checkout com os detalhes do produto
    And o valor total da compra deve ser de:
    | total   |
    | <total> |

    Examples:
  | name                 | price    | delivery | total    |
  | Expresso Gelado      | R$ 9,99  | R$ 10,00 | R$ 19,99 |
  | Expresso Americano   | R$ 9,99  | R$ 10,00 | R$ 19,99 |
  | Expresso Tradicional | R$ 9,99  | R$ 10,00 | R$ 19,99 |
  | Café com Leite       | R$ 19,99 | R$ 10,00 | R$ 29,99 |
  | Latte                | R$ 19,99 | R$ 10,00 | R$ 29,99 |
  | Capuccino            | R$ 19,99 | R$ 10,00 | R$ 29,99 |
  | Macchiato            | R$ 19,99 | R$ 10,00 | R$ 29,99 |

@temp
Scenario Outline: Cafe indisponivel

    Given que estou na pagina principal da starbugs
    And que desejo comprar o seguinte produto:
    | name   |
    | <name> |
    When inicio a compra desse item
    Then devo ver um popup informando que o produto esta indisponivel

    Examples:
  | name             |
  | Expresso Cremoso |



