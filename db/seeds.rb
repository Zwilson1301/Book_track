
default_users = [
  {
    :email => "admin@books.local",
    :password => "Pass1234"
  }
]
  # Seed Genres
  genres_list = [
    'Science Fiction',
    'Fantasy',
    'Mystery',
    'Thriller',
    'Romance',
    'Historical Fiction',
    'Non-fiction',
    'Biography',
    'Self-Help',
    'Young Adult'
  ]

genres_list.each do |genre_name|
  Genre.find_or_create_by(name: genre_name)
end

  #Seed Authors
authors_list = [
    'Isaac Asimov',
    'J.K. Rowling',
    'Agatha Christie',
    'Stephen King',
    'Jane Austen',
    'George Orwell',
    'Harper Lee',
    'Tolkien',
    'Michelle Obama',
    'John Green'
  ]

authors_list.each do |author_name|
  Author.find_or_create_by(first_name: author_name)
end

  puts "Seed data has been created successfully!"

