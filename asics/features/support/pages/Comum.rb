class Comum
  include Capybara::DSL

  def site_prod
    visit "https://www.asics.com.br/"
  end

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
    find("span [for*='4486_Tamanhos_']", visible: true, text: texto).click
  end

  def selecionar_quantidade(numero)
    find(:css, ".select-quantidade").find(:option, numero).select_option
  end

  def preenche_cep(cep)
    find("input[id='txtCep']").set(cep)
  end

  def mostrou_alerta(valida_alerta)
    case valida_alerta
    when "Por favor, selecione um tamanho."
      find("div[class=datos_obligatorios]", visible: true)
      puts "Selecione um tamanho"
    when "Para ser avisado da disponibilidade deste Produto, basta preencher os campos abaixo."
      find("div [class='notifymetitle notifyme-title']", visible: true, text: "AVISE-ME")
      puts "Tamanho indisponível"
    else
      raise "Não mostrou alerta esperado!"
    end
  end

  def pagina_checkout
    page.has_css?(".checkout > div")
  end

  def evidencia(nome)
    sleep 2
    page.save_screenshot("logs/evidencia-STEP-#{nome}.png")
  end
end
