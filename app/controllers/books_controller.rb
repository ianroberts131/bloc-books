require_relative '../models/book'
class BooksController < BlocWorks::Controller
  def welcome
    @book = Book.new
    @book.name = 'Eloquent Ruby'
    render :welcome, book: @book
  end
  
  def index
    render :index, books: Book.all
  end
  
  def show
    @book = Book.find(1)
    render :show, book: @book
  end
  
  def new
    @book = Book.new
    render :new
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