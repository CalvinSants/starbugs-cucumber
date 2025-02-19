When('acesso a página principal da starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end
  
Then('eu devo ver uma lista de cafes disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0
end

Given('que estou na pagina principal da starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end

Given('que desejo comprar o seguinte produto:') do |table|
    @product = table.rows_hash
end
  
When('inicio a compra desse item') do
   product = find('.coffee-item', text: @product[:name])
   product.find('.buy-coffee').click
end
  
Then('devo ver a pagina de checkout com os detalhes do produto') do
    product_title = find('.item-details h1')
    expect(product_title.text).to eql @product[:name]

    sub_price = find ('.subtotal .sub-price')
    expect(sub_price.text).to eql @product[:price]

    delivery_sub_price = find('.delivery .delivery-price')
    expect(delivery_sub_price.text).to eql @product[:delivery]

end
  
Then('o valor total da compra deve ser de {string}') do |total|
    total_price = find('.total-price')
    expect(total_price.text).to eql total
end


Then('devo ver um popup informando que o produto esta indisponivel') do
    popup = find('.swal2-html-container')
    expect(popup.text).to eql 'Produto indisponível'
end