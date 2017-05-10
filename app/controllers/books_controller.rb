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
    @book = Book.create(name: params["name"], author: params["author"], pages: params["pages"] )
    redirect_to "/books/#{@book.id}"
  end
  
  def edit
    @book = Book.find(params['id'])
  end
  
  def update
    @book = Book.find(params['id'])
    @book.update_attributes(name: params["name"], author: params["author"], pages: params["pages"])
    redirect_to "/books/#{@book.id}"
  end
  
  def destroy
    @book = Book.find(params['id'])
    @book.destroy
    redirect_to "/books"
  end
end