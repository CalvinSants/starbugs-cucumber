Feature: Pedidos
    Como um usuario do site Starbugs, eu quero selecionar e comprar cafes
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

Scenario:  Compra bem sucedida

    Given que estou na página principal da Starbugs
        And que iniciei a compra do item "Expresso Tradicional"

    When faço a busca do seguinte CEP: "04534011"
        And informo os demais dados do endereço:

            | number  | 1000    |
            | details | Apto 22 |

        And e escolho a forma de pagamento "Cartão de Débito"
        And por fim finalizo a compra

    Then sou redirecionado para a página de confirmação de Pedidos
        And deve ser informado um prazo de entrega entre 20 a 30 minutos