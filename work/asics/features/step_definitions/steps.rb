#Cenario 1: Buscar produto
Dado("que estou no site da Asics") do
  visit "https://www.asics.com.br/"
end

Quando("faço uma busca por {string}") do |modelo|
  find("input[class*=fulltext-search-box]").set modelo
  click_button "Buscar"
end

Entao("visualizo uma relação de produtos") do
  page.has_css?(".product-list > div")
end
#Fim Cenario 1

#Cenario 2: Selecionar produto
Dado("que visualizo uma relação de produtos") do
  visit "https://www.asics.com.br/busca?ft=metaracer#1"
end

Quando("clico em comprar o tenis vermelho") do
  find("#product-4486 > a").click
end

Entao("visualizo os detalhes deste produto") do
  page.has_css?(".product-details")
end
#Fim Cenario 2

#Cenario 3: Selecionar tamanho
Dado("que visualizo os detalhes do produto desejado") do
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

Dado("o botão COMPRAR está habilitado") do
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

#TESTES:

#cen 1
#expect(lista_produtos).to be true

#cen 2
#page.has_css?(".product-link[title*='Vermelho']")

#cen 3
#find("section ul span input[checked='checked']")
#expect(page).to have_content "fn  Tenis-ASICS-Metaracer---Feminino---Vermelho prodname"
#find("#grid-page") == true
#pagina_produto = page.has_css?(".product-name")
#find("#product-content")
