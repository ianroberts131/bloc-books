class Book
  attr_accessor :name, :author, :pages
  
  def self.find(id)
    book = Book.new
    book.name = "1984"
    book.author = "George Orwell"
    book.pages = 336
    return book
  end
end