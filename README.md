## Teste Automatizado - e-Commerce Asics
 
Testes automatizados são scripts capazes de orientar e executar comandos de forma automática, simulando comportamentos em cenários previamente descritos.

O objetivo dessa abordagem visa, além de minimizar problemas, otimizar tempo e custos do projeto, contribuindo então com a garantia da qualidade da aplicação.

No teste em questão, realizaremos simulações de ponta a ponta no e-Commerce da marca Asics Brasil, onde o objetivo final é inserir um produto específico no carrinho da loja.

Em cada cenário simularemos um caminho específico que o usuário pode percorrer, e ao executar, avaliaremos seu comportamento e resultado.

    
## Tecnologias utilizadas
 
 * Ruby 2.7.2p137
 * Visual Studio Code (1.54.2)
 * Cmder
 
## Serviços utilizados

 * Github
  
## Metodologias utilizadas
 
 * BDD
  
## Bibliotecas do projeto e versões

  * capybara (3.35.3)
  * cucumber (5.3.0)
  * ffi (1.15.0)
  * selenium-webdriver (3.142.7)
  * rspec (3.10.0)
  * rufo (0.12.0)
  
## Iniciando
 
  * Insira pasta 'work' na raiz do Windows
  * No terminal (Cmder), acesse o caminho da pasta 'work' e em seguida a pasta 'asics', ficando assim: c:\work\asics
  * Estando na pasta 'asics', crie o arquivo 'Gemfile' com o comando:

    >    bundle init

  * Acesse o arquivo 'Gemfile' pelo 'Visual Studio Code', e apague as linhas sobre 'git_source' e comentários.
  * Ainda no arquivo 'Gemfile', confira se todas as bibliotecas do projeto (gems) foram declaradas, devendo ficar assim:
  
    >    source "https://rubygems.org"
          gem "capybara"
          gem "cucumber"
          gem "ffi"
          gem "selenium-webdriver"
          gem "rspec"
          gem "rufo"
      

  * Após declarar as bibliotecas, no 'Terminal' execute o comando abaixo para instalar as gems:

    >     bundle install
    
  * Para dar vida aos cenários escritos em BDD, execute o comando:

    >     cucumber --init
     
     
  * Para todar a automação, execeute o comando:
  
    >    cucumber features\carrinho.feature

 
## Como usar
 
Here will be the images and descriptions. Principal content.
 
 
## Funcionalidade: Colocar Produto Específico no Carrinho
  
    Historia:
    
    O cliente deseja acessar o site da Asics;
    Fazer uma busca pelo tenis modelo metaracer vermelho;
    Sendo que ele deseja o tenis no tamanho 37;
    Para então selecionar o tenis e enviar para o carrinho.

## Cenários escritos

    Cenario: Buscar produto
    Cenario: Selecionar produto
    Cenario: Tamanho não selecionado
    Cenario: Selecionar tamanho
    Cenario: Colocar produto no carrinho
 
## Links
 
  - Repository: https://github.com/GiMendonc/automacao.git
  - Fluxo do projeto no Miro: https://miro.com/app/board/o9J_lQbkoXI=/
  - Caso tenha alguma dificuldade com a instalação, configuração e execução, ou encontre algum outro problema, por favor entre em contato no e-mail: gisele.ervolino@gmail.com
    
 
## Versão
 
1.0.0.0
 
 
## Autora
 
* **Gisele Mendonça Ervolino**: @gimendonc (https://github.com/gimendonc)
 
Obrigada!
