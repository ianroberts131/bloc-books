require './config/application'
app = BlocWorks::Application.new

use Rack::ContentType

app.route do
  map "GET", "", "books#welcome"
  resources :books
end

run(app)