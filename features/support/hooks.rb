# vai ser realizado um 'gancho'. Note que hooks é o inglês para gancho.
# importando a camada de home para cá
# Before é um método - bloco de código que realiza uma ação específica sempre que necessário 
# Ele pode receber parâmetros, executar cálculos, manipular dados e até retornar um valor. 
# 'new' - é uma palavra utilizada para ativar a classe // instanciar a classe 
# Esse estilo de programação se chama "Programação Orientada ao Objeto" - criamos classes e definimos o nome a elas; definimos o que elas possuem
# Podemos criar diversos atributos dentro das classes
# As "PAGES" são os objetos, que possuem classe, que por sua vez, possuem atributos

# Uma classe é um modelo ou estrutura que define os atributos (dados) e métodos (comportamentos) 
# de um objeto. Ela serve como um molde para criar instâncias (objetos) com características e 
# comportamentos específicos.

require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/components.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @popup = Popup.new
end