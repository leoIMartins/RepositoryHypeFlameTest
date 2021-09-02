require "base64"

Before do
  page.current_window.resize_to(1440, 900)

  @art_list_page = ArticleListPage.new
  @art_page = ArticlePage.new
end

After do |scenario|
  if scenario.failed?
    shot_file = page.save_screenshot("log/screenshot.png")        # Cucumber tira screenshot temporário
    shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)   # Conversão para base 64
    # embed(shot_b64, "image/png", "Screenshot")   # Cucumber anexa o screenshot no report
    attach(shot_b64, "png")
  end
end
