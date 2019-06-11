require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Author
au1 = Author.new("James")
au2 = Author.new("Noah")
au3 = Author.new("Penny")
au4 = Author.new("James")


#Magazine
m1= Magazine.new("Vogue", "Fashion")
m2= Magazine.new("Cosmo", "Lifestyle")
m3= Magazine.new("Time", "News")

#Article (author, magazine, title, content)

ar1 = Article.new(au1, m1, "Summer Trends", "the best summer staples")
ar2 = Article.new(au2, m2, "DIY coconut mask", "how to prevent dry hair")
ar3 = Article.new(au3, m3, "Trade War w/China", "international economic impact of rising tariffs")
ar4 = Article.new(au1, m1, "Gov ball", "tips n tricks")
ar5 = Article.new(au3, m1, "summer vaca spots", "The best beaches")







### DO NOT REMOVE THIS
binding.pry

0
