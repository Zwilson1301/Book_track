class Search
  def initialize(query, options = {})
    @query = query 
    @genre_id = options[:genre_id]
    @author_id = options[:author_id]
  end

  def results
    books = Book.all
    books = books.where("name LIKE ?", "%#{@query}%") if @query.present?
    books = books.where(genre_id: @genre_id) if @genre_id.present?
    books = books.where(author_id: @author_id) if @author_id.present?
    books
  end
end
