class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self

  end

#gets back Articles for this author
  def my_article
    Article.all.select do |article|
      article.author == self
    end
  end

#gets back magazine for this author
  def my_magazine
    self.my_article.map do |article|
      article.magazine
    end
  end

#come back to it THISS!!!
def self.most_verbose
  self.my_article.sort_by do |article|
    article.author

#I would first get the total of each article which would be an array of word counts & then i would sort_by that array and return the last one which would be the longest
  end
end

#NOT WORKING FOR SOME REASON but i  know this should be the right format
  def add_article((magazine, title, content)
    add_article = Article.new(self, magazine, title, content)
  end

#works
  def articles
    self.my_article.map do |article|
      article.title
    end
  end

#works!!!
  def magazines
    self.my_article.map do |article|
      article.magazine
  end.uniq
end

# def article_count
#   Article.all.
# end



# come back to this
# Returns the Author instance who has written the greatest number of articles

#I was setting up a helper method to first get the count of the articles each instance  of author has written , then i would use sort_by to sort the array of lengths of the articles
def self.most_active
  self.all.max_by do |article|
    article.name
  end
end



  def self.all
    @@all
  end





end
