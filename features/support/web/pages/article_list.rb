class ArticleListPage
  include Capybara::DSL

  def load
    visit ""
  end

  def go(article)
    execute_script 'window.scrollBy(0,100)'
    current_article = find(:xpath, "//a[text()='" + article + "']")
    execute_script('arguments[0].scrollIntoView(true)', current_article)
    current_article.click
  end
end
