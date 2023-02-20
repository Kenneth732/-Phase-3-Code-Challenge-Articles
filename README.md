# Phase-3-Code-Challenge-Articles
This code defines three classes: Author, Magazine, and Article, and creates some instances of those classes. 
The purpose of the code is to demonstrate the relationships between these classes and how they can be used to track authors, magazines.etc.......

# Author Class
initialize(name): creates a new instance of the Author class with the given name and adds it to the class variable @@all.
self.all: returns an array of all instances of Author.
articles: returns an array of all instances of Article written by the author.
magazines: returns an array of all instances of Magazine for which the author has written an article.
add_article(magazine, title): creates a new instance of Article with the author, given magazine and title.

# Magazine Class
initialize(name, category): creates a new instance of the Magazine class with the given name and category, and adds it to the class variable @@all.
self.all: returns an array of all instances of Magazine.
contributors: returns an array of all authors who have written for the magazine.
find_by_name(name): returns the instance of Magazine with the given name.
article_titles: returns an array of all titles of articles written for the magazine.
contributing_authors: returns an array of authors who have written three or more articles for the magazine.

# Article Class
 initialize(author, magazine, title): creates a new instance of the Article class with the given author, magazine, and title, and adds it to the class variable @@all.
self.all: returns an array of all instances of Article.


## By the End you should get the following out-put:
author1.name: outputs the name of the author author1 ("J.K. Rowling").
magazine2.category: outputs the category of the magazine magazine2 ("Science").
author1.magazines.map { |magazine| magazine.name }: outputs the names of all magazines for which author1 has written an article (["Vogue", "National Geographic"]).
magazine2.article_titles: outputs the titles of all articles written for magazine2 (["The Wonders of Nature", "The Secrets of the Universe"]).
magazine2.contributing_authors.map { |author| author.name }: outputs the names of all authors who have written three or more articles for magazine2 ([] in this case).
