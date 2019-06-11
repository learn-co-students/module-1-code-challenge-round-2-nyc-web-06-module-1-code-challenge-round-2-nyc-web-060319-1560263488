class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

#gets back article for this magazine
def my_article
  Article.all.select do |article|
    article.magazine == self
    binding.pry
  end
end

#gets back author for this magazine
  def my_author
    self.my_article.map do |article|
      article.author
    end
  end

#works
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
  end
end

#works
def article_titles
  self.my_article.map do |article|
    article.title
  end
end

def contributors
  self.my_article.map do |article|
    article.author
  end
end

  def word_count
    self.my_article.reduce(0) do |result, article|
      result + article.content
    end
  end


  def self.all
    @@all
  end

end
