require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


tony = Author.new("tony")
steve = Author.new("steve")
nat = Author.new("nat")

mag1 = Magazine.new("Mag1", "Cool")
mag2 = Magazine.new("Mag2", "Sweet")
mag3 = Magazine.new("Mag3", "Awesome")

art1 = Article.new(tony, mag1, "title1", "content1")
art2 = Article.new(steve, mag2, "title2", "content2")
art3 = Article.new(nat, mag3, "title3", "content3")












""### DO NOT REMOVE THIS
binding.pry

0
