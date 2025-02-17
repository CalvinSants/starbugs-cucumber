When('acesso a página principal da starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end
  
Then('eu devo ver uma lista de cafes disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0
end