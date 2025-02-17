# README - Estrutura do Código Ruby com Cucumber

Este README descreve a estrutura do código Ruby para testes de aceitação utilizando Cucumber, organizado em pastas `feature`, `support` e arquivos de configuração.

## Estrutura do Projeto

├── feature/
│   └── step_definitions/
│       └── steps.rb
└── support/
└── env.rb
├── cucumber.yml
├── Gemfile
└── Gemfile.lock
## feature/step_definitions/steps.rb

Este arquivo contém as definições dos passos (steps) que descrevem o comportamento do sistema em termos de cenários (scenarios) Cucumber. Cada passo corresponde a uma ação ou verificação a ser realizada durante o teste.

**Exemplo:**

```ruby
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
end ```
