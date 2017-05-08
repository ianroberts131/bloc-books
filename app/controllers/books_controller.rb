require_relative '../models/book'
class BooksController < BlocWorks::Controller
  def welcome
    @book = Book.new
    @book.name = 'Eloquent Ruby'
  end
  
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params['id'])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    puts "The params are: #{params.inspect}"
    @book = Book.create(name: params["book"]["name"], author: params["book"]["author"], pages: params["book"]["pages"] )
    if @book.save
      redirect_to "books/#{@book.id}"
    else
      redirect_to "books/new"
    end
  end
  
  def edit
    @book = Book.find(params['id'])
    
    if @book.save
      redirect_to("http://www.google.com")
    else
      redirect_to("http://www.yahoo.com")
    end
  end
  
  def update
  end
  
  def destroy
  end
end