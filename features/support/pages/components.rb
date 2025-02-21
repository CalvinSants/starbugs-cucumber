# O popup não é uma página e, por isso, não há o elemento PAGES na frente
# Quando ele falou sobre componentes, comentou que esse popup poderia aparecer em qualquer lugar
# Não sendo exclusivo, por exemplo, na home page. Poderia aparecer no encerramento da compra, etc
# Componente: porque ele pode ser reutilizado em várias partes do sistema, encapsulando sua própria aparência e funcionalidade.

require 'rspec'

class Popup
    include Capybara::DSL
    include RSpec::Matchers

    def have_text(text)
            popup = find('.swal2-html-container')
            expect(popup.text).to eql text
    end

end