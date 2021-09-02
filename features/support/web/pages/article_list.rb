class ArticleListPage
  include Capybara::DSL

  def load
    visit ""
  end

  def open_search
    find(:xpath, "//button[@id='header-search']").click
  end

  def go(article)
    find(:xpath, "//a[text()='" + article + "']").click
  end

  def search
    SearchView.new
  end
end
