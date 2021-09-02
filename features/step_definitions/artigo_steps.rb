Dado("que acesso o blog") do
  @art_list_page.load
end

Quando("eu escolho o artigo {string}") do |artigo|
  @art_list_page.go(artigo)
  @art_name = artigo
end

Entao("o artigo pode ser visualizado") do
  expect(@art_page.title).to have_text @art_name
end

Quando("rolo a tela para baixo") do
  @art_page.scroll_to_end
end

Quando("clico na opcao de voltar ao topo") do
  @art_page.return_to_top
end

Entao("a tela rola para o inicio do artigo") do
  expect(@art_page.title).to have_text @art_name 
end