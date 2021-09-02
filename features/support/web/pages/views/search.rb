class SearchView
    include Capybara::DSL

    def search_article(article)
        find(:xpath, "//input[contains(@id, 'search-form')]").set article
        find(:xpath, "//button[@type='submit']").click
    end
end