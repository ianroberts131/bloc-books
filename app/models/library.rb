class Library
  attr_reader :books
  attr_accessor :name
  
  def initialize
    @books = []
  end
  
  def self.find(id)
    library = Library.new
    library.name = "Ruby Books"
    return library
  end
  
  def add_book(name)
  end
end