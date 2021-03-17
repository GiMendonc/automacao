## Teste Automatizado - Asics e-Commerce
 
Testes automatizados são scripts capazes de orientar e executar comandos de forma automática, simulando comportamentos em cenários previamente descritos.

O objetivo dessa abordagem visa, além de minimizar problemas, otimizar tempo e custos do projeto, contribuindo então com a garantia da qualidade da aplicação.

No teste em questão, realizaremos simulações de ponta a ponta no e-Commerce da marca Asics Brasil, onde o objetivo final é inserir um produto específico no carrinho da loja.

Em cada cenário simularemos um caminho específico que o usuário pode percorrer, e ao executar, avaliaremos seu comportamento e resultado.
    
## Tecnologias utilizadas
 
 * Ruby 2.7.2p137
 * Visual Studio Code (1.54.2)
 * Cmder
 * Google Chrome (89.0.4389)
 * Chromedriver
 
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
 
  * Insira pasta 'work' na raiz do Windows.
  * No terminal (Cmder), acesse o caminho da pasta 'work' e em seguida a pasta 'asics', ficando assim: c:\work\asics .
  * Estando na pasta 'asics', crie o arquivo 'Gemfile' com o comando:

    >    bundle init

  * Acesse o arquivo 'Gemfile' pelo 'Visual Studio Code', e apague as linhas sobre 'git_source' e comentários.
  * Ainda no arquivo 'Gemfile', confira se todas as bibliotecas do projeto (gems) foram declaradas, devendo ficar assim:
  
    * source "https://rubygems.org"
    
    * gem "capybara"
    * gem "cucumber"
    * gem "ffi"
    * gem "selenium-webdriver"
    * gem "rspec"
    * gem "rufo"
      
  * Após declarar as bibliotecas, execute no 'Terminal' o comando abaixo, que instalará as gems:

    >     bundle install
    
  * Para dar vida aos cenários escritos em BDD, execute o comando:

    >     cucumber --init

  * Por precaução, confira se consta na primeira linha do arquivo 'carrinho.feature' a instrução:

    >     #language: pt
   
  * Se necessário, atualize o arquivo 'chromedriver' na pasta C:Windows com a versão compatível do seu navegador 'Chrome'.

## Como usar
 
Com todos os passos acima realizados, agora podemos executar a automação, acompanhar o comportamento e visualizar seu resultado.

Para isso, execute o comando abaixo no seu 'Terminal':

   >    cucumber features\carrinho.feature

Caso queira executar um único cenário, utilize uma '@tag' acima do título do cenario, no arquivo 'carrinho.feature'.
Exemplo:

    @temp
    Cenario: Selecionar produto
 
 E então, execute o comando que rodará apenas o cenário tagueado:
 
   >    cucumber -t @temp
 
 ## Imagens
 
  Tela do Visual Studio, mostrando o conteúdo do arquivo 'Gemfile' com as gems declaradas, e conteúdo do arquivo 'carrinho.feature' com os cenarios descritos em BDD:
  
![visual-studio-example](https://user-images.githubusercontent.com/80423171/111373668-f6391400-867a-11eb-9a12-59959204bc38.jpg)

  Tela do 'Terminal Cmder', com o resultado final da execução do teste, mostrando todos cenários e steps executados com sucesso:
  
![cmder-passed-scenarios](https://user-images.githubusercontent.com/80423171/111373703-03560300-867b-11eb-98bd-c91be42d664b.jpg)

  Vídeo demonstrando a execução completa de todos os cenários
  
https://user-images.githubusercontent.com/80423171/111373932-457f4480-867b-11eb-9113-ce25c275785c.mp4


## Funcionalidade: Colocar Produto Específico no Carrinho

    Historia:
    
    O cliente deseja acessar o site da Asics;
    Fazer uma busca pelo tenis modelo metaracer vermelho;
    Sendo que ele deseja o tenis no tamanho 37;
    Para então selecionar o tenis e enviar para o carrinho.

## Cenários escritos

    Cenario: Buscar produto
    Cenario: Selecionar produto
    Cenario: Selecionar tamanho
    Cenario: Colocar produto no carrinho
    Cenario: Tamanho não selecionado
 
## Links
 
  - Repository: https://github.com/gimendonc/automacao.git
  - Fluxo do projeto no Miro: https://miro.com/app/board/o9J_lQbkoXI=/
  - Caso tenha alguma dificuldade com a instalação, configuração e execução, por favor entre em contato no e-mail: gisele.ervolino@gmail.com
    
## Versão
 
  - 1.0.0.0
 
## Sobre a autora: Gisele Mendonça Ervolino

[![Github Badge](https://img.shields.io/badge/-Github-000?style=flat-square&logo=Github&logoColor=white&link=https://github.com/gimendonc)](https://github.com/gimendonc)
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/giseleervolino/)](https://www.linkedin.com/in/giseleervolino/)
[![Whatsapp Badge](https://img.shields.io/badge/-Whatsapp-4CA143?style=flat-square&labelColor=4CA143&logo=whatsapp&logoColor=white&link=https://api.whatsapp.com/send?phone=55011966115560&text=Hello!)](https://api.whatsapp.com/send?phone=55011966115560&text=Hello!)
[![Gmail Badge](https://img.shields.io/badge/-Gmail-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:gisele.ervolino@gmail.com)](mailto:gisele.ervolino@gmail.com)


Obrigada! 
