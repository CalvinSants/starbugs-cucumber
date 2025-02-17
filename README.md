# Projeto de Testes Automatizados com Cucumber e Ruby

Este projeto utiliza **Cucumber** com **Ruby** para a automação de testes.

## 📂 Estrutura do Projeto

A estrutura do projeto segue o padrão do Cucumber:

```
├── feature/
│   ├── step_definitions/
│   │   └── steps.rb
│   ├── support/
│   │   └── env.rb
├── cucumber.yml
├── Gemfile
├── Gemfile.lock
```

### 📁 feature/
Contém os arquivos relacionados aos testes do Cucumber.

#### 📂 step_definitions/
Aqui ficam os **passos** dos testes.
- `steps.rb`: Define as implementações dos steps escritos nos arquivos de feature.

#### 📂 support/
Arquivos de suporte do Cucumber.
- `env.rb`: Configurações globais do ambiente de testes.

### 📄 cucumber.yml
Define perfis de execução para o Cucumber, permitindo configurações diferentes para diferentes ambientes de teste.

### 📄 Gemfile
Lista as dependências do projeto, incluindo:
- **cucumber**: Framework principal para BDD.
- **rspec**: Suporte a matchers e assertions.
- **capybara** (se aplicável): Para testes em aplicações web.

### 📄 Gemfile.lock
Arquivo gerado automaticamente com as versões exatas das dependências instaladas.

## 🚀 Como executar os testes

1. Instale as dependências do projeto:
   ```sh
   bundle install
   ```
2. Execute os testes com Cucumber:
   ```sh
   cucumber
   ```
   Ou usando um perfil específico definido em `cucumber.yml`:
   ```sh
   cucumber -p perfil_nome
   ```

## 📌 Considerações finais
Este projeto segue as boas práticas de automação de testes com Cucumber e Ruby. Para contribuições ou dúvidas, sinta-se à vontade para abrir uma issue ou pull request.

---
  ✍️ **Autor:** [Calvin]

