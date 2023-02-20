require 'minitest/autorun'
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
    Article.all.select { |article| article.author == self }
  end

  def magazines
    articles.map { |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map { |magazine| magazine.category }.uniq
  end
end

class Magazine
  attr_reader :name, :category
  
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select { |article| article.magazine == self }.map { |article| article.author }.uniq
  end

  def self.find_by_name(name)
    all.find { |magazine| magazine.name == name }
  end

  def article_titles
    Article.all.select { |article| article.magazine == self }.map { |article| article.title }
  end

  def contributing_authors
    contributors.select { |author| author.articles.select { |article| article.magazine == self }.count > 2 }
  end
end

class Article
  attr_reader :author, :magazine, :title
  
  @@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
end
author1 = Author.new("J.K. Rowling")
author2 = Author.new("Stephen King")

magazine1 = Magazine.new("Vogue", "Fashion")
magazine2 = Magazine.new("National Geographic", "Science")

author1.add_article(magazine1, "The Evolution of Fashion")
author1.add_article(magazine2, "The Wonders of Nature")
author2.add_article(magazine2, "The Secrets of the Universe")

puts author1.name 
puts magazine2.category 
puts author1.magazines.map { |magazine| magazine.name } 
puts magazine2.article_titles 
puts magazine2.contributing_authors.map { |author| author.name } 
