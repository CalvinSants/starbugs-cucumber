
Given('que iniciei a compra do item {string}') do |product_name|
    @home.buy(product_name)
end
  
When('faco a busca do seguinte CEP: {string}') do |zipcode|
    @checkout.find_zipcode(zipcode)
    sleep 5
end

When('informo os demais dados do endereco:') do |table|
    @checkout.fill_address(table.rows_hash)
end

When('escolho a forma de pagamento {string}') do |payment_type|
    @checkout.choice_payment(payment_type)
end

When('por fim finalizo a compra') do
    @checkout.submit
end

Then('sou redirecionado para a pagina de confirmacao de Pedidos') do
pending # Write code here that turns the phrase above into concrete actions
end

Then('deve ser informado um prazo de entrega entre {int} a {int} minutos') do |int, int2|
# Then('deve ser informado um prazo de entrega entre {int} a {float} minutos') do |int, float|
# Then('deve ser informado um prazo de entrega entre {float} a {int} minutos') do |float, int|
# Then('deve ser informado um prazo de entrega entre {float} a {float} minutos') do |float, float2|
pending # Write code here that turns the phrase above into concrete actions
end