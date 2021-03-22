Dado("que estou no site da Asics e busco pelo produto {string}") do |modelo|
  visit "https://www.asics.com.br/"
  find("input[class*=fulltext-search-box]").set modelo
  click_button "Buscar"
end

Dado("escolho o tenis {string}") do |cor|
  find("#product-4486 >a").click
end

Quando("clico em comprar") do
  click_link "Comprar"
end

Entao("vejo a mensagem de alerta: {string}") do |aviso|
  alert = find(".datos_obligatorios")
  expect(alert.text).to eql aviso
end

Dado("que estou na página do produto") do
  visit "https://www.asics.com.br/1012a946-700-tenis-asics-metaracer/p"
  #page.has_css?(".product-details")
end

Quando("seleciono o tamanho 37 e clico em comprar") do
  find("span [for='4486_Tamanhos_3']").click
  click_link "Comprar"
end

Entao("o produto é inserido no meu carrinho de compras") do
  page.has_css?(".checkout > div")
end
