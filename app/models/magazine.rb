class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Magazine.all.first do |magazine|
      magazine.name == name
    end
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributors
    articles.map do |article|
      article.author
    end
  end

  def word_count
    art_word_count = 0
    articles.map do |article|
      art_word_count += article.content.split(/\W+/).count
    end
    art_word_count
  end


end #end of Magazine class
