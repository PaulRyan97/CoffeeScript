class Book
  @books: 0   

  @count: ->
    @books

  constructor: (@author, @title, @year) ->
    @constructor.books++   


book1 = new Book("E.B.Sledge", "With the Old Breed", 1981)
book2 = new Book("E.B.Sledge", "China Marine", 2002)
book3 = new Book("Robert Leckie", "Helmet for my Pillow", 1957)

console.log "There are #{Book.count()} book(s)."
console.log "The first book is #{book1.title} by #{book1.author}"

