class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #helper_methods

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def self.most_verbose
    verbosity = self.articles.max_by |article|
    article.content
  end

  def add_article(magazine, title, content)
    Magazine.new(self, magazine, title, content)
  end

  def articles
    Article.all.select do |article|
      article.author ==  self
    end
  end

  #helper_methods

  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end

  def show_specialties
    self.articles.map do |magazine|
      magazine.content
    end.uniq
  end

  def self.most_active
    Author.all.max_by do |author|
      author.articles
    end
  end

  


end #end class Author
