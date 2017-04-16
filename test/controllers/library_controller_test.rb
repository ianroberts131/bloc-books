require 'rack/test'
require 'test/unit'
require_relative '../../config/application'

class LibraryControllerTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    BlocBooks::Application.new
  end
  
  def test_library_new
    get '/libraries/new'
    assert last_response.ok?
    assert_match 'Create a library!', last_response.body
  end
  
  def test_library_show
    get '/libraries/show'
    assert last_response.ok?
    assert_match 'Ruby Books', last_response.body
  end

end