## Teste Automatizado - Asics e-Commerce
 
Teste automatizado são scripts capazes de orientar e executar comandos de forma automática, simulando comportamentos a partir de cenários previamente descritos.

O objetivo dessa abordagem visa, além de minimizar problemas, otimizar tempo e custos do projeto, contribuindo então com a garantia da qualidade da aplicação.

No teste em questão, realizaremos simulações no e-Commerce da marca Asics Brasil, onde o objetivo final é inserir um produto específico no carrinho da loja.

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
  * cucumber (6.0.0)
  * selenium-webdriver (3.142.7)
  * rufo (0.12.0)
  * pry (0.14.1) 
  
## Iniciando
 
  * Insira pasta 'work' na raiz do Windows.
  * No terminal (Cmder), acesse o caminho c:\work\asics
  * Confira no arquivo 'Gemfile' se todas as bibliotecas do projeto (gems) foram declaradas, devendo ficar assim:
  
        source "https://rubygems.org"

        gem "capybara"
        gem "cucumber"
        gem "selenium-webdriver"
        gem "rufo"
        gem "pry"
      
  * Após declarar as bibliotecas, execute no 'Terminal' o comando abaixo, que instalará as gems:

    >     bundle install
    
  * Para dar vida aos cenários escritos em BDD, execute o comando:

    >     cucumber --init

  * Por precaução, confira se consta na primeira linha do arquivo 'carrinho.feature' a instrução:

         #language: pt
         #encode: UTF-8
   
  * Se necessário, atualize o arquivo 'chromedriver' na pasta C:Windows com a versão compatível do seu navegador 'Chrome'.

## Como usar
 
Com todos os passos acima realizados, agora podemos executar a automação, acompanhar o comportamento e visualizar seu resultado.

Para isso, execute o comando abaixo no seu 'Terminal':

   >    cucumber features\carrinho.feature

Caso queira executar um único cenário, utilize a '@tag' do cenario específico. Consulte o arquivo 'carrinho.feature'.
Exemplo:

    @semtamanho
    Cenario: Tentativa de colocar...
 
 E então, execute o comando que rodará apenas o cenário tagueado:
 
   >    cucumber -t @semtamanho
 
 ## Imagens
 
  Tela do Visual Studio, mostrando o conteúdo do arquivo 'Gemfile' com as gems declaradas, e conteúdo do arquivo 'carrinho.feature' com os cenarios descritos em BDD:
  
![visual-studio-example](https://github.com/GiMendonc/automacao/blob/main/asics/amostras/vsc-bdd-gems.jpg)

  Tela do 'Terminal Cmder', com o resultado final da execução do teste, mostrando todos cenários e steps executados com sucesso:
  
![cmder-passed-scenarios](https://github.com/GiMendonc/automacao/blob/main/asics/amostras/cmder-4cenarios-passados.jpg)

  Vídeo demonstrando a execução completa de todos os cenários, na automação:
  
![Alt Text](https://github.com/GiMendonc/automacao/blob/main/asics/amostras/automacao-loja-asics.gif)

## Funcionalidade geral

    Funcionalidade: Colocar Produto no Carrinho
        Cliente deseja acessar o site da Asics
        Encontrar o tenis modelo metaracer vermelho
        Sendo que ele deseja o tenis no tamanho 37
        Para então enviar o tenis escolhido para o carrinho

## Cenários x Tags

    @semtamanho
    Cenario: Tentativa de colocar o produto no carrinho, SEM o tamanho selecionado
    
    @comtamanho
    Cenario: Selecionando o tamanho do produto; e enviando produto ao carrinho
    
    @comCEP
    Cenario: Selecionando o tamanho do produto; informando CEP; e enviando produto ao carrinho
    
    @quantidade
    Cenario: Selecionando o tamanho do produto; informando CEP; alterando a quantidade; e enviando produto ao carrinho
    
## Links
 
  - Repository: https://github.com/gimendonc/automacao.git
  - Fluxo do projeto no Miro: https://miro.com/app/board/o9J_lQbkoXI=/
  - Caso tenha alguma dificuldade com a instalação, configuração e execução, por favor entre em contato no e-mail: gisele.ervolino@gmail.com
    
## Versão
 
  - 1.3
 
## Sobre a autora: Gisele Mendonça Ervolino

[![Github Badge](https://img.shields.io/badge/-Github-000?style=flat-square&logo=Github&logoColor=white&link=https://github.com/gimendonc)](https://github.com/gimendonc)
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/giseleervolino/)](https://www.linkedin.com/in/giseleervolino/)
[![Whatsapp Badge](https://img.shields.io/badge/-Whatsapp-4CA143?style=flat-square&labelColor=4CA143&logo=whatsapp&logoColor=white&link=https://api.whatsapp.com/send?phone=55011966115560&text=Hello!)](https://api.whatsapp.com/send?phone=55011966115560&text=Hello!)
[![Gmail Badge](https://img.shields.io/badge/-Gmail-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:gisele.ervolino@gmail.com)](mailto:gisele.ervolino@gmail.com)


Obrigada! 
