
require 'rspec'
# Estamos importando o 'rspec' porque o comando 'expect' não é próprio do Ruby, cucumber ou capybara
# É um framwork que exportamos para o 'Gemfile'
# Só seria necessário aqui, porque usamos o comando, mas decidimos acrescentar em todos
# Não somente devemos fazer a importação, como também incluir o 'rspec'

class CheckoutPage

    include Capybara::DSL
    include RSpec::Matchers

    def check_product_details(product)
    
    # o @ na steps.rb está criando uma variável global que, dentro da steps, permite que eu a chame em qualquer momento
    # por exemplo: eu defino ela no início do código e, ao invés de ficar repetindo as mesmas coisas, se eu quiser falar dela, basta usar o @
    # tal qual no que fizemos: @product = table.rows_hash
    # quando eu venho em checkout.rb e retiro o @, estou dizendo que ela passa a ser uma variável local
    # observe que somente aqui dentro é local. Ela se torna uma variável local aqui, para que eu possa
    # a usar como variável global no steps

       
            product_title = find('.item-details h1')
            expect(product_title.text).to eql product[:name]
        
            sub_price = find('.subtotal .sub-price')
            expect(sub_price.text).to eql product[:price]
        
            delivery_sub_price = find('.delivery .delivery-price')
            expect(delivery_sub_price.text).to eql product[:delivery]
        end

        def check_total_price(total)

                total_price = find('.total .total-price')
                expect(total_price.text). to eql total

        end
end
