class ArticlePage
  include Capybara::DSL

  def title
    find(:xpath, "//h1[contains(@class,'entry-title')]")
  end

  def scroll_to_end
    execute_script 'window.scrollTo(0,document.body.scrollHeight)'
    sleep 2   # sleep utilizado apenas para o testador visualizar que o scroll funcionou
  end

  def return_to_top
    find(:xpath, "//span[text()='Voltar para o topo']").click
    sleep 2   # sleep utilizado apenas para o testador visualizar que o botão funcionou 
  end
end

