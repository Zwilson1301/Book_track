class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :author
  has_and_belongs_to_many :lists
  def self.top_rated_books
    order(ratiing: :desc).limit(3)
  end
end
