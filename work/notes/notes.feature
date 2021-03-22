

#SNIPPETs de códigos para consulta:

#Validação?

Então("o site irá registrar o envio apresentando uma mensagem de faltando campos obrigatorios") do
    assert_selector(EL["label_envio_mensaagem"], text: "Faltando preenchiemnto de campo obrigatório", visible:true)
end

Então("o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso") do
    assert_selector(EL["label_envio_mensaagem"], text: "Sua mensagem foi enviado com sucesso!", visible:true)
    p "Mensagem enviada com sucesso."
end


--------------

#Elementos iguais e dinamicos: opção

https://github.com/thiagomarquessp/dia-a-dia-capybara/blob/master/Elementos/id-dinamico-classes-iguais.md


---------------

#VERSAO 1 teste Asics

#Cenario 1: Buscar produto
Dado("que estou no site da Asics") do
  visit "https://www.asics.com.br/"
end

Quando("faço uma busca por {string}") do |modelo|
  find("input[class*=fulltext-search-box]").set modelo
  click_button "Buscar"
end

Entao("visualizo uma relação de produtos") do
  page.has_css?("div[id*=ResultItems] > div")
end
#Fim Cenario 1

#Cenario 2: Selecionar produto
Dado("que visualizo o resultado da busca") do
  visit "https://www.asics.com.br/busca?ft=metaracer#1"
end

Quando("seleciono o tenis vermelho") do
  find("#product-4486 >a").click
end

Entao("visualizo os detalhes deste produto") do
  page.has_css?(".product-details")
end
#Fim Cenario 2

#Cenario 3: Selecionar tamanho
Dado("que estou na pagina do produto") do
  visit "https://www.asics.com.br/1012a946-700-tenis-asics-metaracer/p"
end

Quando("escolho o tamanho 37") do
  find("section ul span label[for='4486_Tamanhos_3']").click
end

Entao("o tamanho escolhido é habilitado") do
  page.has_css?("section ul span input[checked='checked']")
end
#Fim Cenario 3

#Cenario 4: Colocar produto no carrinho
Dado("que o tamanho do tenis está selecionado") do
  visit "https://www.asics.com.br/1012a946-700-tenis-asics-metaracer/p"
end

Dado("o botão comprar fica ativo") do
  find("section ul span label[for='4486_Tamanhos_3']").click
end

Quando("clico em comprar") do
  click_link "Comprar"
end

Entao("sou direcionada para o carrinho de compras") do
  page.has_css?(".checkout > div")
end
#Fim Cenario 4

#Cenario 5: Tamanho nao selecionado
Entao("vejo a mensagem de alerta: {string}") do |alerta|
  alert = find(".datos_obligatorios")
  expect(alert.text).to eql alerta
end
#Fim Cenario 5




#VERSAO 2 teste Asics

Dado("que estou no site da Asics e busco pelo produto {string}") do |modelo|
  visit "https://www.asics.com.br/"
  find("input[class*=fulltext-search-box]").set modelo
  click_button "Buscar"
end

Dado("escolho o tenis {string}") do |modelo|
  find("#product-4486 >a").click
end

Dado("seleciono o tamanho {string}") do |tamanho|
  find("section ul span label[for='4486_Tamanhos_3']").click
end

Quando("clico em comprar") do
  click_link "Comprar"
end

Entao("o produto é inserido no meu carrinho de compras") do
  page.has_css?(".checkout > div")
end

Dado('que estou na página do produto') do
  visit "https://www.asics.com.br/1012a946-700-tenis-asics-metaracer/p"
end

Entao("vejo a mensagem de alerta: {string}") do |alerta|
  alert = find(".datos_obligatorios")
  expect(alert.text).to eql alerta
end
