#language: pt
#encode: UTF-8

@carrinho
Funcionalidade: Colocar Produto no Carrinho
    Cliente deseja acessar o site da Asics
    Encontrar o tenis modelo metaracer vermelho
    Escolher um tamanho e então enviar o tenis ao carrinho.
    Simularemos os caminhos possíveis.

    Contexto: 

        Dado que entrei no site da Asics
        E busco pelo produto "metaracer" selecionando o tenis vermelho 

    @semtamanho
    Cenario: Tentativa de colocar o produto no carrinho, SEM o tamanho selecionado

        Quando clico em comprar
        Entao vejo a mensagem de alerta: "Por favor, selecione um tamanho."

    @comtamanho
    Cenario: Selecionando o tamanho do produto; e enviando produto ao carrinho

        E seleciono o tamanho "36"
        Quando clico em comprar
        Entao o produto é inserido no meu carrinho de compras

    @tamindisponivel
    Cenario: Selecionando um tamanho indisponível; e recebendo mensagem de alerta

        Quando seleciono o tamanho "38"
        Entao vejo a mensagem de alerta: "Para ser avisado da disponibilidade deste Produto, basta preencher os campos abaixo."

    @comcep
    Cenario: Selecionando o tamanho do produto; informando CEP; e enviando produto ao carrinho

        E seleciono o tamanho "39"
        E informo meu CEP "08900-000"
        Quando clico em comprar
        Entao o produto é inserido no meu carrinho de compras

    @quantidade
    Cenario: Selecionando o tamanho do produto; informando CEP; alterando a quantidade; e enviando produto ao carrinho

        E seleciono o tamanho "39"
        E informo meu CEP "08900-000"
        E seleciono a quantidade "2"
        Quando clico em comprar
        Entao o produto é inserido no meu carrinho de compras