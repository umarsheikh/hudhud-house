class BooksController < ApplicationController
  include BooksHelper
  layout "book"
  def rails
    initialize_rails_books
  end

  def javascript
    initialize_js_books
  end

  def databases
  end

  def financial_software
    page = params[:page] || 1 # use page, or use the first page
    return render folder_path("financial_software") + "/chapter_#{page}"
  end

  def algorithms
  end

  def miscellaneous
  end

  def ubuntu_setup
  end
  
  private
  def folder_path(key)
    "/books/#{key}"
  end
end
