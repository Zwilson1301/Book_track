class SearchesController < ApplicationController
  def index
    @query = params[:query]
    @author_id = params[:author_id]
    @genre_id = params[:genre_id]

    @search = Search.new(@query, :genre_id => @genre_id, :author_id => @author_id)
    @books = Search.new(params[:query], { genre_id: params[:genre_id], author_id: params[:author_id] }).results
  end
end
