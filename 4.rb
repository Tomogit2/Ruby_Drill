class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def display_article
    puts "著者: #{@author} \n タイトル: #{@title} \n 本文: #{@content}"
  end
end

article = Article.new("阿部", "Rubyの素晴らしさについて", "Awesome Ruby!")
article.display_article