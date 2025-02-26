When('acesso a página principal da starbugs') do
    @home.open
end
  
# Then('eu devo ver uma lista de cafes disponíveis') do
#     products = all('.coffee-item')
#     expect(products.size).to be > 0

# após a criação do home, vamos melhorar o código. Note o "home"

Then('eu devo ver uma lista de cafes disponíveis') do
    expect(@home.coffees_list.size).to be > 0
end

 

Given('que estou na página principal da Starbugs') do
    @home.open
end

Given('que desejo comprar o seguinte produto:') do |table|

    # A mudança realizada foi para simplificar o código. Assim, também alteramos os abaixo
    # para identificação da planilha
    
    # @product_name = table.rows_hash[:product]
    # @product_price = table.rows_hash[:price]
    # @delivery_price = table.rows_hash[:delivery]

    @product = table.rows_hash
    @price = table.rows_hash
    @delivery = table.rows_hash

# Scenario Outline

#     @product_name = table.hashes[0][:product]
#     @product_price = table.hashes[0][:price]
#     @delivery_price = table.hashes[0][:delivery]

  end

# When('inicio a compra desse item') do
#     product = find('.coffee-item', text: @product[:name])
#     product.find('.buy-coffee').click

# note que o ato do "click" já não está mais aqui, afinal, o step completo está em home.rb

    When('inicio a compra desse item') do
        @home.buy(@product[:name])
end

# A partir do item a seguir não estaremos mais na "home page" do site e sim, na página de checkout
# Por isso que vamos ter de, na pasta PAGES criar um novo File para a página de checkout
# Lembre-se: Pages é um método de divisão por páginas, que facilita a utilização dos comandos

# Then('devo ver a pagina de checkout com os detalhes do produto') do
#     product_title = find('.item-details h1')
#     expect(product_title.text).to eql @product[:name]

#     sub_price = find('.subtotal .sub-price')
#     expect(sub_price.text).to eql @product[:price]

#     delivery_sub_price = find('.delivery .delivery-price')
#     expect(delivery_sub_price.text).to eql @product[:delivery]

    Then('devo ver a pagina de checkout com os detalhes do produto') do
        @checkout.check_product_details(@product)
end

# Then('o valor total da compra deve ser de {string}') do |total|
#     total_price = find('.total .total-price')
#     expect(total_price.text). to eql total

Then('o valor total da compra deve ser de {string}') do |total|
    @checkout.check_total_price(total)

end

# Indisponivel

# Then('devo ver um popup informando que o produto esta indisponivel') do
#     popup = find('.swal2-html-container')
#     expect(popup.text).to eql 'Produto indisponível'

Then('devo ver um popup informando que o produto esta indisponivel') do
    @popup.have_text('Produto indisponível')
end