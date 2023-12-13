
default_users = [
  {
    :email => "admin@books.local",
    :password => "Pass1234"
  },
  {
    :email => "Zack@books.local",
    :password => "Pass1234"
  }

]

User.create(default_users)

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
Book.create(
  name: 'Foundation',
  author: Author.find_by(first_name: 'Isaac Assmov'),
  genre: Genre.find_by(name: 'Science Fiction'),
  ratiing: 3.5,
  description: 'A classic science fiction series.'
)

Book.create(
  name: 'Harry Potter and the Philosopher\'s Stone',
  author: Author.find_by(first_name: 'J.K. Rowling'),
  genre: Genre.find_by(name: 'Fantasy'),
  ratiing: 2,
  description: 'The start of an amazing magical adventure!'
)

Book.create(
  name: 'The Gunslinger',
  author: Author.find_by(first_name: 'Steven King'),
  genre: Genre.find_by(name: 'Science Fiction'),
  ratiing: 5,
  description: 'Lord of the Rings but cowboys'
)
Book.create(
  name: 'The Fellowship of The Ring',
  author: Author.find_by(first_name: 'Tolkien'),
  genre: Genre.find_by(name: 'Fantasy'),
  ratiing: 5,
  description: 'The start of an amazing magical adventure!'
)
list = List.create(name: 'Completed books')

puts "Seed data has been created successfully!"

