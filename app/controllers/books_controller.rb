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
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end