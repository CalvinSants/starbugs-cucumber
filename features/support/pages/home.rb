# Facilitar a manutenção do código e reuso de steps comuns entre features e scenarios
# Representa a página principal da Starbugs
# Padrão de projeto onde se faz a organização por paginas
# Visit não funciona aqui porque é do capybara. Não temos a importação do mesmo aqui e, por isso, não funciona

class HomePage
# por não funcionar a princípio o VISIT, temos de incluir o capybara aqui:

include Capybara::DSL

# Não somente devemos fazer a importação, como também incluir o 'rspec'

# def vai ter a função de abrir a página

    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

# Faremos o mesmo 'gancho' com a ideia de verificar todo o catalogo de cafes
   
    def coffees_list
        return all('.coffee-item')
    end

# Faremos o mesmo com a parte de iniciar a compra

    def buy(coffee_name)
        product = find('.coffee-item', text: coffee_name)
        product.find('.buy-coffee').click
    end

end