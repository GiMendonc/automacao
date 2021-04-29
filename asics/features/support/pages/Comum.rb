class Comum
  include Capybara::DSL

  ################ Comum ASICS

  def preenche_busca(texto)
    find("input[class*=fulltext-search-box]").set(texto)
  end

  def clique_buscar
    click_button "Buscar"
  end

  def clique_comprar
    click_link "Comprar"
  end

  def clique_OK
    click_button "OK"
  end

  def selecionar_produto
    find("#product-4486 >a").click
  end

  def selecionar_tamanho(texto)
    find("span [for*='4486_Tamanhos_']", text: texto).click
  end

  def selecionar_quantidade(numero)
    find(:css, ".select-quantidade").find(:option, numero).select_option
  end

  def preenche_cep(cep)
    find("input[id='txtCep']").set(cep)
  end

  def mostrou_alerta(texto)
    find("div[class=datos_obligatorios]", visible: true, text: texto)
  end

  def pagina_checkout
    page.has_css?(".checkout > div")
  end
end
