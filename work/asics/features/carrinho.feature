#language: pt

Funcionalidade: Colocar Produto Específico no Carrinho
    Cliente deseja acessar o site da Asics
    Fazer uma busca pelo tenis modelo metaracer vermelho
    Sendo que ele deseja o tenis no tamanho 37
    Para então selecionar o tenis e enviar para o carrinho

    Cenario: Buscar produto

        Dado que estou no site da Asics
        Quando faço uma busca por "metaracer"
        Entao visualizo uma relação de produtos

    Cenario: Selecionar produto

        Dado que visualizo uma relação de produtos
        Quando clico em comprar o tenis vermelho
        Entao visualizo os detalhes deste produto
    
    Cenario: Selecionar tamanho

        Dado que visualizo os detalhes do produto desejado
        Quando escolho o tamanho 37
        Entao o tamanho escolhido é habilitado
    
    Cenario: Colocar produto no carrinho

        Dado que o tamanho do tenis está selecionado
        E o botão COMPRAR está habilitado
        Quando clico em comprar
        Entao sou direcionada para o carrinho de compras
    
    Cenario: Tamanho não selecionado

        Dado que visualizo os detalhes do produto desejado
        Quando clico em comprar
        Entao vejo a mensagem de alerta: "Por favor, selecione um tamanho."


