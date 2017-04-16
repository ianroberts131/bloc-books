require_relative '../models/library'

class LibrariesController < BlocWorks::Controller
  def new
    @library = Library.new
    render :new
  end
  
  def show
    @library = Library.find(1)
    render :show, library: @library
  end
end