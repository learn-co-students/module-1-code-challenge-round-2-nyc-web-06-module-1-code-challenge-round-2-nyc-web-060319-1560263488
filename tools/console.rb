require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("Elma")
a2 = Author.new("Lamia")
a3 = Author.new("Andy")
a4 = Author.new("James")


m1 = Magazine.new("Time New York", "News")
m2 = Magazine.new("Buzzfeed", "fun comical news")
m3 = Magazine.new("Vogue", "fashion")
m4 = Magazine.new("Cosmo", "gossip")

ar1 = Article.new(a1, m1, "All about time", "It sucks but its okay. I like the other ones better")
ar2 = Article.new(a2, m3, "Make shift", "Its better than the other ones. I prefer the other one sometimes")
ar3 = Article.new(a3, m4, "Hello", "Very refreshing news on  this one.")
ar4 = Article.new(a4, m2, "Nostrand", "I don't think this one is my favorite of all the few")

# Author.most_verbose

# a1.articles
# a3.magazines

# m4.article_titles
# m1.contributors

# m1.my_author
# Author.most_active
# a1.my_article
# m1.my_article

### DO NOT REMOVE THIS
binding.pry

0
