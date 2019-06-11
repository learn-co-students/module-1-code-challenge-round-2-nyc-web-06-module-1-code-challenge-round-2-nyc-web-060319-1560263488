require 'pry'
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

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def num_articles
    articles.count
  end

  #right now this only gives back the article object with the highest word count
  
  def self.most_verbose
    Article.all.max_by do |article|
      article.content.split(/\W+/).count
    end
    #below this (lines 32-34) is what I was thinking of doing to get the author, but it does not currently work
    # var.map do |article|
    #   article.author
    # end

  end


  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def magazines
    my_mag = articles.map do |article|
      article.magazine
    end
    my_mag.uniq
  end

  def show_specialties
    my_categories = magazines.map do |magazine|
      magazine.category
    end
    my_categories.uniq
  end

  #MAINQUESTION:::: can we call instance methods in class methods?

  #self.most_active does not currently work, but essentially I have a method above called num_articles where I can find the # of articles that each author has written and I was planning to use that in this method below

  # i know what i have in my commented out method body would not work, but that is kind of my thinking b/cuz the num_articles only gives you a num of articles for each author and does not compare the num of articles and then associate the num with an author specifically

  def self.most_active
    # num_articles.max_by do |article|
    #   article.author
    # end
  end




end # end of Author class
