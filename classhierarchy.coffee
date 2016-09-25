class Book
  @books: 0   
  @audiobooks: 0

  @count: ->
    @books

  constructor: (@author, @title, @year, @duration, @unit) ->
    @constructor.books++ 

  length: (len = @duration, unit = @unit) ->
  	console.log("#{@title} is #{@duration} #{@unit} long." )




class AudioBook extends Book

	constructor: (@author, @title, @year, @duration, @unit) ->
    @constructor.audiobooks++ 

    length: (@duration, @unit)->
    	super 










book1 = new Book("E.B.Sledge", "With the Old Breed", 1981, 323, "pages")
book2 = new Book("E.B.Sledge", "China Marine", 2002, 160, "pages")
book3 = new Book("Robert Leckie", "Helmet for my Pillow", 1957, 320, "pages")
audio1 = new AudioBook("G.R.R Martin", "A Game of Thrones", 1996, 2025, "minutes")

console.log "There are #{Book.count()} book(s)."
console.log "The first book is #{book1.title} by #{book1.author}"
book1.length()
console.log "The first audiobook is #{audio1.title} by #{audio1.author}"
audio1.length()
