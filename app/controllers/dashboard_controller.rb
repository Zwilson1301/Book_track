class DashboardController < ApplicationController
  def index
    @top_books = Book.top_rated_books
  end
end
