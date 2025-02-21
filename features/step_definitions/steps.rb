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
    @product_name = table.hashes[0][:name]
    @sub_price = table.hashes[0][:price]
    @delivery = table.hashes[0][:delivery]
end
  
When('inicio a compra desse item') do
   product = find('.coffee-item', text: @product_name)
   product.find('.buy-coffee').click
end
  
Then('devo ver a pagina de checkout com os detalhes do produto') do
    product_title = find('.item-details h1')
    expect(product_title.text).to eql @product_name

    sub_price = find ('.subtotal .sub-price')
    expect(sub_price.text).to eql @sub_price

    delivery_sub_price = find('.delivery .delivery-price')
    expect(delivery_sub_price.text).to eql @delivery

end
  
Then('o valor total da compra deve ser de:') do |table|
    total = table.hashes[0][:total]
    total_price = find('.total-price')
    expect(total_price.text).to eql total
end

Then('devo ver um popup informando que o produto esta indisponivel') do
    popup = find('.swal2-html-container')
    expect(popup.text).to eql 'Produto indisponível'
end