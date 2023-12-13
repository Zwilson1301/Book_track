class Search < ApplicationRecord
  class Search
    def initialize(query, options = {})
      @query = query 
      @genre_id = options[:genre_id]
      @author_id = options[:author_id]
    end

    def results
      books = Books.where("Name like '%#{@query}%'")
      if @genre_id.present?
        books = books.where(genre_id: @genre_id)
      end
      if @author_id.present?
        books = books.where(author_id: @author_id)
      end
      books
    end


  end 
end
