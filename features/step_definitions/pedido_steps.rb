# A criação do novo steps é mais para uma questão de organização
# Quando for executar o código apenas do pedido, basta especificar no terminal.
# Exemplo: bundle exec cucumber features/pedido.feature

Given('que iniciei a compra do item {string}') do |product_name|
    @home.buy(product_name)
end

When('faço a busca do seguinte CEP: {string}') do |zipcode|
    # find("input[name=cep]").set(zipcode)
    # click_on 'Buscar CEP'
    # movimentado para checkout.rb

    @checkout.find_zipcode(zipcode)

    # Uso o @ para dizer de onde estou chamando o código

# set é utilizado para a inserção de alguma informação
# O comando set no Capybara é usado para preencher campos de formulário (como <input> ou `<textarea>)
# O set insere o valor no campo, simulando a digitação de um usuário, 
# mas sem necessariamente disparar eventos como keydown ou keypress. 
# Se precisar que esses eventos sejam acionados (por exemplo, para um campo que tem autocomplete), 
# pode ser necessário usar send_keys em vez de set.

# click_on: É um método mais semântico e intuitivo
# Usado para clicar em links (<a>) e botões (<button> ou <input type="submit">) com base no texto visível. 
# Ele busca um elemento com o texto correspondente e executa o clique.

# click: É um método mais genérico que pode ser usado para clicar em qualquer elemento na página
# incluindo <div>, <span>, <p>, entre outros, desde que seja encontrado pelo seletor.
# click requer um identificador mais específico (como find("button[name=buscar]")).

end

When('informo os demais dados do endereço:') do |table|
    # address = table.rows_hash
    # @checkout.fill_address(address[:number], address [:details])
    # como defini as coisas na página de checkout, simplifiquei o código

    @checkout.fill_address(table.rows_hash)

    # A primeira linha do código está apenas com o nome em inglês de "endereço"
    # Estou indicando que o endereço [address] é uma tabela de linha e não coluna
    # A segunda linha estou indicando onde que está o código, isto é, na página checkout
    # Entre o "()" e "[]" está a especificação do que é o "address", isto é, o "number" e o "details" da tabela
    # ADENDO: number e details é a mesma nomenclatura do chekout. TEM DE SER A MESMA, SE NÃO, DÁ ERRO
end

When('e escolho a forma de pagamento {string}') do |payment_type|

# Existem duas formas de efetuar a busca. Podemos detalhar pelo div ou, caso haja o label, pesquisar por ele
# Exemplo: //label//div[text()="À vista no pix"]
# Por se tratar de div e não input.text, seguimos com o comando de click

# find('label div', text: payment_type).click

# Em primeiro momento, o código vai dar erro porque no site, o texto Cartão de Débito está em maiúsculo
# Acontece que, por questões estéticas, o dev do Starbugs aplicou uma propriedade denominada de uppercase
# Mesmo que no HTML esteja a informação do payment_type da seguinte maneira "Cartão de Débito"
# Por ter o uppercase, a informação fica toda em maiúscula. O Capybara leva em consideração essa propriedade do CCS (estilo da página)
# Desta forma, para funcionar o código pelo 'label div', é necessário colocar em uppercase, isto é, letra maiúscula também no feature
# Para evitar isso, podemos apenas aplicar o 'upcase'ao código.

# find('label div', text: payment_type.upcase).click

# transferi isso ao checkout, logo, simplico para:

@checkout.choice_payment(payment_type)

end

When('por fim finalizo a compra') do
    @checkout.submmit
end

Then('sou redirecionado para a página de confirmação de Pedidos') do
pending # Write code here that turns the phrase above into concrete actions
end

Then('deve ser informado um prazo de entrega entre {int} a {int} minutos') do |int, int2|
# Then('deve ser informado um prazo de entrega entre {int} a {float} minutos') do |int, float|
# Then('deve ser informado um prazo de entrega entre {float} a {int} minutos') do |float, int|
# Then('deve ser informado um prazo de entrega entre {float} a {float} minutos') do |float, float2|
pending # Write code here that turns the phrase above into concrete actions
end