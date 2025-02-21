require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)

        product_title = find('.item-details h1')
        expect(product_title.text).to eql product[:name]

        sub_price = find ('.subtotal .sub-price')
        expect(sub_price.text).to eql product[:price]

        delivery_sub_price = find('.delivery .delivery-price')
        expect(delivery_sub_price.text).to eql product[:delivery]

    end

    def assert_total_price(total)
        total_price = find('.total-price')
        expect(total_price.text).to eql total
    end

end