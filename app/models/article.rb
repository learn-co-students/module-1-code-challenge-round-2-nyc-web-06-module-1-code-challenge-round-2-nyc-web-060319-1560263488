#join between magazine and author
class Article

  attr_reader :author, :magazine, :title
  attr_accessor :content

  @@all = []

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

end #end of Article class
