When('acesso a página principal da starbugs') do
    @home.open
end
 
Then('eu devo ver uma lista de cafes disponíveis') do
    expect(@home.coffees.size).to be > 0
end

Given('que estou na pagina principal da starbugs') do
    @home.open
end

Given('que desejo comprar o seguinte produto:') do |table|
    @product = table.rows_hash
end
  
When('inicio a compra desse item') do
    @home.buy(@product[:name])
end
  
Then('devo ver a pagina de checkout com os detalhes do produto') do
    @checkout.assert_product_details(@product)

end
  
Then('o valor total da compra deve ser de {string}') do |total|
    @checkout.assert_total_price(total)
end


Then('devo ver um popup informando que o produto esta indisponivel') do
    @popup.have_text('Produto indisponível')
end