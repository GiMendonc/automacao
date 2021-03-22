#language: pt

Funcionalidade: Colocar Produto Específico no Carrinho
    Cliente deseja acessar o site da Asics
    Encontrar o tenis modelo metaracer vermelho
    Sendo que ele deseja o tenis no tamanho 37
    Para então enviar o tenis escolhido para o carrinho

    Cenario: Selecionar Produto

        Dado que estou no site da Asics e busco pelo produto "metaracer"
        E escolho o tenis "vermelho"
        Quando clico em comprar
        Entao vejo a mensagem de alerta: "Por favor, selecione um tamanho."

    Cenario: Enviar produto ao carrinho

        Dado que estou na página do produto
        Quando  seleciono o tamanho 37 e clico em comprar
        Entao o produto é inserido no meu carrinho de compras