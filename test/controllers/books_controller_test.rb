require 'rack/test'
require 'test/unit'
require_relative '../../config/application'

class BooksControllerTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    BlocBooks::Application.new
  end
  
  def test_welcome
    get '/books/welcome'
    assert last_response.ok?
    assert_match "Eloquent Ruby", last_response.body
  end
  
  def test_index
    get '/books'
    assert last_response.ok?
  end
  
  def test_book_show
    get '/books/show'
    assert last_response.ok?
    assert_match "1984", last_response.body
  end
  
  def test_book_new
    get '/books/new'
    assert last_response.ok?
    assert_match 'Add a book!', last_response.body
  end
  
  
end
