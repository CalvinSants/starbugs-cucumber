README - Estrutura do Código Ruby com Cucumber
Este README descreve a estrutura do código Ruby para testes de aceitação utilizando Cucumber, organizado em pastas feature, support e arquivos de configuração.

Estrutura do Projeto
├── feature/
│   └── step_definitions/
│       └── steps.rb
└── support/
    └── env.rb
├── cucumber.yml
├── Gemfile
└── Gemfile.lock
feature/step_definitions/steps.rb
Este arquivo contém as definições dos passos (steps) que descrevem o comportamento do sistema em termos de cenários (scenarios) Cucumber. Cada passo corresponde a uma ação ou verificação a ser realizada durante o teste.

Exemplo:

Ruby

Dado('que o usuário está na página de login') do
  visit '/login'
end

Quando('o usuário digita suas credenciais') do
  fill_in 'username', with: 'usuario'
  fill_in 'password', with: 'senha'
end

E('o usuário clica no botão "Entrar"') do
  click_button 'Entrar'
end

Então('o usuário deve ser redirecionado para a página principal') do
  expect(page).to have_content 'Bem-vindo'
end
support/env.rb
Este arquivo contém configurações e inicializações para o ambiente de teste, como a configuração do driver do navegador, definição de variáveis de ambiente e inclusão de módulos auxiliares.

Exemplo:

Ruby

require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://localhost:3000'
end
cucumber.yml
Este arquivo contém configurações para o Cucumber, como a definição de perfis (profiles) para executar testes específicos, opções de formatação de saída e outras configurações.

Exemplo:

YAML

default: --format html --out report.html
Gemfile
Este arquivo lista as dependências do projeto, incluindo as gems Cucumber, Capybara e outras gems necessárias para os testes.

Exemplo:

Ruby

source 'https://rubygems.org'

gem 'cucumber'
gem 'capybara'
gem 'selenium-webdriver'
Gemfile.lock
Este arquivo contém as versões específicas das gems instaladas, garantindo que o projeto utilize as mesmas versões em diferentes ambientes.

Execução dos Testes
Para executar os testes, utilize o comando cucumber na raiz do projeto. O Cucumber irá procurar pelos arquivos de features e steps, executar os cenários e gerar os resultados dos testes.

Exemplo:

Bash

cucumber
Observações
Os arquivos .feature (não incluídos na estrutura acima) contêm os cenários de teste escritos em linguagem Gherkin, que descrevem o comportamento do sistema de forma clara e legível.
A pasta feature pode conter subpastas para organizar os arquivos de features por funcionalidade ou módulo do sistema.
A pasta support pode conter outros arquivos auxiliares, como módulos com funções personalizadas para os testes.
Este README fornece uma visão geral da estrutura do código Ruby com Cucumber. Para obter mais informações sobre cada componente, consulte a documentação oficial do Cucumber e das gems utilizadas no projeto.
