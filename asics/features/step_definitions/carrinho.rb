Dado("que entrei no site da Asics") do
  visit "https://www.asics.com.br/"
end

Dado("busco pelo produto {string} selecionando o tenis vermelho") do |modelo|
  Comum.new.preenche_busca(modelo)
  Comum.new.clique_buscar
  Comum.new.selecionar_produto
end

Quando("clico em comprar") do
  Comum.new.clique_comprar
end

Entao("vejo a mensagem de alerta: {string}") do |alerta|
  Comum.new.mostrou_alerta(alerta)
end

Dado("seleciono o tamanho {string}") do |tamanho|
  Comum.new.selecionar_tamanho(tamanho)
end

Entao("o produto é inserido no meu carrinho de compras") do
  Comum.new.pagina_checkout
end

Dado("informo meu CEP {string}") do |cep|
  Comum.new.preenche_cep(cep)
  Comum.new.clique_OK
end

Dado("seleciono a quantidade {string}") do |quantidade|
  Comum.new.selecionar_quantidade(quantidade)
end
