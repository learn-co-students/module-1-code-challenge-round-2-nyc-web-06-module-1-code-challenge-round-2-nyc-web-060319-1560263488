class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
    magazine.name == name
  end

  def article_titles #I'd call the title after iterating of the Article and compare it to the magazine using == self
  end

  def contributors #this is just the reverse of what I did in the author class, I just needed more time
  end

  def word_count #I'd use the .length method here
  end

end #end class Magazine
